package com.joshuait.sbswf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.joshuait.sbswf.entity.Post;
import com.joshuait.sbswf.entity.Term;
import com.joshuait.sbswf.entity.User;
import com.joshuait.sbswf.vo.Page;

@Component
public interface PostMapper {
	public Post getById(long id);

	public List<Post> search(Post post);

	public void insert(Post post);

	public void update(Post post);

	public void delete(long id);
	
	public List<Post> getNewPost();

	public List<Post> getCollectPost();

	public List<Post> getCommendPost();
	
	public Long getViewCounts(Long id);
	
	public Post getByAuthor(Long id);

	public List<Post> getByComment(Long id);

	public List<Post> getByComment2(Post post);
	
	public Post getByTerm(Long id);
	
	public Post getByTerm2(Long id);
	
	public Post getByTerm3(Long id);

	public List<Post> getHotPost();

	public List<Post> getExpertPost();

	public Post getBySum();
	
	//根据分类id查询文章列表信息
	public List<Post> searchByCategoryIds(@Param("categoryIds")List<Long> categoryIds, @Param("page")Page page);

	public List<Post> getNewPost2(Long postAuthor);

	public Post getBySum2(Long postAuthor);

	public Post getByLou(Long id);

	public List<Post> getComment(Long id);

	public List<Post> getNewChat1(Long id);

	public List<Post> getNewChat2();

	public Post getByLouWht(Long id);

	public Post getByChatAuthor(Long id);

	public Post getNewChat();

	public void getChatCounts(Long id);

}
