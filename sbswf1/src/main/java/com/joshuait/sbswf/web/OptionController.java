package com.joshuait.sbswf.web;

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
import com.joshuait.sbswf.entity.Option;
import com.joshuait.sbswf.service.OptionService;

@Controller
@RequestMapping(value = "/option")
public class OptionController {
	private static final Logger logger = LoggerFactory.getLogger(OptionController.class);

	@Autowired
	private OptionService optionService;

	@RequestMapping
	public String list(@ModelAttribute("option") Option option, Model model) {
		logger.info("start");

		model.addAttribute("optionName", option.getOptionName());
		if (StringUtils.isNotBlank(option.getOptionName())) {
			option.setOptionName("%" + option.getOptionName() + "%");
			option.setOptionValue("%" + option.getOptionName() + "%");
		}
		List<Option> optionList = optionService.search(option);
		model.addAttribute("optionList", optionList);
		model.addAttribute("successMsg", "查询成功");
		logger.info("end");
		return "option/option-list";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable Long id,RedirectAttributes redirectAttributes) {
		logger.info(id.toString());
		optionService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除成功");
		// 转发
		return "redirect:/option/";
	}

	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable Long id, Model model) {
		Option option = optionService.getById(id);
		model.addAttribute("option", option);
		return "option/option-edit";
	}

	// 更新 --> 保存数据
	@RequestMapping(value = "updateSave", method = RequestMethod.POST)
	public String updateSave(@ModelAttribute("option") Option option, RedirectAttributes redirectAttributes) {
		logger.info(option.toString());
		optionService.update(option);
		redirectAttributes.addFlashAttribute("message", "编辑成功");
		return "redirect:/option/";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(Model model) {
		return "option/option-add";
	}

	// 新增 --> 保存数据
	@RequestMapping(value = "addSave", method = RequestMethod.POST)
	public String addSave(@ModelAttribute("option") Option option, RedirectAttributes redirectAttributes) {
		logger.info(option.toString());
		optionService.insert(option);
		redirectAttributes.addFlashAttribute("message", "保存成功");
		// model.addAttribute("Model model", "保存成功");
		// 重定向
		return "redirect:/option/";
	}

}