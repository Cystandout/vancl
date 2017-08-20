package com.seecen.vancl.controller;

import com.seecen.vancl.dao.UserDao;
import com.seecen.vancl.dao.VanclDao;
import com.seecen.vancl.pojo.Goods;
import com.seecen.vancl.pojo.User;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class SearchGoods extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String gname = req.getParameter("gname");
        VanclDao vc=new VanclDao();
        List<Goods> us = vc.findGoodsByName(gname);
        req.setAttribute("us",us);
        // 通过json传数据
        JSONArray jsonObject = JSONArray.fromObject(us);
        //JSONArray jsonArray = new JSONArray();
        //jsonArray.add(us);
        PrintWriter pw = resp.getWriter();
        pw.print(jsonObject);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
