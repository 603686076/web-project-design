package com.service.impl;

import com.entity.New;
import com.entity.Notice;
import com.service.NewsService;
import com.service.NoticeService;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class NoticeServiceImpl implements NoticeService {
    private static Logger logger = Logger.getLogger(NewsServiceImpl.class.getName());

    @Override
    public List<Notice> listNotice() {
        List<Notice> notices = new ArrayList<>();
        String sql = "SELECT * FROM notice limit 4";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Notice notice = new Notice(rs.getString("title"), rs.getString("summary"), rs.getTimestamp("releaseTime"));
                notices.add(notice);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return notices;
    }

    @Override
    public List<Notice> listNotice2() {
        List<Notice> notices = new ArrayList<>();
        String sql = "select * from notice";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql);
            ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Notice notice = new Notice(rs.getString("title"));
                notices.add(notice);
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return notices;
    }

    @Override
    public Notice getNotice(String title) {
        Notice notice = null;
        String sql = "SELECT * FROM notice WHERE title=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, title);//设置参数，需要两个try。try语句仅支持资源的声明，不支持直接执行方法。
            try(ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    notice = new Notice(rs.getString("title"), rs.getString("text"), rs.getString("summary"));
                }
            }
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
        return notice;
    }

    @Override
    public void addNotice(String newTitle, String newSummary, String newText) {
        String sql = "INSERT INTO notice(title, summary, text) VALUES(?, ?, ?)";
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

    @Override
    public void deleteNotice(String title) {
        String sql = "DELETE FROM notice WHERE title=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)){
            st.setString(1, title);
            st.executeUpdate();
        } catch (SQLException e) {
            logger.warning(e.getMessage());
        }
    }

    @Override
    public void updateNotice(String title, String newTitle, String newSummary, String newText) {
        String sql = "update notice set title = ?, summary = ?, text = ?  where title=?";
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
