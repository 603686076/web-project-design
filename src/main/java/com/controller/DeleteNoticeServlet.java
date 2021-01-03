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
@WebServlet("/deletenotice")
public class DeleteNoticeServlet extends HttpServlet {
    private NoticeService noticeService = ServiceFactory.getNoticeService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 删除指定标题的公告
        String title = req.getParameter("title");
        noticeService.deleteNotice(title);
        resp.sendRedirect(req.getContextPath()+"/management");
    }
}
