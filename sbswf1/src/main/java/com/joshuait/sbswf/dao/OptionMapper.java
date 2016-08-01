package com.joshuait.sbswf.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.joshuait.sbswf.entity.Option;

@Component
public interface OptionMapper {
	public Option getById(long id);

	public List<Option> search(Option option);

	public void insert(Option option);

	public void update(Option option);

	public void delete(long id);

	public void updates(Option option);
	 
	 
//遍历查询常规页面
	public Option getBlogname();
	
	public Option getBlogdescription();

	public Option getSiteurl();

	public Option getHome();

	public Option getAdminEmail();

	public Option getRegister();

	public Option getDefaultRole();

	public Option getTimezone();

	public Option getStartWeek();

	public Option getWPLANG();

	public Option getDateFormatCustom();

	public Option getTimeFormatCustom();

	public Option getDateFormat();

	public Option getTimeFormat();
//修改常规页面设置
	public void  updateBlogname(Option option);

	public void updateBlogdescription(Option option);

	public void updateSiteurl(Option option);

	public void updateHome(Option option);

	public void updateAdminEmail(Option option);

	public void updateRegister(Option option);

	public void updateDefaultRole(Option option);

	public void updateTimezoneString(Option option);

	public void updateStartOfWeek(Option option);

	public void updateDateFormatCustom(Option option);

	public void updateTimeFormatCustom(Option option);

	public void updateDateFormat(Option option);

	public void updateTimeFormat(Option option);
//查询撰写页面信息
	public Option getDefaultCategory();

	public Option getDefaultPostFormat();

	public Option getMailserverUrl();

	public Option getMailserverLogin();

	public Option getMailserverPass();

	public Option getDefaultEmailCategory();

	public Option getPingSites();

	public Option getMailserverPort();

	public void updateDefaultCategory(Option option);

	public void updateDefaultPostFormat(Option option);

	public void updatEmailserverUrl(Option option);

	public void updatEmailserverPort(Option option);

	public void updatEmailserverLogin(Option option);

	public void updatEmailserverPass(Option option);

	public void updatedeFaultEmailCategory(Option option);

	public void updatePingSites(Option option);

//固定链接页面
	public Option getPreCatalog();

	public Option getPreTag();

	public Option getSelection();

	public void updatSelection(Option option);

	public void updatePreCatalog(Option option);

	public void updatePreTag(Option option);
//阅读页面
	public Option getSPostsPerPage();

	public Option getPostsPerRss();

	public void updatePostsPerPage(Option option);

	public void updatePostsPerRss(Option option);
//讨论页面
	public Option getCloseCommentsDaysOld();

	public Option getThreadCommentsDepth();

	public Option getCommentsPerPage();

	public Option getCommentMaxLinks();

	public Option getDefaultCommentsPage();

	public Option getCommentOrder();

	public Option getModerationKeys();

	public Option getBlacklistKeys();

	public void updateCloseCommentsDaysOld(Option option);

	public void updateThreadCommentsDepth(Option option);

	public void updateCommentsPerPage(Option option);

	public void updateDefaultCommentsPage(Option option);

	public void updateCommentOrder(Option option);

	public void updateCommentMaxLinks(Option option);

	public void updateModerationKeys(Option option);

	public void updateBlacklistKeys(Option option);
//媒体页面
	public Option getThumbnailSizew();

	public Option getThumbnailSizeh();

	public Option getMediumSizew();

	public Option getMediumSizeh();

	public Option getLargeSizew();

	public Option getLargeSizeh();

	public void updateThumbnailSizew(Option option);

	public void updateThumbnailSizeh(Option option);

	public void updateMediumSizew(Option option);

	public void updateMediumSizeh(Option option);

	public void updateLargeSizew(Option option);

	public void updateLargeSizeh(Option option);
	
	
}
