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

import com.joshuait.sbswf.entity.Comment;
import com.joshuait.sbswf.entity.Post;
import com.joshuait.sbswf.entity.Term;
import com.joshuait.sbswf.entity.TermTaxonomy;
import com.joshuait.sbswf.entity.User;
import com.joshuait.sbswf.service.CommentService;
import com.joshuait.sbswf.service.PostService;
import com.joshuait.sbswf.service.TermService;
import com.joshuait.sbswf.service.UserService;
import com.joshuait.sbswf.vo.Page;
import com.joshuait.sbswf.vo.PostSearchConditionVo;
import com.joshuait.sbswf.vo.PostSearchResultVo;

@Controller
@RequestMapping(value = "/article")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private PostService postService;
	@Autowired
	private TermService termService;
	@Autowired
	private UserService userService;
	@Autowired
	private CommentService commentService;

	@RequestMapping
	public String list(@ModelAttribute("vo") PostSearchConditionVo postSearchConditionVo, @ModelAttribute Page page,
			@ModelAttribute PostSearchResultVo PostSearchResultVo, Model model) {
		logger.info("start");
		// 查询
		model.addAttribute("title", PostSearchResultVo.getTitle());
		if (StringUtils.isNotBlank(PostSearchResultVo.getTitle())) {
			PostSearchResultVo.setTitle("%" + PostSearchResultVo.getTitle() + "%");
		}
		// 所有文章
		List<PostSearchResultVo> newcommendpost = postService.searchByCategoryIds(postSearchConditionVo.getIds(), page,
				PostSearchResultVo);
		model.addAttribute("newcommendpost", newcommendpost);
		logger.info("end");
		return "admin/article";
	}

	@RequestMapping(value = "detail/{id}")
	public String viewPost(@PathVariable Long id, Model model) {

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

		return "admin/note1";
	}

	// 保存详细文章的写的评论
	@RequestMapping(value = "commentsave/{id}")
	public String tocommentSave(@ModelAttribute("post") Post post,@ModelAttribute Comment comment, @PathVariable Long id, Model model, RedirectAttributes redirectAttributes) {
		logger.info("start");
		// 写评论并更新出来
		comment.setCommentDate(new Date());
		commentService.insert(comment);
		logger.info("end");
		return "redirect:/article/detail/"+post.getId();
	}

	// 移至回车箱
	@RequestMapping(value = "totrash/{id}")
	public String toWriteSave(@PathVariable Long id, @ModelAttribute("post") Post post, Model model,
			RedirectAttributes redirectAttributes) {
		logger.info("start");
		post.setPostStatus("trash");
		postService.updatestatus(post);
		logger.info("end");
		return "redirect:/article";
	}

	// 写文章
	@RequestMapping(value = "write")
	public String toWrite(@ModelAttribute Post post, Model model) {

		return "admin/write";
	}

	// 保存写的文章
	@RequestMapping(value = "writesave")
	public String toWriteSave(@ModelAttribute Post post, Model model, RedirectAttributes redirectAttributes) {
		logger.info("start");
		post.setPostDate(new Date());
		post.setPostStatus("publish");
		postService.insert(post);
		logger.info("end");
		return "redirect:/article/write";
	}

	// 增加分类
	@RequestMapping(value = "wcategory")
	public String toCategory1(@ModelAttribute Term term, @ModelAttribute TermTaxonomy termtaxonomy,
			RedirectAttributes redirectAttributes) {
		logger.info("start");

		termService.insert(term, termtaxonomy);

		logger.info("end");
		return "redirect:/article/category";
	}

	// 页面显示分类
	@RequestMapping(value = "category")
	public String toCategory(@ModelAttribute Page page, @ModelAttribute Term term, Model model) {
		logger.info("start");

		model.addAttribute("name", term.getName());
		if (StringUtils.isNotBlank(term.getName())) {
			term.setName("%" + term.getName() + "%");
		}
		List<Term> termlist = termService.getSearchTerm(page, term);
		model.addAttribute("termlist", termlist);

		logger.info("end");
		return "admin/category";
	}

	// 删除分类目录
	@RequestMapping(value = "delete/{id}")
	public String deleteCategory(@ModelAttribute("term") Term term, @PathVariable Long id,
			RedirectAttributes redirectAttributes) {
		logger.info(id.toString());
		termService.delete(term.getId());
		logger.info("end");
		// 转发
		return "redirect:/article/category";
	}

	// 增加标签
	@RequestMapping(value = "wtag")
	public String toTag1(@ModelAttribute Term term, @ModelAttribute TermTaxonomy termtaxonomy,
			RedirectAttributes redirectAttributes) {
		logger.info("start");

		termService.inserttag(term, termtaxonomy);

		logger.info("end");
		return "redirect:/article/tag";
	}

	// 页面显示标签
	@RequestMapping(value = "tag")
	public String toTag(@ModelAttribute Page page, @ModelAttribute Term term, Model model) {
		logger.info("start");

		model.addAttribute("name", term.getName());
		if (StringUtils.isNotBlank(term.getName())) {
			term.setName("%" + term.getName() + "%");
		}

		List<Term> termtaglist = termService.getSearchTerm1(page, term);
		model.addAttribute("termtaglist", termtaglist);

		logger.info("end");
		return "admin/tag";
	}

	// 删除标签
	@RequestMapping(value = "deletetag/{id}")
	public String deleteTag(@ModelAttribute("term") Term term, @PathVariable Long id,
			RedirectAttributes redirectAttributes) {
		logger.info(id.toString());
		termService.delete(term.getId());
		logger.info("end");
		// 转发
		return "redirect:/article/tag";
	}

	// 编辑文章
	@RequestMapping(value = "edit/{id}")
	public String toEditArticle(@ModelAttribute Term term, @PathVariable Long id, Model model) {
		logger.info("start");
		Post post = postService.getById(id);
		model.addAttribute("post", post);
		List<Term> terms = termService.getByTerm(post.getId());
		model.addAttribute("terms", terms);
		logger.info("end");
		return "admin/editarticle";
	}

	// 编辑之后保存
	@RequestMapping(value = "editSave", method = RequestMethod.POST)

	public String updateSave(@ModelAttribute("post") Post post, RedirectAttributes redirectAttributes) {
		logger.info(post.toString());

		postService.update(post);
		return "admin/editarticle";
	}

}
