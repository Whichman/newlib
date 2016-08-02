package com.joshuait.sbswf.web.admin;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.joshuait.sbswf.entity.User;

import com.joshuait.sbswf.service.UserService;

@Controller
@RequestMapping(value = "/admin/user")
public class UserAdminController {
	private static final Logger logger = LoggerFactory.getLogger(UserAdminController.class);

	@Autowired
	private UserService userService;

	@RequestMapping
	public String list(@ModelAttribute("user") User user, Model model) {
		logger.info("start");
		model.addAttribute("userLogin", user.getUserLogin());
		if (StringUtils.isNotBlank(user.getUserLogin())) {
			user.setDisplayName("%" + user.getUserLogin() + "%");
			user.setUserEmail("%" + user.getUserLogin() + "%");
			user.setUserLogin("%" + user.getUserLogin() + "%");
		}
		List<User> userList = userService.getByUser(user);
		model.addAttribute("userList", userList);

		model.addAttribute("edit", "编辑");
		model.addAttribute("delet", "删除");

		return "admin/user/alluser";
	}

	// 个人资料页面
	@RequestMapping(value = "/personal")
	public String personal(Model model) {
		logger.info("start");

		logger.info("end");
		return "admin/user/personal";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		logger.info(id.toString());
		userService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除成功");
		// 转发
		return "redirect:/admin/user/";
	}

	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable Long id, Model model) {
		User user = userService.getById(id);
		model.addAttribute("user", user);
		return "admin/user/personal";
	}

	// 更新 --> 保存数据
	@RequestMapping(value = "updateSave", method = RequestMethod.POST)
	public String updateSave(@ModelAttribute("user") User user, RedirectAttributes redirectAttributes) {
		logger.info(user.toString());
		userService.update(user);
		redirectAttributes.addFlashAttribute("message", "编辑成功");
		return "redirect:/admin/";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(Model model) {
		return "admin/user/useradd";
	}

	// 新增 --> 保存数据
	@RequestMapping(value = "addSave")
	public String addSave(@ModelAttribute("user") User user, RedirectAttributes redirectAttributes) {
		logger.info(user.toString());
		user.setUserRegistered(new Date());
		userService.insert(user);

		// model.addAttribute("Model model", "保存成功");
		// 重定向
		return "redirect:/admin/user/";
	}
}
