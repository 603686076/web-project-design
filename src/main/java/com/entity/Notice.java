package com.entity;

import java.util.Date;

public class Notice {
    private String title;
    private String summary;
    private String text;
    private Date releaseTime;

    //新闻管理界面
    public Notice(String title) {
        this.title = title;
    }

    //首页界面
    public Notice(String title, String summary, Date releaseTime) {
        this.title = title;
        this.summary = summary;
        this.releaseTime = releaseTime;
    }

    //详情界面
    public Notice(String title, String text, String summary) {
        this.title = title;
        this.text = text;
        this.summary = summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setInsertTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public String getTitle() {
        return title;
    }

    public String getSummary() {
        return summary;
    }

    public String getText() {
        return text;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }
}
