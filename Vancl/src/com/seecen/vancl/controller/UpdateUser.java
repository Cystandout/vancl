package com.seecen.vancl.controller;

import com.seecen.vancl.dao.UserDao;
import com.seecen.vancl.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UpdateUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String psw = req.getParameter("psw");
        if (id != 0 && name != null && phone != null && psw != null) {
            UserDao ud = new UserDao();
            User u = new User();
            u.setUid(id);
            u.setUname(name);
            u.setUphone(Long.valueOf(phone));
            u.setUpsw(psw);
            ud.updateUser(u);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
