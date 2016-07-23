package com.joshuait.sbswf.vo;

import java.util.ArrayList;
import java.util.List;

public class PostSearchConditionVo {

	private Long id1;
	private Long id2;
	private Long id3;

	public Long getId1() {
		return id1;
	}

	public void setId1(Long id1) {
		this.id1 = id1;
	}

	public Long getId2() {
		return id2;
	}

	public void setId2(Long id2) {
		this.id2 = id2;
	}

	public Long getId3() {
		return id3;
	}

	public void setId3(Long id3) {
		this.id3 = id3;
	}
	
	
	public List<Long> getIds(){
		List<Long> ids  =  new ArrayList<>();
		if(id1==null && id2==null && id3==null){
			return null;
		}
		if(id1!=null){
			ids.add(id1);
		}
		if(id2!=null){
			ids.add(id2);
		}
		if(id3!=null){
			ids.add(id3);
		}
		return ids;
	}

}
