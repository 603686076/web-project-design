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
@WebServlet("/getnotice")
public class GetNoticeServlet extends HttpServlet {

    private NoticeService noticeService = ServiceFactory.getNoticeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取指定标题新闻的详细信息
        String title = req.getParameter("title");
        req.setAttribute("notice", noticeService.getNotice(title));
        req.getRequestDispatcher("/WEB-INF/jsp/noticeDetails.jsp")
                .forward(req, resp);
    }
}
