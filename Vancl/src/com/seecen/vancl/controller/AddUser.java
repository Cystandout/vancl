package com.seecen.vancl.controller;
import com.seecen.vancl.dao.UserDao;
import com.seecen.vancl.pojo.User;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AddUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String phone=request.getParameter("phone");
        String psw=request.getParameter("psw");
        String name=request.getParameter("name");//后台添加用户名
        if(phone!=null&&psw!=null){
            UserDao ud=new UserDao();
            User u=new User();
            u.setUname(name);
            u.setUpsw(psw);
            u.setUphone(Long.valueOf(phone));
            u.setUpsw(psw);
            ud.addUser(u);
//获取id
            User x=new User();
            x=ud.findUser(name,psw);
            int data=x.getUid();
            PrintWriter pw=resp.getWriter();
            pw.print(data);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}
