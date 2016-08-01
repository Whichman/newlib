package com.joshuait.sbswf.entity;

import java.io.Serializable;
import java.util.Date;
import java.sql.Time;


public class Option implements Serializable {
	private Long optionId;
	private String optionName;
	private String optionValue;
	private String autoLoad;
//常规页面
	private String blogname;
	private String blogdescription;
	private String siteurl;
	private String home;
	private String admin_email;
	private Integer users_can_register;
	private String default_role;
	private String timezone_string;
	private String start_of_week;
	private String WPLANG;
	private String   date_format_custom;
	private String   time_format_custom;
	private String   date_format;
	private String   time_format;
	//撰写页面
	private String default_category;
	private String default_post_format;
	private String mailserver_url;
	private String mailserver_port;
	private String mailserver_login;
	private String mailserver_pass;
	private String default_email_category;
	private String ping_sites;
	//阅读页面
	private String posts_per_page;
	private String posts_per_rss;
	//讨论页面
	private String close_comments_days_old;
	private String thread_comments_depth;
	private String comments_per_page;
	private String default_comments_page;
	private String comment_order;
	private String comment_max_links;
	private String moderation_keys;
	private String blacklist_keys;
	//媒体页面
	private String thumbnail_size_w;
	private String thumbnail_size_h;
	private String medium_size_w;
	private String medium_size_h;
	private String large_size_w;
	private String large_size_h;
	//固定链接页面
	private String selection;
	private String pre_catalog;
	private String pre_tag;
	public Long getOptionId() {
		return optionId;
	}
	public void setOptionId(Long optionId) {
		this.optionId = optionId;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public String getOptionValue() {
		return optionValue;
	}
	public void setOptionValue(String optionValue) {
		this.optionValue = optionValue;
	}
	public String getAutoLoad() {
		return autoLoad;
	}
	public void setAutoLoad(String autoLoad) {
		this.autoLoad = autoLoad;
	}
	public String getBlogname() {
		return blogname;
	}
	public void setBlogname(String blogname) {
		this.blogname = blogname;
	}
	public String getBlogdescription() {
		return blogdescription;
	}
	public void setBlogdescription(String blogdescription) {
		this.blogdescription = blogdescription;
	}
	public String getSiteurl() {
		return siteurl;
	}
	public void setSiteurl(String siteurl) {
		this.siteurl = siteurl;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public Integer getUsers_can_register() {
		return users_can_register;
	}
	public void setUsers_can_register(Integer users_can_register) {
		this.users_can_register = users_can_register;
	}
	public String getDefault_role() {
		return default_role;
	}
	public void setDefault_role(String default_role) {
		this.default_role = default_role;
	}
	public String getTimezone_string() {
		return timezone_string;
	}
	public void setTimezone_string(String timezone_string) {
		this.timezone_string = timezone_string;
	}
	public String getStart_of_week() {
		return start_of_week;
	}
	public void setStart_of_week(String start_of_week) {
		this.start_of_week = start_of_week;
	}
	public String getWPLANG() {
		return WPLANG;
	}
	public void setWPLANG(String wPLANG) {
		WPLANG = wPLANG;
	}
	public String getDate_format_custom() {
		return date_format_custom;
	}
	public void setDate_format_custom(String date_format_custom) {
		this.date_format_custom = date_format_custom;
	}
	public String getTime_format_custom() {
		return time_format_custom;
	}
	public void setTime_format_custom(String time_format_custom) {
		this.time_format_custom = time_format_custom;
	}
	public String getDate_format() {
		return date_format;
	}
	public void setDate_format(String date_format) {
		this.date_format = date_format;
	}
	public String getTime_format() {
		return time_format;
	}
	public void setTime_format(String time_format) {
		this.time_format = time_format;
	}
	public String getDefault_category() {
		return default_category;
	}
	public void setDefault_category(String default_category) {
		this.default_category = default_category;
	}
	public String getDefault_post_format() {
		return default_post_format;
	}
	public void setDefault_post_format(String default_post_format) {
		this.default_post_format = default_post_format;
	}
	public String getMailserver_url() {
		return mailserver_url;
	}
	public void setMailserver_url(String mailserver_url) {
		this.mailserver_url = mailserver_url;
	}
	public String getMailserver_port() {
		return mailserver_port;
	}
	public void setMailserver_port(String mailserver_port) {
		this.mailserver_port = mailserver_port;
	}
	public String getMailserver_login() {
		return mailserver_login;
	}
	public void setMailserver_login(String mailserver_login) {
		this.mailserver_login = mailserver_login;
	}
	public String getMailserver_pass() {
		return mailserver_pass;
	}
	public void setMailserver_pass(String mailserver_pass) {
		this.mailserver_pass = mailserver_pass;
	}
	public String getDefault_email_category() {
		return default_email_category;
	}
	public void setDefault_email_category(String default_email_category) {
		this.default_email_category = default_email_category;
	}
	public String getPing_sites() {
		return ping_sites;
	}
	public void setPing_sites(String ping_sites) {
		this.ping_sites = ping_sites;
	}
	public String getPosts_per_page() {
		return posts_per_page;
	}
	public void setPosts_per_page(String posts_per_page) {
		this.posts_per_page = posts_per_page;
	}
	public String getPosts_per_rss() {
		return posts_per_rss;
	}
	public void setPosts_per_rss(String posts_per_rss) {
		this.posts_per_rss = posts_per_rss;
	}
	public String getClose_comments_days_old() {
		return close_comments_days_old;
	}
	public void setClose_comments_days_old(String close_comments_days_old) {
		this.close_comments_days_old = close_comments_days_old;
	}
	public String getThread_comments_depth() {
		return thread_comments_depth;
	}
	public void setThread_comments_depth(String thread_comments_depth) {
		this.thread_comments_depth = thread_comments_depth;
	}
	public String getComments_per_page() {
		return comments_per_page;
	}
	public void setComments_per_page(String comments_per_page) {
		this.comments_per_page = comments_per_page;
	}
	public String getDefault_comments_page() {
		return default_comments_page;
	}
	public void setDefault_comments_page(String default_comments_page) {
		this.default_comments_page = default_comments_page;
	}
	public String getComment_order() {
		return comment_order;
	}
	public void setComment_order(String comment_order) {
		this.comment_order = comment_order;
	}
	public String getComment_max_links() {
		return comment_max_links;
	}
	public void setComment_max_links(String comment_max_links) {
		this.comment_max_links = comment_max_links;
	}
	public String getModeration_keys() {
		return moderation_keys;
	}
	public void setModeration_keys(String moderation_keys) {
		this.moderation_keys = moderation_keys;
	}
	public String getBlacklist_keys() {
		return blacklist_keys;
	}
	public void setBlacklist_keys(String blacklist_keys) {
		this.blacklist_keys = blacklist_keys;
	}
	public String getThumbnail_size_w() {
		return thumbnail_size_w;
	}
	public void setThumbnail_size_w(String thumbnail_size_w) {
		this.thumbnail_size_w = thumbnail_size_w;
	}
	public String getThumbnail_size_h() {
		return thumbnail_size_h;
	}
	public void setThumbnail_size_h(String thumbnail_size_h) {
		this.thumbnail_size_h = thumbnail_size_h;
	}
	public String getMedium_size_w() {
		return medium_size_w;
	}
	public void setMedium_size_w(String medium_size_w) {
		this.medium_size_w = medium_size_w;
	}
	public String getMedium_size_h() {
		return medium_size_h;
	}
	public void setMedium_size_h(String medium_size_h) {
		this.medium_size_h = medium_size_h;
	}
	public String getLarge_size_w() {
		return large_size_w;
	}
	public void setLarge_size_w(String large_size_w) {
		this.large_size_w = large_size_w;
	}
	public String getLarge_size_h() {
		return large_size_h;
	}
	public void setLarge_size_h(String large_size_h) {
		this.large_size_h = large_size_h;
	}
	public String getSelection() {
		return selection;
	}
	public void setSelection(String selection) {
		this.selection = selection;
	}
	public String getPre_catalog() {
		return pre_catalog;
	}
	public void setPre_catalog(String pre_catalog) {
		this.pre_catalog = pre_catalog;
	}
	public String getPre_tag() {
		return pre_tag;
	}
	public void setPre_tag(String pre_tag) {
		this.pre_tag = pre_tag;
	}
	@Override
	public String toString() {
		return "Option [optionId=" + optionId + ", optionName=" + optionName + ", optionValue=" + optionValue
				+ ", autoLoad=" + autoLoad + ", blogname=" + blogname + ", blogdescription=" + blogdescription
				+ ", siteurl=" + siteurl + ", home=" + home + ", admin_email=" + admin_email + ", users_can_register="
				+ users_can_register + ", default_role=" + default_role + ", timezone_string=" + timezone_string
				+ ", start_of_week=" + start_of_week + ", WPLANG=" + WPLANG + ", date_format_custom="
				+ date_format_custom + ", time_format_custom=" + time_format_custom + ", date_format=" + date_format
				+ ", time_format=" + time_format + ", default_category=" + default_category + ", default_post_format="
				+ default_post_format + ", mailserver_url=" + mailserver_url + ", mailserver_port=" + mailserver_port
				+ ", mailserver_login=" + mailserver_login + ", mailserver_pass=" + mailserver_pass
				+ ", default_email_category=" + default_email_category + ", ping_sites=" + ping_sites
				+ ", posts_per_page=" + posts_per_page + ", posts_per_rss=" + posts_per_rss
				+ ", close_comments_days_old=" + close_comments_days_old + ", thread_comments_depth="
				+ thread_comments_depth + ", comments_per_page=" + comments_per_page + ", default_comments_page="
				+ default_comments_page + ", comment_order=" + comment_order + ", comment_max_links="
				+ comment_max_links + ", moderation_keys=" + moderation_keys + ", blacklist_keys=" + blacklist_keys
				+ ", thumbnail_size_w=" + thumbnail_size_w + ", thumbnail_size_h=" + thumbnail_size_h
				+ ", medium_size_w=" + medium_size_w + ", medium_size_h=" + medium_size_h + ", large_size_w="
				+ large_size_w + ", large_size_h=" + large_size_h + ", selection=" + selection + ", pre_catalog="
				+ pre_catalog + ", pre_tag=" + pre_tag + "]";
	}
	
	
}
