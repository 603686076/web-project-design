package com.service;

import com.entity.Notice;


import java.util.Date;
import java.util.List;

public interface NoticeService {
    /**
     * 查询4条最新公告 显示在首页
     * @return
     */
    public List<Notice> listNotice();
    /**
     * 查询所有公告 将标题显示在管理页
     * @return
     */
    public List<Notice> listNotice2();
    /**
     * 基于title获取指定公告信息(所点击的title)
     * @param title
     * @return
     */
    public Notice getNotice(String title);
    /**
     * 发布公告
     * @param title
     * @param summary
     * @param text
    //     * @param releaseTime
     */
    public void addNotice(String title, String summary, String text);

    /**
     * 删除公告
     * @param title
     */
    public void deleteNotice(String title);
    /**
     * 修改公告
     * @param title
     */
    public void updateNotice(String title, String newTitle, String newSummary, String newText);

}
