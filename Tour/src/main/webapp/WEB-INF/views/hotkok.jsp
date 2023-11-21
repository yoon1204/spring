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

    /* //video_wrap */
    .wrap {
        position: relative;
    }

    /* swiper-container=swiper-container swiper-container-initialized swiper-container-horizontal */
    /* 전체 //swiper-container swiper-tabs-content //tab_slide */
    .swiper-container {
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

    /* saveAreaClickLog */
    /* swiper-slide-next=swiper-slide swiper-slide-next */
    /* swiper-slide-active=swiper-slide swiper-slide-active */
    /* //swiper-slide-place=swiper-slide type_place tab_slide_li*/
    .swiper-slide, .swiper-slide-place, .swiper-slide-active, .swiper-slide-next, .swiper-slide-li{       
        flex-shrink: 0;
        width: 100%;
        height: 100%;
        position: relative;       
    }

    /*상단 사진 부분에 있는 핫플콕콕부터 월페이퍼 바로가기까지 //travel_gnb ai_travel type1*/
    .travel {
        height: 695px;
        border-bottom: 1px solid #fff;
        position: relative;
    }

    /* 상단 그림 정중앙 맨 위부터 글씨부분까지*/
    .travel .inr {
        position: absolute;
        width: 1200px;
        left: 50%;
        top: 0;
        margin: 0 auto;
        margin-left: -600px;
        z-index: 100;
    }

    /* 요즘 인기 있는 여행지는 다 모였네! 글씨부분 //info_txt*/
    .txt {
        padding: 285px 0 0;
        color: #fff;
        text-align: center;
    }

    /* 그림 부분 핫플콕콕 글씨 */
    .txt strong {
        display: block;
        font-weight: 700;
        font-size: 40px;
        letter-spacing: -2.5px;
        line-height: 46px;
    }

    /* 요즘 인기 있는 여행지는 다 모였네! 글씨부분 */
    .txt p {
        padding: 12px 0 45px;
        font-size: 22px;
        font-weight: 300;
        letter-spacing: -1.2px;
        line-height: 30px;
    }

    /* 상단 그림 */
    .wrap {
        position: relative;
        height: 695px;
        background-size: cover;
        background-position: 50% 50%;
        background-repeat: no-repeat;
    }

    /* 그림 오른쪽 하단 부분 이 사진이 마음에 드시나요? 글씨 */
    .wallpaper {
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
    .wallpaper span {
        display: block;
        font-weight: 300;
        font-size: 14px;
        letter-spacing: 0;
    }

    /* 월페이퍼 바로가기 옆에 -> */
    .wallpaper span:after {
        content: '';
        display: inline-block;
        width: 17px;
        height: 12px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_wallpaper_link2.png) no-repeat;
        margin-left: 8px;
    }

    /* 이 사진이 마음에 드시나요? 옆에 웃는 이모티콘 */
    .wallpaper:before {
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
    #contents {
        width: auto;
        padding: 0 0 80px;
        margin: 0 auto;
    }

    /*인기여행지, 인기맛집 버튼 밑에 그림과 붙어있는 회색 부분 //popularity_tab*/
    .tab {
        height: 75px;
        background: #f0f2f7;
    }

    /* 인기여행지, 인기맛집 버튼 */
    .tab ul {
        height: 74px;
        background: #fff;
        width: 900px;
        margin: 0 auto;
        position: relative;
        top: -40px;
        display: flex;
        justify-content: space-between;
        border-radius: 50px;
    }

    /* 인기여행지, 인기맛집 버튼 */
    .tab ul li {
        float: left;
        width: 50%;
    }

    /* 대한민국구석구석 인기여행지 버튼 */
    .tab ul li.on a {
        font-weight: 700 !important;
        color: #fff;
        background: #567ff2;
        box-shadow: 6px 9px 16px 0px rgba(96, 107, 243, 0.35);
        border-radius: 50px;
    }

    /* 대한민국구석구석 인기여행지 옆 -> */
    .tab ul li.on a:after {
        background-position: 0 -13px;
        margin-right:-20px;
    }

    /* 대한민국구석구석 인기여행지 왼쪽 집모양 아이콘 */
    .tab ul li:first-child.on a:before {
        background-position: 0 -46px;
    }

    /* 대한민국구석구석 인기맛집 왼쪽 수저모양 아이콘 */
    .tab ul li:last-child a:before {
        background-position: 0 -92px;
    }
    
    /* 대한민국구석구석 인기맛집 왼쪽 수저모양 아이콘 토글됐을 때 색깔 변경 */
	 .tab ul li:last-child.on a:before {
        background-position: 0 -139px;
    }
    
     /* 인기여행지, 인기맛집 버튼 */
    .tab ul li a {
        display: block;
        font-size: 25px;
        letter-spacing: -1.5px;
        line-height: 74px;
        color: #767676;
        position: relative;
        text-decoration: none;
    }

    /* 인기여행지, 인기맛집 왼쪽 옆 아이콘들 */
    .tab ul li a:before {
        content: '';
        display: inline-block;
        margin: 0 11px 0 20px;
        vertical-align: -13px;
        width: 46px;
        height: 46px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_popularity_tab.png) no-repeat;
    }

    /* 인기여행지, 인기맛집 오른쪽 옆 -> */
    .tab ul li a:after {
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
    .tab ul li a strong {
        font-weight: 400;
    }

    /* area=curation_area */
    .slide_area {
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

    /* 인기순, 거리순 */
    button{
        border:0 none;
        background-color: transparent;
        cursor:pointer;
    }

    /* 17개 지역 글자 가운데 정렬 */
    .slide_area a{
        display: block;
        text-align: center;
    }

    /* 선택 지역 색깔 강조 */
    .area .slide_area a:hover em, .area .slide_area a.on em {
        font-weight: 700;
        color: #557ef1;
    }

    /* 선택 지역 불투명 파란 배경, 흰색 체크랑 지역 사진 겹치게 */
    .slide_area a em {
        display: block;
        font-size: 18px;
        color: #777;
        position: relative;
    }

    /* slide_area=area_slide */
    .slide_area a em:before {
        content: '';
        display: block;
        height: 120px;
        margin: 0 0 9px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_area.gif) no-repeat;
    }

    /* 선택 지역 불투명 파란 배경, 흰색 체크 표시 */
    .slide_area a.on em:after {
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

    .slide_area a span {
        display: inline-block;
        font-style: normal;
    }

    /* 선택 지역 불투명 파란 배경, 흰색 체크 표시 */
    .slide_area ul li {
        width: 120px;
    }

    /* //saveAreaClickLog */
    .slide_area a.incheon em:before {
        background-position: 0 -120px;
    }

    .slide_area a.daejeon em:before {
        background-position: 0 -240px;
    }

    .slide_area a.daegu em:before {
        background-position: 0 -360px;
    }

    .slide_area a.gwangju em:before {
        background-position: 0 -480px;
    }

    .slide_area a.busan em:before {
        background-position: 0 -600px;
    }

    .slide_area a.ulsan em:before {
        background-position: 0 -720px;
    }

    .slide_area a.sejong em:before {
        background-position: 0 -1920px;
    }

    .slide_area a.gyeonggi em:before {
        background-position: 0 -840px;
    }

    .slide_area a.gangwon em:before {
        background-position: 0 -960px;
    }

    .slide_area a.chungbuk em:before {
        background-position: 0 -1080px;
    }

    .slide_area a.chungnam em:before {
        background-position: 0 -1200px;
    }

    .slide_area a.kyeongbuk em:before {
        background-position: 0 -1320px;
    }

    .slide_area a.gyeongnam em:before {
        background-position: 0 -1440px;
    }

    .slide_area a.jeonbuk em:before {
        background-position: 0 -1560px;
    }

    .slide_area a.jeonnam em:before {
        background-position: 0 -1680px;
    }

    .slide_area a.jeju em:before {
        background-position: 0 -1800px;
    }

	/* 17개 지역 아이콘 */
    .slide_area a em:before {
        content: '';
        display: block;
        height: 120px;
        margin: 0 0 9px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_area.gif) no-repeat;
    }

    /* 인기 여행지 우측 끝 왼쪽 오른쪽 버튼 */
    .btn_wrap {
        width: 1200px;
        position: absolute;
        left: 50%;
        top: 0;
        margin-left: -600px;
    }

    /* button-prev=swiper-button-prev swiper-button-disabled //Previous slide */
    .area .btn_wrap .button-prev {
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/btn_slide_prev04.png) no-repeat;
        top:0;
        left: auto;
        right: 38px;       
    }

    /* button-next=swiper-button-next //Next slide */
    .area .btn_wrap .button-next {
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/btn_slide_next04.png) no-repeat;
        top:0;
        right: 0;     
    }

    /* 인기 여행지 옆 왼쪽 오른쪽 버튼 아이콘 */
    .area .button-next, .area .button-prev {
        width: 36px;
        height: 36px;
        text-indent: -9999px;
        top: 44px;
        margin-top: 0;
    }

    .button-next, .button-prev {
        position: absolute;
        z-index: 10;
        cursor: pointer;
    }

    /* swiper-area=swiper-notification */
    .swiper-area {
        position: absolute;
        left: 0;
        top: 0;
        pointer-events: none;
        opacity: 0;
        z-index: -1000;
    }

    /* 인기순, 거리순 */
    .area_list {     
        margin: 0 auto;
        position: relative;
        padding-top: 10px;
    }

    /* sliding=sorting */
    /* 인기순, 거리순 */
    .sliding {
        position: absolute;
        left: 0;
        top: 25px;
        width: 100%;
        display: flex;
        justify-content: flex-end;
        font-size: 16px;
        color: #767676;
    }

    /* //changesorttype //populerBtn */
    /* 인기순 글자 진하게 강조 */
    .sliding .on {
        font-weight: 700;
        color: #000;
    }

    .sliding .on span {
        display: inline-block;
    }

    .sliding .on span:after {
        content: '';
        display: block;
        width: 100%;
        height: 1px;
        background: #000;
    }
   
    /* 인기순, 거리순 가운데 ㅣ */
    .sliding button + button:before {
        content: '';
        display: inline-block;
        height: 16px;
        width: 1px;
        vertical-align: -2px;
        background: #bfbfbf;
        margin: 0 15px;
    }
    
    .travelList{
    	margin:0 auto;
    }

    /* 여행지 리스트 */
    .area_list ul li {
        float: left;
        width: 277px;
        margin: 60px 0 0 30px;
        position: relative;
    }

    /* 여행지 이미지 */
    .area_list .img {
        display: block;
        height: 195px;
        border-radius: 10px;
        text-indent: -9999px;
        background-size: cover;
        background-position: 50% 50%;
        background-repeat: no-repeat;
    }

    /* 여행지 설명 */
    .area_list strong {
        display: block;
        padding: 17px 55px 4px 0;
    }

    /* 여행지 이름 색깔 처리 */
    .area_list ul li a {
        display: block;
        position: relative;
        text-decoration: none;
        color: #333;
    }

    /* 여행지 위치, 거리 색깔 처리 */
    .info span {
        float: left;
        font-weight: 300;
        font-size: 16px;
        line-height: 20px;
        color: #333;
    }

    /* 여행지 위치, 거리 가운데 ㅣ */
    .info span + span:before {
        content: '';
        display: inline-block;
        width: 1px;
        height: 15px;
        margin: 0 12px;
        background: #333;
        vertical-align: -2px;
    }

    /* bookmark=setLikeContent */
    /* 여행지 하트 모양 */
    .area_list a.bookmark {
        display: inline-block;
        width: 20px;
        position: absolute;
        right: 35px;
        top: 215px;
        height: 18px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_good02.png) no-repeat;
        text-indent: -9999px;
    }

    /* 여행지 지도 모양 */
    .area_list a.map {
        display: inline-block;
        width: 23px;
        position: absolute;
        right: 0;
        top: 215px;
        height: 17px;
        background: url(https://korean.visitkorea.or.kr/resources/images/curation/icon_map1.png) no-repeat;
        text-indent: -9999px;
    }

    .area_list ul:after {
        content: '';
        display: block;
        overflow: hidden;
        clear: both;
    }

    /* 더보기 //btn_more */
    .more {
        padding: 28px 0 0;
        text-align: center;
    }

    /* 더보기 글씨 색깔 처리 */
    .more a {
        display: inline-block;
        font-size: 18px;
        font-weight: 300;
        color:#333;
        text-decoration: none; 
    }

    /* 더보기 옆에 세모 아이콘 */
     .more a:after {
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
        <div class="swiper-container" id="slide" style="height: auto;">
            <div class="swiper-wrapper" style="height: auto;">
                <div class="swiper-slide-place" style="min-height: 700px;">
                    <div class="travel" id="travelGnb">
                        <div class="inr">
                            <div class="txt" id="info">
                                <strong>핫플콕콕</strong>
                                <p>
                                    요즘 인기 있는 여행지는 다 모였네!<br>
                                    TMAP, 관광 빅데이터, 대한민국 구석구석 사용자 활동 정보를 분석하여 제공하는<br>
                                    지역별 여행지와 맛집 정보를 확인해 보세요
                                </p>
                            </div>
                        </div>
                        <div class="wrap" style="background-image: url( https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e3f587b6-8a5e-402b-b271-b763808400e2);"></div>
                        <a href="javascript:CurationExitLogSave(2);" class="wallpaper">
                            이 사진이 마음에 드시나요?
                            <span>월페이퍼 바로가기</span>
                        </a>
                    </div>
                    <div id="contents">
                        <div class="tab">
                            <div class="inr">
                                <ul>
                                    <li class="on">
                                        <a href="javascript:changetype('main_1');">
                                            대한민국구석구석 
                                            <strong>인기여행지</strong>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:changetype('main_2');">
                                            대한민국구석구석 
                                            <strong>인기맛집</strong>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="area">                           
                            <div class="slide_area">              
                                <div class="layer_wrap">
                                    <div class="swiper-container">
                                        <h3>
                                            <em>서울</em>
                                            인기 <span id="favTrav"> 여행지</span>
                                        </h3>                                       
                                        <ul class="swiper-wrapper">
                                            <li class="swiper-slide-active" id="area1" style="margin-right: 15px;">
                                                <a href="javascript:;" class="seoul on" title="선택됨">
                                                    <em>
                                                        <span>서울</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide-next" id="area2" style="margin-right: 15px;">
                                                <a href="javascript:;" class="incheon" onclick="saveArea(2)">
                                                    <em>
                                                        <span>인천</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area3" style="margin-right: 15px;">
                                                <a href="javascript:;" class="daejeon" onclick="saveArea(3)">
                                                    <em>
                                                        <span>대전</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area4" style="margin-right: 15px;">
                                                <a href="javascript:;" class="daegu" onclick="saveArea(4)">
                                                    <em>
                                                        <span>대구</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area5" style="margin-right: 15px;">
                                                <a href="javascript:;" class="gwangju" onclick="saveArea(5)">
                                                    <em>
                                                        <span>광주</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area6" style="margin-right: 15px;">
                                                <a href="javascript:;" class="busan" onclick="saveArea(6)">
                                                    <em>
                                                        <span>부산</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area7" style="margin-right: 15px;">
                                                <a href="javascript:;" class="ulsan" onclick="saveArea(7)">
                                                    <em>
                                                        <span>울산</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area8" style="margin-right: 15px;">
                                                <a href="javascript:;" class="sejong" onclick="saveArea(8)">
                                                    <em>
                                                        <span>세종</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area9" style="margin-right: 15px;">
                                                <a href="javascript:;" class="gyeonggi">
                                                    <em>
                                                        <span>경기</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area10" style="margin-right: 15px;">
                                                <a href="javascript:;" class="gangwon">
                                                    <em>
                                                        <span>강원</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area11" style="margin-right: 15px;">
                                                <a href="javascript:;" class="chungbuk">
                                                    <em>
                                                        <span>충북</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area12" style="margin-right: 15px;">
                                                <a href="javascript:;" class="chungnam">
                                                    <em>
                                                        <span>충남</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area13" style="margin-right: 15px;">
                                                <a href="javascript:;" class="kyeongbuk">
                                                    <em>
                                                        <span>경북</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area14" style="margin-right: 15px;">
                                                <a href="javascript:;" class="gyeongnam">
                                                    <em>
                                                        <span>경남</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area15" style="margin-right: 15px;">
                                                <a href="javascript:;" class="jeonbuk">
                                                    <em>
                                                        <span>전북</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area16" style="margin-right: 15px;">
                                                <a href="javascript:;" class="jeonnam">
                                                    <em>
                                                        <span>전남</span>
                                                    </em>
                                                </a>
                                            </li>
                                            <li class="swiper-slide" id="area17" style="margin-right: 15px;">
                                                <a href="javascript:;" class="jeju" onclick="saveArea(39)">
                                                    <em>
                                                        <span>제주</span>
                                                    </em>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="btn_wrap">
                                            <div class="button-prev" tabindex="-1" role="button" aria-label="Prev_slide" aria-disabled="true">이전</div>
                                            <div class="button-next" tabindex="0" role="button" aria-label="Next_slide" aria-disabled="false">다음</div>
                                        </div>
                                        <span class="swiper-area" aria-live="assertive" aria-atomic="true"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="area_list">
                                <div class="sliding">
                                    <button type="button" class="on" onclick="changeSort(this,'POPULAR');" id="popularBtn">
                                        <span>인기순</span>
                                    </button>
                                    <button type="button" onclick="changeSort(this,'DISTANCE');" id="distBtn">
                                        <span>거리순</span>
                                    </button>
                                </div>
                                
                                <ul class="travelList">
                                </ul>
                                    
                                <div class="more" style="display: block;">
                                    <a href="javascript:moredata();">더보기</a>
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



function changetype(type) {
    if (type === 'main_1') {
        // 대한민국 구석구석 인기여행지 버튼을 눌렀을 때의 처리
        // 인기여행지 버튼 스타일 변경
        $('.tab ul li').removeClass('on');
        $('.tab ul li:nth-child(1)').addClass('on');
        $('#favTrav').html('여행지');   // $('#a').html()  =>  태그사이의 내용가져오거나 변경가능;   //  <span> ddfddfjfjfj</span>

        // 인기여행지 정보 표시, 인기맛집 정보 숨김
        $('.travelList').show();
        $('.restaurantList').hide();
        
    } else if (type === 'main_2') {
        // 대한민국 구석구석 인기맛집 버튼을 눌렀을 때의 처리
        // 인기맛집 버튼 스타일 변경
        $('.tab ul li').removeClass('on');
        $('.tab ul li:nth-child(2)').addClass('on');
        $('#favTrav').html('맛집');

        // 인기맛집 정보 표시, 인기여행지 정보 숨김
        $('.travelList').hide();
        $('.restaurantList').show();
    }
}

// 인기여행지 정보를 표시
changetype('main_1');

        $(document).ready(function () {
            // Ajax 요청
            $.ajax({
                url: '${path}/hotkok',
                type: 'POST',
                dataType: 'json',
                success: function (data) {
                    for (let i = 0; i < data.length; i++) {
                        let imagePath = data[i].imagePath;
                        let title = data[i].title;

                        // Swiper에 슬라이드 추가
                        let slideItem = '<div class="swiper-slide">' +
                            '<a href="javascript:detail(\'' + data[i].id + '\', \'undefined\', \'12\');" class="img" style="background-image: url(' + imagePath + ');">' +
                            title +
                            '</a>' +
                            '<strong>' +
                            '<a href="javascript:detail(\'' + data[i].id + '\', \'undefined\', \'12\');">' +
                            title +
                            '</a>' +
                            '</strong>' +
                            '<div class="info">' +
                            '<span>' + data[i].location + '</span>' +
                            '<span class="km" style="display: inline;">' + data[i].distance + '</span>' +
                            '</div>' +
                            '<a href="javascript:;" class="bookmark" onclick="content(\'' + data[i].id + '\',this);">좋아요</a>' +
                            '<a href="javascript:golocation(\'' + data[i].id + '\',\'' + data[i].latitude + '\',\'' + data[i].longitude + '\');" class="map">여행지도</a>' +
                            '</li>';

                        $('.swiper-wrapper').append(slideItem);
                    }              
                }
            });
        });        
        //<script>
        //$(document).ready(function(){ //문서가 로드가 완료되면
            //$("button").click(function(){
            	 // alert("하이");   	             
                //var index = $(this).index() ;  // 버튼의 순서(인덱스)를 가져옴  첫번째 :0 , 두번째 :1
                //if(index === 0){
                    // 여행지가 보이고 // 맛집보이지 않게 	
                    //$("#y").show();
                    //$("#m").hide();
                //} else if(index === 1){
                    //$("#y").hide();
                    //$("#m").show();
                //}
                //alert(index);                              
            //}            
            //);
        //});      
        //<style>
        //div {
            //border: 1px solid black;
        //}
        //</style>
        //</head>
        //<body>
        //<button>여행지</button><button>맛집</button>
        //<div id="y">
            //여행지 
            //<p>여행지 제목</p>
            //<ul>
                //<li>ddfdf</li>
                //<li>ddfdf</li>
                //<li>ddfdf</li>
                //<li>ddfdf</li>
            //</ul>
        //</div>
        //<div id="m">
            //맛집
        //</div>
        //</body>
    </script>
</body>
</html>