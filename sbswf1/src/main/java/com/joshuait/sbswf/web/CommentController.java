package com.joshuait.sbswf.web;

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
import com.joshuait.sbswf.entity.Comment;
import com.joshuait.sbswf.service.CommentService;

@Controller
@RequestMapping(value = "/comment")
public class CommentController {
	private static final Logger logger = LoggerFactory.getLogger(CommentController.class);

	@Autowired
	private CommentService commentService;

	@RequestMapping
	public String list(@ModelAttribute("comment") Comment comment, Model model) {
		logger.info("start");

		model.addAttribute("commentAuthor", comment.getCommentAuthor());
		if (StringUtils.isNotBlank(comment.getCommentAuthor())) {
			comment.setCommentAuthor("%" + comment.getCommentAuthor() + "%");
			comment.setCommentAuthorEmail("%" + comment.getCommentAuthor() + "%");
		}
		List<Comment> commentList = commentService.search(comment);
		model.addAttribute("commentList", commentList);
		model.addAttribute("successMsg", "查询成功");
		logger.info("end");
		return "comment/comment-list";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
		logger.info(id.toString());
		commentService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除成功");
		// 转发
		return "redirect:/comment/";
	}

	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable Long id, Model model) {
		Comment comment = commentService.getById(id);
		model.addAttribute("comment", comment);
		return "comment/comment-edit";
	}

	// 更新 --> 保存数据
	@RequestMapping(value = "updateSave", method = RequestMethod.POST)

	public String updateSave(@ModelAttribute("comment") Comment comment, RedirectAttributes redirectAttributes) {
		logger.info(comment.toString());
		commentService.update(comment);
		redirectAttributes.addFlashAttribute("message", "编辑成功");
		return "redirect:/comment/";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String add(Model model) {
		return "comment/comment-add";
	}

	// 新增 --> 保存数据
	@RequestMapping(value = "addSave", method = RequestMethod.POST)
	public String addSave(@ModelAttribute("comment") Comment comment, RedirectAttributes redirectAttributes) {
		logger.info(comment.toString());
		comment.setCommentDate(new Date());
		commentService.insert(comment);
		redirectAttributes.addFlashAttribute("message", "保存成功");
		// model.addAttribute("Model model", "保存成功");
		// 重定向
		return "redirect:/comment/";
	}

}