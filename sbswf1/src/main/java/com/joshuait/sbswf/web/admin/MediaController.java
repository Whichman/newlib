package com.joshuait.sbswf.web.admin;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.joshuait.sbswf.entity.Comment;
import com.joshuait.sbswf.entity.Post;
import com.joshuait.sbswf.entity.Term;
import com.joshuait.sbswf.service.CommentService;
import com.joshuait.sbswf.service.OptionService;
import com.joshuait.sbswf.service.PostService;
import com.joshuait.sbswf.service.TermService;
import com.joshuait.sbswf.service.UserService;
import com.joshuait.sbswf.vo.Page;
import com.joshuait.sbswf.vo.PostSearchConditionVo;
import com.joshuait.sbswf.vo.PostSearchResultVo;

@Controller
@RequestMapping(value = "/media")
public class MediaController {
	private static final Logger logger = LoggerFactory.getLogger(MediaController.class);

	@Autowired
	private PostService postService;
	@Autowired
	private TermService termService;
	@Autowired
	private UserService userService;
	@Autowired
	private CommentService commentService;

	@RequestMapping
	public String list(Model model) {
		logger.info("start");
		List<Post> Print = postService.getPrint();
		logger.info("end");
		return "admin/media";
	}

	// 跳转到add页面
	@RequestMapping(value = "add")
	public String add(Model model) {

		Post add = postService.getAdd();
		
		
		return "admin/add";
	}

}
