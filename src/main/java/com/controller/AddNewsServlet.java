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

@WebServlet("/addnews")
public class AddNewsServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的NewsService组件
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newTitle = req.getParameter("newtitle");
        String newSummary = req.getParameter("newsummary");
        String newText = req.getParameter("newtext");
        newsService.addNew(newTitle, newSummary, newText);
        resp.sendRedirect(req.getContextPath()+"/management");
    }
}
