package com.controller;

import com.service.NewsService;
import com.service.NoticeService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/saveupdate")
public class SaveUpdateServlet extends HttpServlet {
    // 基于ServiceFactory工厂，获取单例的NewsService组件
    private NewsService newsService = ServiceFactory.getNewsService();
    private NoticeService noticeService = ServiceFactory.getNoticeService();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = req.getParameter("type");
        String title = (String) req.getSession().getAttribute("title");
        String newTitle = req.getParameter("newtitle");
        String newSummary = req.getParameter("newsummary");
        String newText = req.getParameter("newtext");
        if(type.equals("news")){
            newsService.updateNew(title, newTitle, newSummary, newText);
        }else if(type.equals("notice")){
            noticeService.updateNotice(title, newTitle, newSummary, newText);
        }
        resp.sendRedirect(req.getContextPath()+"/management");
    }
}
