package com.service;

import com.entity.New;
import com.entity.User;

import java.util.Date;
import java.util.List;

public interface NewsService {
    /**
     * 查询4条最新新闻 显示在首页
     * @return
     */
    public List<New> listNews();
    /**
     * 查询所有新闻 将标题显示在管理页
     * @return
     */
    public List<New> listNews2();
    /**
     * 基于title获取指定新闻信息(所点击的title)
     * @param title
     * @return
     */
    public New getNew(String title);
    /**
     * 发布新闻
     * @param title
     * @param summary
     * @param text
//     * @param releaseTime
     */
    public void addNew(String title, String summary, String text);

    /**
     * 删除新闻
     * @param title
     */
    public void deleteNew(String title);
    /**
     * 修改新闻
     * @param title
     */
    public void updateNew(String title, String newTitle, String newSummary, String newText);
}
