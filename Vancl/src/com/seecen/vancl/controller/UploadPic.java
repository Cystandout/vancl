package com.seecen.vancl.controller;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/7/26.
 */
public class UploadPic extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //servlet  中获取 application
            ServletContext application = getServletContext();
            String savePath = application.getRealPath("upload");
            File file = new File(savePath);
            if (!file.exists() && !file.isDirectory()) {
                System.out.println(savePath + "目录不存在，需要创建");
                file.mkdir();
            }
            //创建一个文件工厂类
            DiskFileItemFactory factory = new DiskFileItemFactory();
            //创建一个文件上传servlet
            ServletFileUpload upload = new ServletFileUpload(factory);
            upload.setHeaderEncoding("utf-8");
            if (!ServletFileUpload.isMultipartContent(request)) {
                //如果上传的表单不是多内容的表单就结束程序
                return;
            }
            //解析request对象，获取上传文件
            List<FileItem> list = null;
            list = upload.parseRequest(request);
            for (FileItem item : list) {
                if (item.isFormField()) {
                    //这里是普通的文本框
                    String name = item.getFieldName();
                    String value = item.getString("UTF-8");
//                    System.out.println(name + "=" + value);
                } else {
                    //否则就是文件
                    //获取文件名称
                    String filename = item.getName();
                    System.out.println(filename);
                    if (filename == null || filename.trim().equals("")) {
                        continue;
                    }
                    String extName = filename.substring(filename.indexOf("."));
//                    System.out.println(extName);
                    //读取文件使用输入流对象
                    InputStream in = item.getInputStream();
                    System.out.println(UUID.randomUUID());
                    String fn = UUID.randomUUID() + extName;
                    //创建文件输出流
                    // home/aaa/bbb
                    FileOutputStream fileOut = new FileOutputStream(savePath );
                    byte[] buffer = new byte[1024];
                    int len = 0;
                    while ((len = in.read(buffer)) > 0) {
                        fileOut.write(buffer, 0, len);
                    }
                    in.close();
                    fileOut.close();
                    item.delete();
                    //File.separator 同等于 \\
                    System.out.println("文件上传成功！");

                }
            }
            response.sendRedirect("demo/message.jsp");
//            response.sendRedirect("background-manager/index.jsp");
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}


