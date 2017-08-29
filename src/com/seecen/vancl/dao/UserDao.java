package com.seecen.vancl.dao;

import com.seecen.vancl.pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lusiwen on 2017/7/27.
 */
public class UserDao extends BaseDao {
    /**
     * 添加用户
     */
    public void addUser(User u){
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn=getConn();
            String sql="select max(u_id) from t_user";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            if(rs.next()){
                int userid=rs.getInt(1)+1;
                sql="insert into t_user values(?,?,?,?,?)";
                ps=conn.prepareStatement(sql);
                ps.setInt(1,userid);
                ps.setString(2,u.getUname());
                ps.setString(3,u.getUpsw());
                ps.setLong(4,u.getUphone());
                ps.setInt(5,u.getRole_id());
                int row=ps.executeUpdate();
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
    }

    /**
     * 修改用户
     */
    public void updateUser(User u) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int i=0;
        try {
            conn = getConn();
            String sql = "update t_user set uname=?,upwd=?,uphone=? where u_id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, u.getUname());
            ps.setString(2, u.getUpsw());
            ps.setLong(3, u.getUphone());
            ps.setInt(4,u.getUid());
            i = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, ps, rs);
        }
    }
    /*
    删除用户
     */
    public  void deleteUser (User u) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int i=0;
        try {
            conn = getConn();
            String sql = "delete from t_user where u_id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, String.valueOf(u.getUid()));
            i=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, ps, rs);
        }
    }

    /**
     * 显示用户
     */
    public List<User> showUser(){
        List<User> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = getConn();
            String sql = "select * from t_user order by u_id ";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User c = new User();
                c.setUname(rs.getString("uname"));
                c.setUid(rs.getInt("u_id"));
                c.setUphone(rs.getLong("uphone"));
                c.setUpsw(rs.getString("upwd"));
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
        return list;
    }

    /**
     * 通过用户名查找用户
     * @param userName
     * @return
     */
    public List<User> findUserByName(String userName){
        List<User> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = getConn();
            String sql = "select * from  t_user  where uname like '%"+userName+"%'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                User u = new User();
                u.setUid(rs.getInt("u_id"));
                u.setUname(rs.getString("uname"));
                u.setUpsw(rs.getString("upwd"));
                u.setUphone(rs.getLong("uphone"));
                u.setRole_id(rs.getInt("role_id"));
                list.add(u);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, ps, rs);
        }
        return list;
    }

    /**
     * 分页查询用户信息
     * @param start
     * @param end
     * @return
     */
    public List<User> findUserByPage(int start,int end){
        List<User> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = getConn();
            String sql = "select u_id,uname,upwd,uphone,role_id from " +
                    "(select t.*,rownum rn from t_user t where rownum <=?) a " +
                    "where rn >= ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, end);
            ps.setInt(2, start);

            rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setUid(rs.getInt("u_id"));
                u.setUname(rs.getString("uname"));
                u.setUpsw(rs.getString("upwd"));
                u.setUphone(rs.getLong("uphone"));
                u.setRole_id(rs.getInt("role_id"));
                list.add(u);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, ps, rs);
        }
        return list;
    }

    /**
     * 查询用户总数
     * @return
     */
    public int userCount(){
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int count = 0;
        try{
            conn = getConn();
            String sql = "select count(*) count from t_user";
            ps=conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt("count");
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
        return count;
    }
    /**
     * 根据用户账号，密码查询用户，登录用
     * @param
     */
    public User findUser(String userName, String userPsw){
        User u=null;
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn=getConn();
            String sql="select * from t_user where uname=? and upwd=?";
            ps=conn.prepareStatement(sql);
            ps.setString(1,userName);
            ps.setString(2,userPsw);
            rs=ps.executeQuery();
            if(rs.next()){
                u=new User();
                u.setUname(rs.getString("uname"));
                u.setUpsw(rs.getString("upwd"));
                u.setRole_id(rs.getInt("role_id"));
                u.setUid(rs.getInt("u_id"));
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
        return u;
    }
    /**
     * 根据用户账号查询用户是否存在 ，注册用
     * @param
     */
    public boolean findUser(String userName){

        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn=getConn();
            String sql="select * from t_user where uname=? ";
            ps=conn.prepareStatement(sql);
            ps.setString(1,userName);
            rs=ps.executeQuery();
            if(rs.next()){
                return true;
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
        return false;
    }


}
