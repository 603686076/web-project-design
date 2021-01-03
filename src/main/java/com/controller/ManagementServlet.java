package com.controller;

import com.entity.New;
import com.entity.User;
import com.service.NewsService;
import com.service.NoticeService;
import com.service.ServiceFactory;
import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/haslogin")
public class ManagementServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的NewsService组件
    private NewsService newsService = ServiceFactory.getNewsService();
    private NoticeService noticeService = ServiceFactory.getNoticeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取新闻标题
        User user = (User) req.getSession().getAttribute("user");
        if (user != null) {
            req.setAttribute("news", newsService.listNews2());
            req.setAttribute("notice", noticeService.listNotice2());
            req.getRequestDispatcher("/WEB-INF/jsp/management.jsp")
                    .forward(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }
}
