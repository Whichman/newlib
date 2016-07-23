package com.joshuait.sbswf.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.joshuait.sbswf.entity.Option;

@Component
public interface OptionMapper {
	public Option getById(long id);

	public List<Option> search(Option option);

	public void insert(Option option);

	public void update(Option option);

	public void delete(long id);
}
