package com.seecen.vancl.controller;
import com.seecen.vancl.dao.VanclDao;
import com.seecen.vancl.pojo.Goods;
import com.seecen.vancl.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AddGoods extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       req.setCharacterEncoding("utf-8");
        String gname=req.getParameter("gname");
        String gurl=req.getParameter("gurl");
        String gtype=req.getParameter("gtype");
        int gprice= Integer.parseInt(req.getParameter("gprice"));
        if(gname!=null&&gurl!=null&&gtype!=null&&gprice!=0){
            VanclDao vc=new VanclDao();
            Goods g=new Goods();
            g.setGname(gname);
            g.setGurl(gurl);
            g.setGtype(gtype);
            g.setGprice(gprice);
            vc.addGoods(g);

            Goods c= new Goods();
            c=vc.findGoods(gname);
            int data=c.getGid();
            PrintWriter pw=resp.getWriter();
            pw.print(data);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req,resp);
    }
}
