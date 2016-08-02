package com.joshuait.sbswf.web.admin;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.joshuait.sbswf.entity.Comment;
import com.joshuait.sbswf.entity.Post;
import com.joshuait.sbswf.service.PostService;

@Controller
@RequestMapping(value = "/admin/comment")
public class CommentController {
	private static final Logger logger = LoggerFactory.getLogger(CommentController.class);

	@Autowired
	private PostService postService;

	// 评论首页
	@RequestMapping
	public String comment(@ModelAttribute("post") Post post, Model model, @ModelAttribute Comment comment) {
		logger.info("start");

		model.addAttribute("postTitle", post.getPostTitle());
		if (StringUtils.isNotBlank(post.getPostTitle())) {
			post.setPostTitle("%" + post.getPostTitle() + "%");
			post.setCommentAuthor("%" + post.getPostTitle() + "%");
			post.setCommentContent("%" + post.getPostTitle() + "%");
		}
		List<Post> postList = postService.getByComment2(post);
		model.addAttribute("postList", postList);

		model.addAttribute("reply", "回复");
		model.addAttribute("adreview", "增加评论");
		logger.info("end");
		return "admin/comment/allcomment";
	}

	// 回复评论页面
	@RequestMapping(value = "reply/{id}")
	public String reply(Model model) {
		logger.info("start");

		logger.info("end");
		return "admin/comment/reply";
	}

	// 增加评论页面
	@RequestMapping(value = "adreview/{id}")
	public String adreview(Model model) {
		logger.info("start");

		logger.info("end");
		return "admin/comment/adreview";
	}

	
}
