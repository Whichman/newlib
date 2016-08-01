package com.joshuait.sbswf.web.admin;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.joshuait.sbswf.entity.Option;

import com.joshuait.sbswf.service.OptionService;
import com.joshuait.sbswf.web.OptionController;



@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(OptionController.class);
	
	@Autowired
	private OptionService optionService;
		
	@RequestMapping(value = "general")
	public String general( @ModelAttribute("option")  Option option,Model model) {
		logger.info("start");
		 	
		//遍历查询常规页面的信息	
		Option blogname = optionService.getBlogname();
		model.addAttribute("blogname", blogname);
		Option blogdescription = optionService.getBlogdescription();
		model.addAttribute("blogdescription", blogdescription);
		Option siteurl = optionService.getSiteurl();
		model.addAttribute("siteurl", siteurl);
		Option home = optionService.getHome();
		model.addAttribute("home", home);
		Option adminEmail = optionService.getAdminEmail();
		model.addAttribute("adminEmail", adminEmail);
		Option usersCanRegister = optionService.getRegister();
		model.addAttribute("usersCanRegister", usersCanRegister);
		Option defaultRole = optionService.getDefaultRole();
		model.addAttribute("defaultRole", defaultRole);
		Option timezoneString = optionService.getTimezone();
		model.addAttribute("timezoneString", timezoneString);
		Option startWeek = optionService.getStartWeek();
		model.addAttribute("startWeek", startWeek);
		Option WPLANG = optionService.getWPLANG();
		model.addAttribute("WPLANG", WPLANG);
		Option dateFormat = optionService.getDateFormat();
		model.addAttribute("dateFormat", dateFormat);
		Option timeFormat = optionService.getTimeFormat();
		model.addAttribute("timeFormat", timeFormat);
		Option dateFormatCustom = optionService.getDateFormatCustom();
		model.addAttribute("dateFormatCustom", dateFormatCustom);
		Option timeFormatCustom = optionService.getTimeFormatCustom();
		model.addAttribute("timeFormatCustom", timeFormatCustom);
		
		logger.info("end");
		return "admin/general";                  
	}

	@RequestMapping(value = "update")
	public String update(@ModelAttribute("option") Option option) {
		logger.info(option.toString());
		//修改页面设置
		optionService.updateBlogname(option);
		optionService.updateBlogdescription(option);
		optionService.updateSiteurl(option);
		optionService.updateHome(option);
		optionService.updateAdminEmail(option);
		optionService.updateRegister(option);
		optionService.updateDefaultRole(option);
		optionService.updateTimezoneString(option);
		optionService.updateStartOfWeek(option);
		optionService.updateWPLANG(option);
		optionService.updateDateFormatCustom(option);
		optionService.updateTimeFormatCustom(option);
		optionService.updateDateFormat(option);
		optionService.updateTimeFormat(option);
		logger.info("end");
		
		return "admin/general";
	}
//查询撰写页面信息
	@RequestMapping(value = "writting")
	public String writting(@ModelAttribute("option") Option option, Model model) {
		logger.info("start");
		Option w1 = optionService.getDefaultCategory();
		model.addAttribute("w1", w1);
		Option w2 = optionService.getDefaultPostFormat();
		model.addAttribute("w2", w2);
		Option w3 = optionService.getMailserverUrl();
		model.addAttribute("w3", w3);
		Option w4 = optionService.getMailserverPort();
		model.addAttribute("w4", w4);
		Option w5 = optionService.getMailserverLogin();
		model.addAttribute("w5", w5);
		Option w6 = optionService.getMailserverPass();
		model.addAttribute("w6", w6);
		Option w7 = optionService.getDefaultEmailCategory();
		model.addAttribute("w7", w7);
		Option w8 = optionService.getPingSites();
		model.addAttribute("w8", w8);
		logger.info("end");
		return "admin/writting";
	}
	
	@RequestMapping(value = "update2")
	public String update2(@ModelAttribute("option") Option option, RedirectAttributes redirectAttributes) {
		logger.info(option.toString());
		//修改页面设置
		optionService.updateDefaultCategory(option);
		optionService.updateDefaultPostFormat(option);
		optionService.updatEmailserverUrl(option);
		optionService.updatEmailserverPort(option);
		optionService.updatEmailserverLogin(option);
		optionService.updatEmailserverPass(option);
		optionService.updatedeFaultEmailCategory(option);
		optionService.updatePingSites(option);
		logger.info("end");
	
		return "admin/writting";
	}
	@RequestMapping(value = "read")
	public String read(@ModelAttribute("option") Option option, Model model) {
		logger.info("start");
		Option postsPerPage= optionService.getSPostsPerPage();
		model.addAttribute("postsPerPage", postsPerPage);
		Option postsPerRss = optionService.getPostsPerRss();
		model.addAttribute("postsPerRss", postsPerRss);
		logger.info("end");
		return "admin/read";
	}
	
	@RequestMapping(value = "update4")
	public String update4(@ModelAttribute("option") Option option, RedirectAttributes redirectAttributes) {
		logger.info(option.toString());
		//修改页面设置
		optionService.updatePostsPerPage(option);
		optionService.updatePostsPerRss(option);
		
		logger.info("end");
	
		return "admin/read";
	}
	@RequestMapping(value = "discuss")
	public String discuss(@ModelAttribute("option") Option option, Model model) {
		logger.info("start");
		Option closeCommentsDaysOld= optionService.getCloseCommentsDaysOld();
		model.addAttribute("closeCommentsDaysOld", closeCommentsDaysOld);
		Option threadCommentsDepth = optionService.getThreadCommentsDepth();
		model.addAttribute("threadCommentsDepth", threadCommentsDepth);
		Option commentsPerPage= optionService.getCommentsPerPage();
		model.addAttribute("commentsPerPage", commentsPerPage);
		Option commentMaxLinks = optionService.getCommentMaxLinks();
		model.addAttribute("commentMaxLinks", commentMaxLinks);
		Option defaultCommentsPage = optionService.getDefaultCommentsPage();
		model.addAttribute("defaultCommentsPage", defaultCommentsPage);
		Option commentOrder = optionService.getCommentOrder();
		model.addAttribute("commentOrder", commentOrder);
		Option moderationKeys = optionService.getModerationKeys();
		model.addAttribute("moderationKeys", moderationKeys);
		Option blacklistKeys = optionService.getBlacklistKeys();
		model.addAttribute("blacklistKeys", blacklistKeys);
		
		logger.info("end");
		return "admin/discuss";
	}
	
	@RequestMapping(value = "detial")
	public String detial(@ModelAttribute("option") Option option, RedirectAttributes redirectAttributes) {
		logger.info(option.toString());
		//修改页面设置		
		optionService.updateCloseCommentsDaysOld(option);
		optionService.updateThreadCommentsDepth(option);
		optionService.updateCommentsPerPage(option);
		optionService.updateDefaultCommentsPage(option);
		optionService.updateCommentOrder(option);
		optionService.updateCommentMaxLinks(option);
		optionService.updateModerationKeys(option);
		optionService.updateBlacklistKeys(option);
		
		logger.info("end");
		return "admin/discuss";
	}
	
	@RequestMapping(value = "media")
	public String media(@ModelAttribute("option") Option option, Model model) {
		logger.info("start");
		Option thumbnailSizew = optionService.getThumbnailSizew();
		model.addAttribute("thumbnailSizew", thumbnailSizew);
		Option thumbnailSizeh = optionService.getThumbnailSizeh();
		model.addAttribute("thumbnailSizeh", thumbnailSizeh);
		Option mediumSizew = optionService.getMediumSizew();
		model.addAttribute("mediumSizew", mediumSizew);
		Option mediumSizeh = optionService.getMediumSizeh();
		model.addAttribute("mediumSizeh", mediumSizeh);
		Option largeSizew = optionService.getLargeSizew();
		model.addAttribute("largeSizew", largeSizew);
		Option largeSizeh = optionService.getLargeSizeh();
		model.addAttribute("largeSizeh", largeSizeh);
		logger.info("end");
		return "admin/media";
	}
	
	@RequestMapping(value = "update6")
	public String update6(@ModelAttribute("option") Option option) {
		logger.info(option.toString());
		//修改页面设置
		optionService.updateThumbnailSizew(option);
		optionService.updateThumbnailSizeh(option);
		optionService.updateMediumSizew(option);
		optionService.updateMediumSizeh(option);
		optionService.updateLargeSizew(option);
		optionService.updateLargeSizeh(option);
	
		logger.info("end");
	
		return "admin/media";
	}
	
	@RequestMapping(value = "fixed_link")
	public String fixed_link(@ModelAttribute("option") Option option, Model model,RedirectAttributes redirectAttributes) {
		logger.info("start");
		Option selection = optionService.getSelection();
		model.addAttribute("selection", selection);
		Option preCatalog = optionService.getPreCatalog();
		model.addAttribute("preCatalog", preCatalog);
		Option preTag = optionService.getPreTag();
		model.addAttribute("preTag", preTag);
		logger.info("end");
		return "admin/fixed_link";
	}
	@RequestMapping(value = "update3")
	public String update3(@ModelAttribute("option") Option option, RedirectAttributes redirectAttributes) {
		logger.info(option.toString());
		//修改页面设置
		optionService.updatSelection(option);
		optionService.updatePreCatalog(option);
		optionService.updatePreTag(option);
		
		logger.info("end");
	
		return "admin/fixed_link";
	}



	

}