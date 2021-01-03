package com.controller;

import com.entity.New;
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

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的NewsService组件
    private NewsService newsService = ServiceFactory.getNewsService();
    private NoticeService noticeService = ServiceFactory.getNoticeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        // 获取新闻标题、摘要、发布时间
        req.setAttribute("news", newsService.listNews());
        req.setAttribute("notice", noticeService.listNotice());
        req.getRequestDispatcher("/WEB-INF/jsp/index.jsp")
                .forward(req, resp);
    }


}
