package com.joshuait.sbswf.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.joshuait.sbswf.dao.PostMapper;
import com.joshuait.sbswf.dao.TermMapper;
import com.joshuait.sbswf.entity.Post;
import com.joshuait.sbswf.entity.Term;
import com.joshuait.sbswf.util.Constants;
import com.joshuait.sbswf.vo.Page;
import com.joshuait.sbswf.vo.PostSearchResultVo;

@Component
public class PostService {
	@Autowired
	private PostMapper postMapper;

	@Autowired
	private TermMapper termMapper;

	/**
	 * 查询最新的一条话题，入id==-1则查询最新的一条话题
	 * @param id 
	 * @param id
	 * @return
	 */
	public Post getById(long id) {
		if(id == -1){
			return postMapper.getNewChat();
		}else{
			return postMapper.getById(id);
		}
	}

	public List<Post> search(Post post) {
		return postMapper.search(post);
	}

	public void insert(Post post) {
		postMapper.insert(post);
	}

	public void update(Post post) {
		postMapper.update(post);
	}

	public void delete(long id) {
		postMapper.delete(id);
	}

	public List<Post> getNewPost() {
		return postMapper.getNewPost();
	}

	public List<Post> getCollectPost() {
		return postMapper.getCollectPost();
	}

	public List<Post> getCommendPost() {
		return postMapper.getCommendPost();
	}

	public Long getViewCounts(Long id) {
		return postMapper.getViewCounts(id);
	}

	public Post getByAuthor(Long id) {

		return postMapper.getByAuthor(id);
	}

	public List<Post> getByComment(Long id) {

		return postMapper.getByComment(id);
	}

	public Post getByTerm(Long id) {
		return postMapper.getByTerm(id);
	}

	public Post getByTerm2(Long id) {
		return postMapper.getByTerm2(id);
	}

	public Post getByTerm3(Long id) {
		return postMapper.getByTerm3(id);
	}

	public List<Post> getHotPost() {

		return postMapper.getHotPost();
	}

	public List<Post> getExpertPost() {

		return postMapper.getExpertPost();
	}

	//根据分类id查询文章列表信息
	public List<PostSearchResultVo> searchByCategoryIds(List<Long> categoryIds, Page page) {
		List<PostSearchResultVo> voList = new ArrayList<PostSearchResultVo>();
		//查询记录总数 for 分页
				Post Post_c = postMapper.getBySum();
				page.setElementCount(Post_c.getV());
		// 1.根据文章分类查询文章详情
		List<Post> postList = postMapper.searchByCategoryIds(categoryIds, page);
		for (Post post : postList) {
			PostSearchResultVo vo = postToVo(post);
			voList.add(vo);
		}
		
		// 2.根据文章列表ids 查询各个文章的分类信息
		List<Long> postIds=getPostIds(postList);
		List<Term> termList = termMapper.getPostsCategories(postIds);
		
		// 3. 组装文章的分类信息
		for (Term term : termList) {
			for (PostSearchResultVo vo : voList) {
				if(vo.getPostId().equals(term.getPostId())){
					if(Constants.tax_category.equals(term.getTaxonomy())){
						vo.setCategory(term.getName());
					}else if(Constants.tax_type.equals(term.getTaxonomy())){
						vo.setType(term.getName());
					}else if(Constants.tax_attribute.equals(term.getTaxonomy())){
						vo.setAttr(term.getName());
					}
				}
				
			}
		}
		
		
		return voList;
	}

	private List<Long> getPostIds(List<Post> postList) {
		List<Long> ids = new ArrayList<Long>();
		for (Post p : postList) {
			ids.add(p.getId());
		}
		if(ids.size() == 0){
			ids = null; 
		}
		return ids;
	}

	private PostSearchResultVo postToVo(Post post) {
		PostSearchResultVo vo = new PostSearchResultVo();
		vo.setPostId(post.getId());
		vo.setAuthorHeaderImageUrl(null);// 后续需要继续处理该字段
		vo.setAuthorId(post.getPostAuthor());
		vo.setAuthorName(post.getDisplayName());
		vo.setContent(post.getPostContent());
		vo.setTitle(post.getPostTitle());
		vo.setViewCount(post.getViewCount());
		vo.setPostDate(post.getPostDate());
		return vo;
	}

	public Post getBySum() {

		return postMapper.getBySum();
	}

	public List<Post> getNewPost2(Long postAuthor) {
		return postMapper.getNewPost2(postAuthor);
	}

	public Post getBySum2(Long postAuthor) {
		
		return postMapper.getBySum2(postAuthor);
	}

	public Post getByLou(Long id) {
		
		return postMapper.getByLou(id);
	}

	
	public List<Post> getComment(Long id) {

			return postMapper.getComment(id);
	
	}

	/**
	 * 查询可以讨论的话题列表
	 * @param id
	 * @return
	 */
	public List<Post> getNewChat1(Long id) {
		
		return postMapper.getNewChat1(id);
	}
	
	public List<Post> getNewChat2() {
		return postMapper.getNewChat2();
	}

	public Post getByLouWht(Long id) {
		return postMapper.getByLouWht(id);
	}

	public Post getByChatAuthor(Long id) {
		if(id == -1){
			return postMapper.getNewChat();
		}else{
			return postMapper.getByChatAuthor(id);
		}
		
	}

	public void getChatCounts(Long id) {
		postMapper.getChatCounts(id);
	}

	public List<Post> getPrint() {
		
		return null;
	}

	public Post getAdd() {
		
		return null;
	}

	

}
