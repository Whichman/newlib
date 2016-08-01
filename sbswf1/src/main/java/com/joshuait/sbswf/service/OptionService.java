package com.joshuait.sbswf.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.joshuait.sbswf.dao.OptionMapper;
import com.joshuait.sbswf.entity.Option;

@Component
public class OptionService {
	@Autowired
	private OptionMapper optionMapper;

	public Option getById(Long id) {
		return optionMapper.getById(id);
	}

	public List<Option> search(Option option) {
		return optionMapper.search(option);
	}

	public void insert(Option option) {
		optionMapper.insert(option);
	}

	public void update(Option option) {
		optionMapper.update(option);
	}

	public void delete(Long id) {
		optionMapper.delete(id);
	}



	
	//遍历查询常规页面
	public Option getBlogname() {
		return optionMapper.getBlogname();
	}
	public Option getBlogdescription() {
		return optionMapper.getBlogdescription();
	}
	public Option getSiteurl() {
		return optionMapper.getSiteurl();
	}
	public Option getHome() {
		return optionMapper.getHome();
	}
	public Option getAdminEmail() {
		return optionMapper.getAdminEmail();
	}
	public Option getRegister() {
		return optionMapper.getRegister();
	}
	public Option getDefaultRole() {
		return optionMapper.getDefaultRole();
	}
	public Option getTimezone() {
		return optionMapper.getTimezone();
	}
	public Option getStartWeek() {
		return optionMapper.getStartWeek();
	}
	public Option getWPLANG() {
		return optionMapper.getWPLANG();
	}
	public Option getDateFormatCustom() {
		return optionMapper.getDateFormatCustom();
	}
	public Option getTimeFormatCustom() {
		return optionMapper.getTimeFormatCustom();
	}
	public Option getDateFormat() {
		return optionMapper.getDateFormat();
	}
	public Option getTimeFormat() {
		return optionMapper.getTimeFormat();
	}
//修改常规页面设置
	public void updateBlogname(Option option) {
	 optionMapper.updateBlogname(option);
	}

	public void updateBlogdescription(Option option) {
		optionMapper.updateBlogdescription(option);		
	}

	public void updateSiteurl(Option option) {
		optionMapper.updateSiteurl(option);		
	}

	public void updateHome(Option option) {
		optionMapper.updateHome(option);				
	}
	
	public void updateAdminEmail(Option option) {
		optionMapper.updateAdminEmail(option);				
	}
	
	public void updateRegister(Option option) {
		optionMapper.updateRegister(option);						
	}

	public void updateDefaultRole(Option option) {
		optionMapper.updateDefaultRole(option);								
	}

	public void updateTimezoneString(Option option) {
		optionMapper.updateTimezoneString(option);			
	}

	public void updateStartOfWeek(Option option) {
		optionMapper.updateStartOfWeek(option);			
	}

	public void updateWPLANG(Option option) {
		optionMapper.updateStartOfWeek(option);			
	}

	public void updateDateFormatCustom(Option option) {
		optionMapper.updateDateFormatCustom(option);			
	}

	public void updateTimeFormatCustom(Option option) {
		optionMapper.updateTimeFormatCustom(option);			
	}

	public void updateDateFormat(Option option) {
		optionMapper.updateDateFormat(option);			
	}

	public void updateTimeFormat(Option option) {
		optionMapper.updateTimeFormat(option);		
	}
//查询撰写页面信息
	public Option getDefaultCategory() {
		return optionMapper.getDefaultCategory();
	}

	public Option getDefaultPostFormat() {
		return optionMapper.getDefaultPostFormat();
	}

	public Option getMailserverUrl() {
		return optionMapper.getMailserverUrl();
	}

	public Option getMailserverLogin() {
		return optionMapper.getMailserverLogin();
	}

	public Option getMailserverPass() {
		return optionMapper.getMailserverPass();
	}

	public Option getDefaultEmailCategory() {
		return optionMapper.getDefaultEmailCategory();
	}

	public Option getPingSites() {
		return optionMapper.getPingSites();
	}

	public Option getMailserverPort() {
		return optionMapper.getMailserverPort();
	}
//修改撰写页面
	public void updateDefaultCategory(Option option) {
		optionMapper.updateDefaultCategory(option);	
	}

	public void updateDefaultPostFormat(Option option) {
		optionMapper.updateDefaultPostFormat(option);	
	}

	public void updatEmailserverUrl(Option option) {
		optionMapper.updatEmailserverUrl(option);	
	}

	public void updatEmailserverPort(Option option) {
		optionMapper.updatEmailserverPort(option);	
	}

	public void updatEmailserverLogin(Option option) {
		optionMapper.updatEmailserverLogin(option);	
	}

	public void updatEmailserverPass(Option option) {
		optionMapper.updatEmailserverPass(option);	
	}

	public void updatedeFaultEmailCategory(Option option) {
		optionMapper.updatedeFaultEmailCategory(option);	
	}

	public void updatePingSites(Option option) {
		optionMapper.updatePingSites(option);	
	}
//hji
//	public Map<String, Long> getAllValue() {
//		 List<Map<String, Object>> regionMap = optionMapper
//			        .getAllValue();
//			    Map<String, Long> resultMap = new HashMap<String, Long>();
//			    for (Map<String, Object> map : regionMap) {
//			      String region = null;
//			      Long id = null;
//			      for (Map.Entry<String, Object> entry : map.entrySet()) {
//			        if ("option_value".equals(entry.getKey())) {
//			          region = (String) entry.getValue();
//			        } else if ("option_id".equals(entry.getKey())) {
//			          id = ((java.math.BigDecimal) entry.getValue()).longValue();
//			        }
//			      }
//			      resultMap.put(region, id);
//			    }
//			    return resultMap;
//	}
//固定链接页面
	public Option getPreCatalog() {
		return optionMapper.getPreCatalog();
	}

	public Option getPreTag() {
		return optionMapper.getPreTag();
	}

	public Option getSelection() {
		return optionMapper.getSelection();
	}

	public void updatSelection(Option option) {
		optionMapper.updatSelection(option);	
	}

	public void updatePreCatalog(Option option) {
		optionMapper.updatePreCatalog(option);	
	}

	public void updatePreTag(Option option) {
		optionMapper.updatePreTag(option);	
	}

	public Option getSPostsPerPage() {
		return optionMapper.getSPostsPerPage();
	}

	public Option getPostsPerRss() {
		return optionMapper.getPostsPerRss();
	}

	public void updatePostsPerPage(Option option) {
		optionMapper.updatePostsPerPage(option);	
	}

	public void updatePostsPerRss(Option option) {
		optionMapper.updatePostsPerRss(option);	
	}
//讨论页面
	public Option getCloseCommentsDaysOld() {
		return optionMapper.getCloseCommentsDaysOld();
	}
	public Option getThreadCommentsDepth() {
		return optionMapper.getThreadCommentsDepth();
	}
	public Option getCommentsPerPage() {
		return optionMapper.getCommentsPerPage();
	}
	public Option getCommentMaxLinks() {
		return optionMapper.getCommentMaxLinks();
	}
	public Option getDefaultCommentsPage() {
		return optionMapper.getDefaultCommentsPage();
	}
	public Option getCommentOrder() {
		return optionMapper.getCommentOrder();
	}
	public Option getModerationKeys() {
		return optionMapper.getModerationKeys();
	}
	public Option getBlacklistKeys() {
		return optionMapper.getBlacklistKeys();
	}

	public void updateCloseCommentsDaysOld(Option option) {
		optionMapper.updateCloseCommentsDaysOld(option);
	}

	public void updateThreadCommentsDepth(Option option) {
		optionMapper.updateThreadCommentsDepth(option);
	}

	public void updateCommentsPerPage(Option option) {
		optionMapper.updateCommentsPerPage(option);
	}

	public void updateDefaultCommentsPage(Option option) {
		optionMapper.updateDefaultCommentsPage(option);
	}

	public void updateCommentOrder(Option option) {
		optionMapper.updateCommentOrder(option);
	}

	public void updateCommentMaxLinks(Option option) {
		optionMapper.updateCommentMaxLinks(option);
	}

	public void updateModerationKeys(Option option) {
		optionMapper.updateModerationKeys(option);
	}

	public void updateBlacklistKeys(Option option) {
		optionMapper.updateBlacklistKeys(option);
	}
//媒体页面
	public Option getThumbnailSizew() {
		return optionMapper.getThumbnailSizew();
	}
	public Option getThumbnailSizeh() {
		return optionMapper.getThumbnailSizeh();
	}
	public Option getMediumSizew() {
		return optionMapper.getMediumSizew();
	}
	public Option getMediumSizeh() {
		return optionMapper.getMediumSizeh();
	}
	public Option getLargeSizew() {
		return optionMapper.getLargeSizew();
	}
	public Option getLargeSizeh() {
		return optionMapper.getLargeSizeh();
	}
	
	public void updateThumbnailSizew(Option option) {
		optionMapper.updateThumbnailSizew(option);
	}
	public void updateThumbnailSizeh(Option option) {
		optionMapper.updateThumbnailSizeh(option);
	}
	public void updateMediumSizew(Option option) {
		optionMapper.updateMediumSizew(option);
	}
	public void updateMediumSizeh(Option option) {
		optionMapper.updateMediumSizeh(option);
	}
	public void updateLargeSizew(Option option) {
		optionMapper.updateLargeSizew(option);
	}
	public void updateLargeSizeh(Option option) {
		optionMapper.updateLargeSizeh(option);
	}


	



	

}
