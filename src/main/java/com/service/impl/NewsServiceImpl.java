package com.service.impl;

import com.entity.New;
import com.entity.User;
import com.service.NewsService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class NewsServiceImpl implements NewsService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());

    //首页界面 获取新闻标题、摘要、发布时间 获取最新4条
    @Override
    public List<New> listNews() {
        List<New> news = new ArrayList<>();
        String sql = "SELECT * FROM news limit 4";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                New aNew = new New(rs.getString("title"), rs.getString("summary"), rs.getTimestamp("releaseTime"));
                news.add(aNew);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return news;
    }

    //新闻管理界面 获取新闻标题  其实直接用listNews()这个方法也行，获取了title、summary、releaseTime，但在jsp只渲染获取了的title就行
    @Override
    public List<New> listNews2() {
        List<New> news = new ArrayList<>();
        String sql = "select * from news";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                New aNew = new New(rs.getString("title"));
                news.add(aNew);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return news;
    }


    //详情页面 新闻标题、正文、摘要
    @Override
    public New getNew(String title) {
        New anew = null;
        String sql = "SELECT * FROM news WHERE title=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, title);//设置参数，需要两个try。try语句仅支持资源的声明，不支持直接执行方法。
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    anew = new New(rs.getString("title"), rs.getString("text"), rs.getString("summary"), rs.getTimestamp("releaseTime"));
                }
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return anew;
    }

    //发布新闻 新闻标题、摘要、正文
    @Override
    public void addNew(String newTitle, String newSummary, String newText) {
        String sql = "INSERT INTO news(title, summary, text) VALUES(?, ?, ?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, newTitle);
            st.setString(2, newSummary);
            st.setString(3, newText);
            st.executeUpdate();
        }catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

    //删除新闻
    @Override
    public void deleteNew(String title) {
        String sql = "DELETE FROM news WHERE title=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)){
            st.setString(1, title);
            st.executeUpdate();
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

    @Override
    public void updateNew(String title, String newTitle, String newSummary, String newText) {
        String sql = "update news set title = ?, summary = ?, text = ?  where title=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, newTitle);
            st.setString(2, newSummary);
            st.setString(3, newText);
            st.setString(4, title);
            st.executeUpdate();
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

}
