package com.seecen.vancl.controller;

import com.seecen.vancl.dao.UserDao;
import com.seecen.vancl.dao.VanclDao;
import com.seecen.vancl.pojo.Goods;
import com.seecen.vancl.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateGoods extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(req.getParameter("id"));
        String gname = req.getParameter("gname");
        String gurl = req.getParameter("gurl");
        String gtype = req.getParameter("gtype");
        Double gprice= Double.valueOf(req.getParameter("gprice"));
        if (id != 0 && gname != null && gurl != null &&gtype != null&&gprice!=0) {
            VanclDao vd=new VanclDao();
            Goods g=new Goods();
            g.setGid(id);
            g.setGname(gname);
            g.setGurl(gurl);
            g.setGtype(gtype);
            g.setGprice(gprice);
            vd.updateGoods(g);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req,resp);
    }
}
