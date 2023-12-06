package com.acorn.tour.like;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class LikeController {

	@Autowired
	LikeService ls;
	
	@Autowired
	HttpSession session;
	
	// 좋아요
	@ResponseBody
	@RequestMapping(value="/like" , method=RequestMethod.GET)
	public Map<String, Object> LikeControl(@RequestParam(required=false) String contentId, int mylikeNum){
		
		String userId = (String)session.getAttribute("userId");
		
		if(mylikeNum == 0) {
			ls.getUpdateContentLike(contentId, userId); // 좋아요 테이블에 삽입
		}else {
			ls.getDeleteContentLike(contentId, userId); // 좋아요 테이블에 삭제
		}
		
		Map<String, Object> map  = new HashMap<>();
		int likeNum = ls.getCountLike(contentId); // 게시물 좋아요 수 조회
		map.put("likeNum" , likeNum);
		
		return map;
	}
}
