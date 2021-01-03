package com.service;

import com.service.impl.NewsServiceImpl;
import com.service.impl.NoticeServiceImpl;

public class ServiceFactory {
    private static final NewsService newsService = create();
    private static final NoticeService noticeService = create2();

    private static NewsService create() {
        return new NewsServiceImpl();
    }
    public static NewsService getNewsService() {
        return newsService;
    }

    private static NoticeService create2() {
        return new NoticeServiceImpl();
    }
    public static NoticeService getNoticeService() {
        return noticeService;
    }
}
