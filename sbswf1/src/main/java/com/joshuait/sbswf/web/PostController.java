package com.joshuait.sbswf.web;

import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.joshuait.sbswf.entity.Comment;
import com.joshuait.sbswf.entity.Post;
import com.joshuait.sbswf.entity.Term;
import com.joshuait.sbswf.service.CommentService;
import com.joshuait.sbswf.service.PostService;
import com.joshuait.sbswf.service.TermService;
import com.joshuait.sbswf.service.UserService;
import com.joshuait.sbswf.vo.Page;
import com.joshuait.sbswf.vo.PostSearchConditionVo;
import com.joshuait.sbswf.vo.PostSearchResultVo;

@Controller
@RequestMapping(value = "/index")
public class PostController {
	private static final Logger logger = LoggerFactory.getLogger(PostController.class);

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

		// 最新笔记
		List<Post> newpost = postService.getNewPost();
		model.addAttribute("newpost", newpost);
		// 值得收藏
		List<Post> collectpost = postService.getCollectPost();
		model.addAttribute("collectpost", collectpost);
		// 笔记分类
		List<Term> newname = termService.getNewName();
		model.addAttribute("newname", newname);
		// 推荐笔记
		List<Post> commendpost = postService.getCommendPost();
		model.addAttribute("commendpost", commendpost);
		// 等您参与
		List<Post> chats = postService.getNewChat2();
		model.addAttribute("chats", chats);
		logger.info("end");
		return "index";
	}

	@RequestMapping(value = "detail/{id}")
	public String viewPost(@ModelAttribute Comment comment1, @PathVariable Long id, Model model) {

		// 1. 查询文章详情
		Post post = postService.getById(id);
		model.addAttribute("post", post);

		// 2. 查询分类
		Post term = postService.getByTerm(id);
		model.addAttribute("term", term);

		Post term2 = postService.getByTerm2(id);
		model.addAttribute("term2", term2);

		Post term3 = postService.getByTerm3(id);
		model.addAttribute("term3", term3);

		// 3. 查询作者信息
		Post user1 = postService.getByAuthor(id);
		model.addAttribute("user1", user1);

		// 写评论并更新出来
		comment1.setCommentDate(new Date());
		commentService.insert(comment1);

		// 4. 查询评论信息（包含评论者）
		List<Post> comment = postService.getByComment(id);
		model.addAttribute("comment", comment);

		// 浏览量
		Long viewcount = postService.getViewCounts(id);
		model.addAttribute("viewcount", viewcount);
		// 评论数量
		postService.getChatCounts(id);

		// 作者最新笔记和总笔记数总浏览量和评论楼层数
		List<Post> newpost2 = postService.getNewPost2(post.getPostAuthor());
		model.addAttribute("newpost2", newpost2);

		Post sum = postService.getBySum2(post.getPostAuthor());
		model.addAttribute("sum", sum);

		Post lou = postService.getByLou(id);
		model.addAttribute("lou", lou);

		return "note1";
	}

	@RequestMapping(value = "notes")
	public String toNotes(@ModelAttribute("vo") PostSearchConditionVo postSearchConditionVo, @ModelAttribute Page page,
			Model model) {
		page.setPageSize(5L);
		// 笔记
		List<Term> newname = termService.getNewName();
		model.addAttribute("newname", newname);

		List<Term> newname1 = termService.getNewName1();
		model.addAttribute("newname1", newname1);

		List<Term> newname2 = termService.getNewName2();
		model.addAttribute("newname2", newname2);

		List<PostSearchResultVo> newcommendpost = postService.searchByCategoryIds(postSearchConditionVo.getIds(), page);
		model.addAttribute("newcommendpost", newcommendpost);

		// 推荐笔记
		List<Post> post = postService.getCommendPost();
		model.addAttribute("post", post);

		// 火热笔记
		List<Post> hotpost = postService.getHotPost();
		model.addAttribute("hotpost", hotpost);

		// 笔记达人
		List<Post> expertpost = postService.getExpertPost();
		model.addAttribute("expertpost", expertpost);

		// 总笔记数和总阅读数
		Post sums = postService.getBySum();
		model.addAttribute("sums", sums);

		return "notes";

	}

	@RequestMapping(value = "wht/{id}")
	public String toChat(@ModelAttribute Comment comment1, @PathVariable Long id, Model model) {

		// 话题详情
		Post chat = postService.getById(id);
		model.addAttribute("chat", chat);
		// 浏览量
		Long viewcount = postService.getViewCounts(id);
		model.addAttribute("viewcount", viewcount);
		// 话题作者
		Post user = postService.getByChatAuthor(id);
		model.addAttribute("user", user);
		// 写评论并更新出来
		comment1.setCommentDate(new Date());
		commentService.insert(comment1);
		// 评论
		List<Post> post = postService.getComment(chat.getId());
		model.addAttribute("post", post);
		// 楼层倒序
		Post lou = postService.getByLouWht(chat.getId());
		model.addAttribute("lou", lou);
		// 等您参与
		List<Post> chats = postService.getNewChat1(id);
		model.addAttribute("chats", chats);

		return "wht";

	}

}