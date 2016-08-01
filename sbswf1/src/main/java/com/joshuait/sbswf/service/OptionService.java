package com.joshuait.sbswf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.joshuait.sbswf.dao.OptionMapper;
import com.joshuait.sbswf.entity.Option;
import com.joshuait.sbswf.entity.Post;

@Component
public class OptionService {
	@Autowired
	private OptionMapper optionMapper;

	public Option getById(Long id) {
		return optionMapper.getById(id);
	}

	public List<Option> search(Option option) {
		return optionMapper.search(option);
	}

	public void insert(Option option) {
		optionMapper.insert(option);
	}

	public void update(Option option) {
		optionMapper.update(option);
	}

	public void delete(Long id) {
		optionMapper.delete(id);
	}

	

}
