<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<style>
 	*{
        padding:0;
        margin:0;
        list-style: none;
        text-decoration: none;
    }

    section{
        margin:0 auto;
        max-width:1920px;
    }   
    
    /* 전체 */
    .hotkok-swiper-container {
        margin: 0 auto;
        position: relative;
        overflow: hidden;
        list-style: none;
        padding:0;
        z-index: 1;         
    }

    .swiper-wrapper {         
        position: relative;
        width: 100%;     
        height: 100%;  
        z-index: 1;
        display: flex;      
        box-sizing: content-box;         
    }

    .swiper-slide, .swiper-slide-place, .swiper-slide-active, .swiper-slide-next, .swiper-slide-li{       
        flex-shrink: 0;
        width: 100%;
        height: 100%;
        position: relative;                
    }

    /* 상단 그림 (인기여행지, 인기맛집 제외) */
    .hotkok-travel {
        height: 695px;
        border-bottom: 1px solid #fff;
        position: relative;                 
    }

    /* 상단 그림 정중앙 맨 위부터 글씨부분까지*/
    .hotkok-travel .hotkok-inr {
        position: absolute;
        width: 1200px;
        left: 50%;
        top: 0;
        margin: 0 auto;
        margin-left: -600px;
        z-index: 100;                 
    }

    /* 요즘 인기 있는 여행지는 다 모였네! 글씨부분 */
    .hotkok-txt {
        padding: 285px 0 0;
        color: #fff;
        text-align: center;          
    }

    /* 그림 부분 핫플콕콕 글씨 */
    .hotkok-txt strong {
        display: block;
        font-weight: 700;
        font-size: 40px;
        letter-spacing: -2.5px;
        line-height: 46px;        
    }

    /* 요즘 인기 있는 여행지는 다 모였네! 글씨부분 */
    .hotkok-txt p {
        padding: 12px 0 45px;
        font-size: 22px;
        font-weight: 300;
        letter-spacing: -1.2px;
        line-height: 30px;     
    }

    /* 상단 그림 */
    .hotkok-wrap {
        position: relative;
        height: 695px;
        background-size: cover;
        background-position: 50% 50%;
        background-repeat: no-repeat;        
    }

    /* 그림 오른쪽 하단 부분 이 사진이 마음에 드시나요? 글씨 */
    .hotkok-wallpaper {
        padding-left: 30px;
        position: absolute;
        right: 32px;
        bottom: 40px;
        color: #fff;
        font-size: 18px;
        letter-spacing: -0.8px;
        text-decoration: none;       
    }

    /* 월페이퍼 바로가기-> */
    .hotkok-wallpaper span {
        display: block;
        font-weight: 300;
        font-size: 14px;
        letter-spacing: 0;        
    }

    /* 월페이퍼 바로가기 옆에 -> */
    .hotkok-wallpaper span:after {
        content: '';
        display: inline-block;
        width: 17px;
        height: 12px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_wallpaper_link2.png) no-repeat;
        margin-left: 8px;       
    }

    /* 이 사진이 마음에 드시나요? 옆에 웃는 이모티콘 */
    .hotkok-wallpaper:before {
        content: '';
        position: absolute;
        left: 0;
        top: 3px;
        display: inline-block;
        width: 24px;
        height: 24px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_wallpaper_link1.png) no-repeat;   
    }

    /*그림 밑부분 전체*/
    #hotkok-contents {
        width: auto;
        padding: 0 0 80px;
        margin: 0 auto;       
    }

    /*인기여행지, 인기맛집 버튼 밑에 그림과 붙어있는 회색 부분*/
    .hotkok-tab {
        height: 75px;
        background: #f0f2f7;        
    }

    /* 인기여행지, 인기맛집 버튼 */
    .hotkok-tab ul {
        height: 74px;
        background: #fff;
        width: 900px;
        margin: 0 auto;
        position: relative;
        top: -40px;
        display: flex;
        justify-content: space-between;
        border-radius: 50px;
        cursor: pointer;       
    }

    /* 인기여행지, 인기맛집 버튼 */
    .hotkok-tab ul li {
        float: left;
        width: 50%;      
    }

    /* 대한민국구석구석 인기여행지 버튼 */
    .hotkok-tab ul li.on div {
        font-weight: 700 !important;
        color: #fff;
        background: #567ff2;
        box-shadow: 6px 9px 16px 0px rgba(96, 107, 243, 0.35);
        border-radius: 50px;     
    }
    
     /* 인기여행지, 인기맛집 버튼 */
    .hotkok-tab ul li div {
        display: block;
        font-size: 25px;
        letter-spacing: -1.5px;
        line-height: 74px;
        color: #767676;
        position: relative;
        text-decoration: none;         
    }

    /* 인기여행지, 인기맛집 왼쪽 옆 아이콘들 */
    .hotkok-tab ul li div:before {
        content: '';
        display: inline-block;
        margin: 0 11px 0 20px;
        vertical-align: -13px;
        width: 46px;
        height: 46px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_popularity_tab.png) no-repeat;  
    }

    /* 인기여행지, 인기맛집 오른쪽 옆 -> */
    .hotkok-tab ul li div:after {
        content: '';
        display: inline-block;
        width: 22px;
        height: 13px;
        position: absolute;
        right: 31px;
        top: 31px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_popularity_tab1.png) no-repeat;
    }

    /* 인기여행지, 인기맛집 글씨 (대한민국구석구석 제외) */
    .hotkok-tab ul li div strong {
        font-weight: 400;      
    }
    
    /* 대한민국구석구석 인기여행지 옆 -> */
    .hotkok-tab ul li.on div:after {
        background-position: 0 -13px;
        margin-right:-20px;        
    }

    /* 대한민국구석구석 인기여행지 왼쪽 집모양 아이콘 */
    .hotkok-tab ul li:first-child.on div:before {
        background-position: 0 -46px;
    }

    /* 대한민국구석구석 인기맛집 왼쪽 수저모양 아이콘 */
    .hotkok-tab ul li:last-child div:before {
        background-position: 0 -92px;
    }
    
    /* 대한민국구석구석 인기맛집 왼쪽 수저모양 아이콘 토글됐을 때 색깔 변경 */
	.hotkok-tab ul li:last-child.on div:before {
        background-position: 0 -139px;
    }

    /* (지역이름) 인기 여행지부터 17개 지역까지 */
    .hotkok-slide_area {
        margin: 0 auto;
        position: relative;
        padding: 43px 0 0;       
    }

    /* (지역이름) 인기 여행지 */
    .area h3 {
        padding: 0 0 30px;
        font-size: 28px;
        font-weight: 700;
        color: #333;
        letter-spacing: -1.7px;
        margin-left: 350px;        
    }

    /* 지역 이름 색깔 강조 */
    .area h3 em {
        font-weight: 700;
        color: #567ff2;
        font-style: normal;
    }
    
    /* 17개 지역 글자 가운데 정렬 */
    .hotkok-slide_area a{
        display: block;
        text-align: center;
    }
    
    /* 17개 지역 중에 클릭된 지역 */
	.area .hotkok-slide_area a.on em {	    
	    color: #567ff2;
	    font-weight: 700;
	}   

    /* 선택 지역 마우스 올렸을 때 색깔 바뀜 */
    .area .hotkok-slide_area a:hover em {
        font-weight: 700;
        color: #557ef1;      
    }
    
    /* 선택 지역 불투명 파란 배경, 흰색 체크랑 지역 사진 겹치게 */
    .hotkok-slide_area a em {
        display: block;
        font-size: 18px;
        color: #777;
        position: relative;      
    }

    .hotkok-slide_area a em:before {
        content: '';
        display: block;
        height: 120px;
        margin: 0 0 9px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_area.gif) no-repeat;     
    }	

    /* 선택 지역 불투명 파란 배경, 흰색 체크 표시 */
    .hotkok-slide_area a.on em:after {
        content: '';
        display: inline-block;
        width: 100%;
        height: 120px;
        position: absolute;
        left: 0;
        top: 0;
        background: rgba(86,127,242,.8) url(https://korean.visitkorea.or.kr/resources/images/curation/icon_area_check.png) 50% 49px no-repeat;
        border-radius: 100%;
    }

    .hotkok-slide_area a span {
        display: inline-block;
        font-style: normal;
    }

    /* 선택 지역 불투명 파란 배경, 흰색 체크 표시 */
    .hotkok-slide_area ul li {
        width: 120px;
    }

    .hotkok-slide_area a.area2 em:before {
        background-position: 0 -120px;
    }

    .hotkok-slide_area a.area3 em:before {
        background-position: 0 -240px;
    }

    .hotkok-slide_area a.area4 em:before {
        background-position: 0 -360px;
    }

    .hotkok-slide_area a.area5 em:before {
        background-position: 0 -480px;
    }

    .hotkok-slide_area a.area6 em:before {
        background-position: 0 -600px;
    }

    .hotkok-slide_area a.area7 em:before {
        background-position: 0 -720px;
    }

    .hotkok-slide_area a.area8 em:before {
        background-position: 0 -1920px;
    }

    .hotkok-slide_area a.area31 em:before {
        background-position: 0 -840px;
    }

    .hotkok-slide_area a.area32 em:before {
        background-position: 0 -960px;
    }

    .hotkok-slide_area a.area33 em:before {
        background-position: 0 -1080px;
    }

    .hotkok-slide_area a.area34 em:before {
        background-position: 0 -1200px;
    }

    .hotkok-slide_area a.area35 em:before {
        background-position: 0 -1320px;
    }

    .hotkok-slide_area a.area36 em:before {
        background-position: 0 -1440px;
    }

    .hotkok-slide_area a.area37 em:before {
        background-position: 0 -1560px;
    }

    .hotkok-slide_area a.area38 em:before {
        background-position: 0 -1680px;
    }

    .hotkok-slide_area a.area39 em:before {
        background-position: 0 -1800px;
    }

	/* 17개 지역 아이콘 */
    .hotkok-slide_area a em:before {
        content: '';
        display: block;
        height: 120px;
        margin: 0 0 9px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_area.gif) no-repeat;      
    }

    /* 인기 여행지 우측 끝 왼쪽 오른쪽 버튼 */
    .hotkok-btn_wrap {
        width: 1200px;
        position: absolute;
        left: 50%;
        top: 0;
        margin-left: -600px;         
    }
    
    .hotkok-button-next, .hotkok-button-prev {
        position: absolute;
        z-index: 10;
        cursor: pointer;
    }
   
    .area .hotkok-btn_wrap .hotkok-button-prev {
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/btn_slide_prev04.png) no-repeat;
        top:0;
        left: auto;
        right: 38px;       
    }
    
    .area .hotkok-btn_wrap .hotkok-button-next {
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/btn_slide_next04.png) no-repeat;
        top:0;
        right: 0;     
    }

    /* 인기 여행지 옆 왼쪽 오른쪽 버튼 아이콘 */
    .area .hotkok-button-next, .area .hotkok-button-prev {
        width: 36px;
        height: 36px;
        text-indent: -9999px;
        top: 44px;
        margin-top: 0;    
    }   
    
    /* 전체 여행지 리스트 */
    .hotkok-travelList{
    	margin:0 auto;
    }

    /* 여행지 리스트 하나 */
    .hotkok-area_list ul li {
        float: left;
        width: 277px;
        margin: 60px 0 0 30px;
        position: relative;
    }

    /* 여행지 이미지 */
    .hotkok-area_list .img {
        display: block;
        height: 195px;
        border-radius: 10px;
        text-indent: -9999px;
        background-size: cover;
        background-position: 50% 50%;
        background-repeat: no-repeat;
        cursor: pointer;
    }

    /* 여행지 타이틀, 좋아요, 지도 */
    .hotkok-area_list strong {
        display: block;
        padding: 17px 55px 4px 0;
        cursor: pointer;       
    }   

    /* 여행지 위치, 거리 가운데 ㅣ */
    .hotkok-info span + span:before {
        content: '';
        display: inline-block;
        width: 1px;
        height: 15px;
        margin: 0 12px;
        background: #333;
        vertical-align: -2px;      
    }
  
    /* 좋아요 하트 버튼 누르기 전 */
    .hotkok-area_list a.hotkok-bookmark {
        display: inline-block;
        width: 20px;
        position: absolute;
        right: 35px;
        top: 215px;
        height: 18px;
        background: url(https://korean.visitkorea.or.kr/resources/images/sub/ico_post01.png) no-repeat;
        text-indent: -9999px;
    }
    
    /* 좋아요 하트 버튼 누른 후 */
    .hotkok-area_list a.hotkok-bookmark.clicked {
        background: url(https://korean.visitkorea.or.kr/resources/images/sub/ico_post01_on.png) no-repeat;
    }   

    /* 여행지 지도 모양 */
    .hotkok-area_list a.hotkok-map {
        display: inline-block;
        width: 23px;
        position: absolute;
        right: 0;
        top: 215px;
        height: 17px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_map1.png) no-repeat;
        text-indent: -9999px;
    }
	
    .hotkok-area_list ul:after {
        content: '';
        display: block;       
        clear: both;        
    }

    /* 더보기 */
    .hotkok-more {
        padding: 28px 0 0;
        text-align: center;    
        font-size: 18px;
        font-weight: 300;
        display: inline-block;
        color:#333; 
        cursor: pointer;  
    }   

    /* 더보기 옆에 세모 아이콘 */
     .hotkok-more span:after {
        content: '';
        display: inline-block;
        width: 11px;
        height: 8px;
        margin-left: 5px;
        vertical-align: 2px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/btn_more01.png) no-repeat;
    }  
</style>
</head>
<body>
	<section>       
        <div class="hotkok-swiper-container" style="height: auto;">
            <div class="swiper-wrapper" style="height: auto;">
                <div class="swiper-slide-place" style="min-height: 700px;">
                    <div class="hotkok-travel">
                        <div class="hotkok-inr">
                            <div class="hotkok-txt" id="hotkok-info">
                                <strong>핫플콕콕</strong>
                                <p>
                                    요즘 인기 있는 여행지는 다 모였네!<br>
                                    TMAP, 관광 빅데이터, 대한민국 구석구석 사용자 활동 정보를 분석하여 제공하는<br>
                                    지역별 여행지와 맛집 정보를 확인해 보세요
                                </p>
                            </div>
                        </div>
                        <div class="hotkok-wrap" style="background-image: url( https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e3f587b6-8a5e-402b-b271-b763808400e2);">
	                        <a href="javascript:CurationExitLogSave(2);" class="hotkok-wallpaper">
	                            이 사진이 마음에 드시나요?
	                            <span>월페이퍼 바로가기</span>
	                        </a>
                        </div>
                    </div>
                    <div id="hotkok-contents">
                        <div class="hotkok-tab">                           
                           <ul>
                               <li class="on">
                                   <div onclick="changetype(1)">
                                       대한민국구석구석 
                                       <strong>인기여행지</strong>
                                   </div>
                               </li>
                               <li>
                                   <div onclick="changetype(2)">
                                       대한민국구석구석 
                                       <strong>인기맛집</strong>
                                   </div>
                               </li>
                           </ul>                           
                        </div>
                        <div class="area">                           
                            <div class="hotkok-slide_area">                                             
                                <div class="hotkok-swiper-container">
                                    <h3>
                                        <em>서울</em>
                                        인기 <span id="hotkok-favTrav">여행지</span>
                                    </h3>                                                  
                                    <ul class="swiper-wrapper" id="hotkok-areaList">
									    <c:forEach var="item" items="${sidoList}" varStatus="loop" begin="1">										      
									        <li class="swiper-slide" style="margin-right: 15px;">										           
									            <c:choose>
									            	<c:when test="${loop.index == 1 }">
									            		<a href="javascript:;" class="area${item.sidoCode} on" onclick="changeareaplace('${item.sidoCode}', this)">
											                <em>
											                    <span>${item.nickName}</span>
											                </em>
											            </a>
									            	</c:when>
									            	<c:otherwise>
									            		<a href="javascript:;" class="area${item.sidoCode}" onclick="changeareaplace('${item.sidoCode}', this)">
											                <em>
											                    <span>${item.nickName}</span>
											                </em>
											            </a>
									            	</c:otherwise>
									            </c:choose>
									        </li>
									    </c:forEach>
								 	</ul>
                                    <div class="hotkok-btn_wrap">
                                        <div class="hotkok-button-prev">이전</div>
                                        <div class="hotkok-button-next">다음</div>
                                    </div>                                                                                
                                </div>                               
                            </div>
                            <div class="hotkok-area_list">                                                     
                                <ul class="hotkok-travelList">
                                	<c:forEach var="item" items="${list}">
                                		<li>
							                <div class="img" style="background-image: url(${item.firstimage})"></div>
							                <strong>${item.title}</strong>
							                <div class="hotkok-info">
							                    <span>${item.nickName}</span>
							                    <span>${item.sigunguName}</span>
							                </div>
							                <a class="hotkok-bookmark" href="#" onclick="addToFavorites('${item.contentid}', this); heartClick(this, 'whiteHeart');">
											    <span>좋아요</span>
											</a>										
											<a href="javascript:;" class="hotkok-bookmark on" onclick="setLikeContent('02f56ab2-5e53-470f-8ec3-95cf8fb88aa4', this);">
											    <span>좋아요</span>
											</a>
							                <a class="hotkok-map" href="#" onclick="showMap('${item.contentid}')">지도 보기</a>
							                <a href="javascript:golocation('02f56ab2-5e53-470f-8ec3-95cf8fb88aa4','37.5430553337','127.0417770333');" class="hotkok-map">여행지도</a>
							            </li>
                                	</c:forEach>
                                </ul>                            
                                <div class="hotkok-more" style="display: block;" >
                                    <span onclick="moreplacedata(1)">더보기</span>                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>    
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper('.hotkok-swiper-container', {
        slidesPerView: 'auto',
        spaceBetween: 20,
        loop: true,
        navigation: {
            nextEl: '.hotkok-button-next',
            prevEl: '.hotkok-button-prev',
        },
    });

    let index = 1;
    let areaindex = 1;
    
    // 여행지/맛집 선택
    function changetype(type) {
        index = 0;
        areaindex = 1;
        $(".hotkok-travelList").empty();
        $(".hotkok-more").empty();
        if (type == 1) { // 여행지
            $('.hotkok-tab ul li').removeClass('on');
            $('.hotkok-tab ul li:nth-child(1)').addClass('on');
            $('#hotkok-favTrav').html('여행지');

            moreplacedata(1);

            let str = "<span onclick=\"moreplacedata(1)\">더보기</span>";
            $(".hotkok-more").append(str);
        } else if (type == 2) { // 맛집
            $('.hotkok-tab ul li').removeClass('on');
            $('.hotkok-tab ul li:nth-child(2)').addClass('on');
            $('#hotkok-favTrav').html('맛집');

            morefooddata(1);
            
            let str = "<span onclick=\"morefooddata(1)\">더보기</span>";
            $(".hotkok-more").append(str);
        }       
    }   

    function moreplacedata(sidocode) {
        index++;
        $.ajax({
            url: "/tour/placeHotkok",
            type: "GET",
            data: {
                sidocode: sidocode,
                index: index
            },
            success: function (data) {
                displayTravelList(data);
                if(areaindex==1){
                	sidoplace(data);
                }
            },
            error: function (error) {
                console.error('Ajax 호출 실패:', error);
            }
        });
    }

    function sidoplace(data){
    	let item = data.sidoList;
    	let str2 = "";
    	
    	for(let i=1; i<item.length; i++){
	    		str2 += "<li class=\"swiper-slide\" id=\"area"+item[i].sidoCode+"\"  data-sidoCode=\""+item[i].sidoCode+"\" style=\"margin-right: 15px;\">";
    		if(i == 1){
	    		str2 += "	<a href=\"javascript:;\" class=\"area"+item[i].sidoCode+" on\" onclick=\"changeareaplace('"+item[i].sidoCode+"', this)\">";
    		}else{
	    		str2 += "	<a href=\"javascript:;\" class=\"area"+item[i].sidoCode+"\" onclick=\"changeareaplace('"+item[i].sidoCode+"', this)\">";
    		}
    		str2 += "	<em><span>"+item[i].nickName+"</span></em>";
    		str2 += "	</a>";
    		str2 += "</li>";
    	}
    	$("#hotkok-areaList").empty();
    	$("#hotkok-areaList").append(str2);       
    }   
    
    function morefooddata(sidocode) {
        index++;
        $.ajax({
            url: "/tour/restHotkok",
            type: "GET",
            data: {
                sidocode: sidocode,
                index: index
            },
            success: function (data) {
                displayTravelList(data);
                if(areaindex == 1){
	                sidofood(data);
                }
            },
            error: function (error) {
                console.error('Ajax 호출 실패:', error);
            }
        });
    }   
    
    function sidofood(data){
    	let item = data.sidoList;
    	let str2 = "";
    	
    	for(let i=1; i<item.length; i++){
    		str2 += "<li class=\"swiper-slide\" id=\"area"+item[i].sidoCode+"\"  data-sidoCode=\""+item[i].sidoCode+"\" style=\"margin-right: 15px;\">";
    		if(i == 1){
	    		str2 += "	<a href=\"javascript:;\" class=\"area"+item[i].sidoCode+" on\" onclick=\"changeareafood('"+item[i].sidoCode+"', this)\">";
    		}else{
	    		str2 += "	<a href=\"javascript:;\" class=\"area"+item[i].sidoCode+"\" onclick=\"changeareafood('"+item[i].sidoCode+"', this)\">";
    		}
    		str2 += "	<em><span>"+item[i].nickName+"</span></em>";
    		str2 += "	</a>";
    		str2 += "</li>";
    	}
    	$("#hotkok-areaList").empty();
    	$("#hotkok-areaList").append(str2);        
    }
	
    function displayTravelList(data) {
        let item = data.list;
        let str = "";
        for (let i = 0; i < item.length; i++) {
            str += "<li>"
            str += "	<div class=\"img\" style=\"background-image: url(" + item[i].firstimage + ")\"></div>"
            str += " 	<strong>" + item[i].title + "</strong>"
            str += "	<div class=\"hotkok-info\">"
            str += " 		<span>" + item[i].nickName + "</span>"
            str += "  		<span>" + item[i].sigunguName + "</span>"
            str += " 	</div>"
            str += " 	<a class=\"hotkok-bookmark" + (item[i].liked ? ' clicked' : '') + "\" href=\"#\" onclick=\"addToFavorites('" + item[i].contentid + "', this)\">좋아요</a>"
            str += " 	<a class=\"hotkok-map\" href=\"#\" onclick=\"showMap('" + item[i].contentid + "')\">지도 보기</a>"
            str += "</li>"
        }

        $(".hotkok-travelList").append(str);
    }

 	// 좋아요 버튼에 대한 이벤트 핸들러
    $(document).on('click', '.hotkok-bookmark', function() {
        let contentId = $(this).closest('li').data('content-id');

        // 좋아요 상태를 토글
        let liked = !$(this).hasClass('clicked');
        if (liked) {
            // 좋아요를 추가하는 로직
            console.log('좋아요 추가: ' + contentId);
            alert("좋아요를 누르셨습니다.");

            // 누른 후 이미지로 변경
            $(this).addClass('clicked');
        } else {
            // 좋아요를 취소하는 로직
            console.log('좋아요 취소: ' + contentId);
            alert("좋아요가 취소되었습니다.");

            // 다시 누르기 전 이미지로 변경
            $(this).removeClass('clicked');
        }
    });    
 	
    function changeareaplace(sidocode, obj){
    	areaindex++;
    	// 모든 지역의 색상 초기화
        $('.swiper-slide a').removeClass('on');

        // 선택한 지역의 색상 변경
      	$(obj).addClass('on');

        // 선택한 지역의 데이터를 불러오기 위한 AJAX 호출
        index = 0;
        $(".hotkok-travelList").empty();
        $(".hotkok-more").empty();
        
        moreplacedata(sidocode);
		
        let str = "<span onclick=\"moreplacedata('"+sidocode+"')\">더보기</span>";
        $(".hotkok-more").append(str);
    }
    
    function changeareafood(sidocode, obj){
    	areaindex++;
    	
    	// 모든 지역의 색상 초기화
        $('.swiper-slide a').removeClass('on');

        // 선택한 지역의 색상 변경
      	$(obj).addClass('on');

        // 선택한 지역의 데이터를 불러오기 위한 AJAX 호출
        index = 0;
        $(".hotkok-travelList").empty();
        $(".hotkok-more").empty();
        
        moreplacedata(sidocode);
		
        let str = "<span onclick=\"morefooddata('"+sidocode+"')\">더보기</span>";
        $(".hotkok-more").append(str);
    }   
</script>    
</body>
</html>