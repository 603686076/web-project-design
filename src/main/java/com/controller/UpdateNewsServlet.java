package com.controller;

import com.service.NewsService;
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
import java.sql.SQLException;

@WebServlet("/update")
public class UpdateNewsServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的NewsService组件
    private NewsService newsService = ServiceFactory.getNewsService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        req.getSession().setAttribute("title", title);
        req.setAttribute("anew", newsService.getNew(title));
        req.getRequestDispatcher("/WEB-INF/jsp/update-news-editor.jsp")
                .forward(req, resp);
    }
}
