package com.seecen.vancl.dao;
import com.seecen.vancl.pojo.Goods;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class VanclDao extends BaseDao {
    /**
     * 根据图片id.显示商品图片
     */
    public List<Goods> showGoods(){
        List<Goods> list=new ArrayList<>();
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn=getConn();
            String sql="select gid,gurl from t_goods ORDER by gurl";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Goods g=new Goods();
                g.setGurl(rs.getString("gurl"));
                g.setGid(rs.getInt("gid"));
                list.add(g);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
        return list;
    }

    /**
     * 查询goods信息
     * @param gid
     * @return
     */
    public Goods findDetaileById(int gid){
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        Goods g=new Goods();
        try {
            conn=getConn();
            String sql="select * from t_goods  where gid=? ORDER by gid";
            ps=conn.prepareStatement(sql);
            ps.setInt(1,gid);
            rs=ps.executeQuery();
            if(rs.next()){
                g.setGname(rs.getString("gname"));
                g.setGprice(rs.getInt("gprice"));
                g.setGdetail(rs.getString("gdetail"));
                g.setGtype(rs.getString("gtype"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
        return g;
    }

    /**
     * 后台商品信息
     * @return
     */
    public List<Goods> showGoodsinfo(){
        List<Goods> list=new ArrayList<>();
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn=getConn();
            String sql="select * from t_goods ORDER by gid";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Goods g=new Goods();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                g.setGurl(rs.getString("gurl"));
                g.setGtype(rs.getString("gtype"));
                g.setGprice(rs.getInt("gprice"));
                list.add(g);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
        return list;
    }
    /**
     * 后台添加商品
     */
    public void addGoods(Goods g){
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            conn=getConn();
            String sql="select max(gid) from t_goods";
            ps=conn.prepareStatement(sql);
            rs=ps.executeQuery();
            if(rs.next()){
                int gid=rs.getInt(1)+1;
                sql="insert into t_goods values(?,?,?,?,?,?)";
                ps=conn.prepareStatement(sql);
                ps.setInt(1,gid);
                ps.setString(2,g.getGname());
                ps.setString(3,g.getGurl());
                ps.setString(4,g.getGtype());
                ps.setInt(5, (int)g.getGprice());
                ps.setString(6,"");
                int row=ps.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeAll(conn,ps,rs);
        }
    }


    /**
     * 修改商品
     */
    public void updateGoods(Goods g) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int i=0;
        try {
            conn = getConn();
            String sql = "update t_goods set gname=?,gurl=?,gtype=?,gprice=? where gid=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, g.getGname());
            ps.setString(2, g.getGurl());
            ps.setString(3, g.getGtype());
            ps.setDouble(4,g.getGprice());
            ps.setInt(5,g.getGid());
            i = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, ps, rs);
        }
    }
    /*
    删除商品
     */
    public  void deleteGoods (Goods g) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int i=0;
        try {
            conn = getConn();
            String sql = "delete from t_goods where gid=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, String.valueOf(g.getGid()));
            i=ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, ps, rs);
        }
    }
    //    后台获取商品id用
    public Goods findGoods(String gname) {
        Goods g = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = getConn();
            String sql = "select * from t_goods where gname=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, gname);
            rs = ps.executeQuery();
            if (rs.next()) {
                g = new Goods();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                g.setGurl(rs.getString("gurl"));
                g.setGtype(rs.getString("gtype"));
                g.setGprice(rs.getDouble("gprice"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, ps, rs);
        }
        return g;
    }

    //查询商品
    public List<Goods> findGoodsByName(String gname){
        List<Goods> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = getConn();
            String sql = "select * from  t_goods  where gname like '%"+gname+"%'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Goods g=new Goods();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                g.setGurl(rs.getString("gurl"));
                g.setGtype(rs.getString("gtype"));
                g.setGprice(rs.getDouble("gprice"));
                list.add(g);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeAll(conn, ps, rs);
        }
        return list;
    }
}

