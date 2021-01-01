package com.controller;

import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/saveupdatenews")
public class SaveUpdateNewsServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的NewsService组件
    private NewsService newsService = ServiceFactory.getNewsService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = (String) req.getSession().getAttribute("title");
        String newTitle = req.getParameter("newtitle");
        String newSummary = req.getParameter("newsummary");
        String newText = req.getParameter("newtext");
        newsService.updateNew(title, newTitle, newSummary, newText);
        resp.sendRedirect(req.getContextPath()+"/management");
    }
}
