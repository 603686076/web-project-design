package com.controller;

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
import java.sql.SQLException;

@WebServlet("/updatenotice")
public class UpdateNoticeServlet extends HttpServlet {

    private NoticeService noticeService = ServiceFactory.getNoticeService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        req.getSession().setAttribute("title", title);
        req.setAttribute("notice", noticeService.getNotice(title));
        req.getRequestDispatcher("/WEB-INF/jsp/update-notice-editor.jsp")
                .forward(req, resp);
    }

}
