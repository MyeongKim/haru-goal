<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <!-- Access the bootstrap Css like this,
        Spring boot will handle the resource mapping automcatically -->
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!--
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />
    <style>
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;
            line-height: 60px;
            background-color: #f5f5f5;
            text-align: right;
        }

        .todolist {
            overflow: hidden;
        }

        .todo-calendar{
            text-align: center;
        }

    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Haru-goal</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">목표 목록</a></li>
                <li><a href="#about">목표 진행</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> 회원 가입</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

    <div class="starter-template">
        <div class="row">
            <div class="col-md-12">
                <div class="todolist not-done">
                    <h3>하루 목표</h3>
                    <button class="btn-add-to-do">+</button>
                    <ul id="sortable" class="list-unstyled">
                        <li class="ui-state-default">
                            <div class="col-md-6 todo-title">
                                CNN 영어 공부
                            </div>
                            <div class="col-md-6 todo-calendar">
                                <svg width="508" height="50" class="calendar-graph-svg">
                                    <g transform="translate(-18, 0)">
                                        <c:forEach begin="0" end="${period}" varStatus="loop">
                                            <g transform="translate(${(loop.index-1) * 18}, 0)">
                                                <rect class="day" width="15" height="15" x="${18-loop.index-1}" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
                                            </g>
                                        </c:forEach>
                                    </g>
                                </svg>
                            </div>
                        </li>
                        <li class="ui-state-default">
                            <div class="col-md-6 todo-title">
                                스쿼트 100개
                            </div>
                            <div class="col-md-6 todo-calendar">
                                <svg width="508" height="50" class="calendar-graph-svg">
                                    <g transform="translate(-18, 0)">
                                        <c:forEach begin="0" end="${period}" varStatus="loop">
                                            <g transform="translate(${(loop.index-1) * 18}, 0)">
                                                <rect class="day" width="15" height="15" x="${18-loop.index-1}" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
                                            </g>
                                        </c:forEach>
                                    </g>
                                </svg>
                            </div>
                        </li>
                        <li class="ui-state-default">
                            <div class="col-md-6 todo-title">
                                퇴근 후 15분 정리
                            </div>
                            <div class="col-md-6 todo-calendar">
                                <svg width="508" height="50" class="calendar-graph-svg">
                                    <g transform="translate(-18, 0)">
                                        <c:forEach begin="0" end="${period}" varStatus="loop">
                                            <g transform="translate(${(loop.index-1) * 18}, 0)">
                                                <rect class="day" width="15" height="15" x="${18-loop.index-1}" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
                                            </g>
                                        </c:forEach>
                                    </g>
                                </svg>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>
<footer class="footer">
    <div class="container">
        <span class="text-muted">Haru-goal 에 대해</span>
    </div>
</footer>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>