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
        <%--<h2>Message: ${message}</h2>--%>

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
                                        <g transform="translate(0, 0)">
                                            <rect class="day" width="15" height="15" x="18" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
                                        </g>
                                        <g transform="translate(18, 0)">
                                            <rect class="day" width="15" height="15" x="17" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-07"></rect>
                                        </g>
                                        <g transform="translate(36, 0)">
                                            <rect class="day" width="15" height="15" x="16" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-14"></rect>
                                        </g>
                                        <g transform="translate(54, 0)">
                                            <rect class="day" width="15" height="15" x="15" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-21"></rect>
                                        </g>
                                        <g transform="translate(72, 0)">
                                            <rect class="day" width="15" height="15" x="14" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-28"></rect>
                                        </g>
                                        <g transform="translate(90, 0)">
                                            <rect class="day" width="15" height="15" x="13" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-04"></rect>
                                        </g>
                                        <g transform="translate(108, 0)">
                                            <rect class="day" width="15" height="15" x="12" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-11"></rect>
                                        </g>
                                        <g transform="translate(126, 0)">
                                            <rect class="day" width="15" height="15" x="11" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-18"></rect>
                                        </g>
                                        <g transform="translate(144, 0)">
                                            <rect class="day" width="15" height="15" x="10" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-25"></rect>
                                        </g>
                                        <g transform="translate(162, 0)">
                                            <rect class="day" width="15" height="15" x="9" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(180, 0)">
                                            <rect class="day" width="15" height="15" x="8" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(198, 0)">
                                            <rect class="day" width="15" height="15" x="7" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(216, 0)">
                                            <rect class="day" width="15" height="15" x="6" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(234, 0)">
                                            <rect class="day" width="15" height="15" x="5" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(252, 0)">
                                            <rect class="day" width="15" height="15" x="4" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(270, 0)">
                                            <rect class="day" width="15" height="15" x="3" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(288, 0)">
                                            <rect class="day" width="15" height="15" x="2" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(306, 0)">
                                            <rect class="day" width="15" height="15" x="1" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(324, 0)">
                                            <rect class="day" width="15" height="15" x="0" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(342, 0)">
                                            <rect class="day" width="15" height="15" x="-1" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(360, 0)">
                                            <rect class="day" width="15" height="15" x="-2" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(378, 0)">
                                            <rect class="day" width="15" height="15" x="-3" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(396, 0)">
                                            <rect class="day" width="15" height="15" x="-4" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(414, 0)">
                                            <rect class="day" width="15" height="15" x="-5" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(432, 0)">
                                            <rect class="day" width="15" height="15" x="-6" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(450, 0)">
                                            <rect class="day" width="15" height="15" x="-7" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(468, 0)">
                                            <rect class="day" width="15" height="15" x="-8" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(486, 0)">
                                            <rect class="day" width="15" height="15" x="-9" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(504, 0)">
                                            <rect class="day" width="15" height="15" x="-10" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(522, 0)">
                                            <rect class="day" width="15" height="15" x="-11" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
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
                                        <g transform="translate(0, 0)">
                                            <rect class="day" width="15" height="15" x="18" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
                                        </g>
                                        <g transform="translate(18, 0)">
                                            <rect class="day" width="15" height="15" x="17" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-07"></rect>
                                        </g>
                                        <g transform="translate(36, 0)">
                                            <rect class="day" width="15" height="15" x="16" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-14"></rect>
                                        </g>
                                        <g transform="translate(54, 0)">
                                            <rect class="day" width="15" height="15" x="15" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-21"></rect>
                                        </g>
                                        <g transform="translate(72, 0)">
                                            <rect class="day" width="15" height="15" x="14" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-28"></rect>
                                        </g>
                                        <g transform="translate(90, 0)">
                                            <rect class="day" width="15" height="15" x="13" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-04"></rect>
                                        </g>
                                        <g transform="translate(108, 0)">
                                            <rect class="day" width="15" height="15" x="12" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-11"></rect>
                                        </g>
                                        <g transform="translate(126, 0)">
                                            <rect class="day" width="15" height="15" x="11" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-18"></rect>
                                        </g>
                                        <g transform="translate(144, 0)">
                                            <rect class="day" width="15" height="15" x="10" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-25"></rect>
                                        </g>
                                        <g transform="translate(162, 0)">
                                            <rect class="day" width="15" height="15" x="9" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(180, 0)">
                                            <rect class="day" width="15" height="15" x="8" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(198, 0)">
                                            <rect class="day" width="15" height="15" x="7" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(216, 0)">
                                            <rect class="day" width="15" height="15" x="6" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(234, 0)">
                                            <rect class="day" width="15" height="15" x="5" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(252, 0)">
                                            <rect class="day" width="15" height="15" x="4" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(270, 0)">
                                            <rect class="day" width="15" height="15" x="3" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(288, 0)">
                                            <rect class="day" width="15" height="15" x="2" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(306, 0)">
                                            <rect class="day" width="15" height="15" x="1" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(324, 0)">
                                            <rect class="day" width="15" height="15" x="0" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(342, 0)">
                                            <rect class="day" width="15" height="15" x="-1" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(360, 0)">
                                            <rect class="day" width="15" height="15" x="-2" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(378, 0)">
                                            <rect class="day" width="15" height="15" x="-3" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(396, 0)">
                                            <rect class="day" width="15" height="15" x="-4" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(414, 0)">
                                            <rect class="day" width="15" height="15" x="-5" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(432, 0)">
                                            <rect class="day" width="15" height="15" x="-6" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(450, 0)">
                                            <rect class="day" width="15" height="15" x="-7" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(468, 0)">
                                            <rect class="day" width="15" height="15" x="-8" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(486, 0)">
                                            <rect class="day" width="15" height="15" x="-9" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(504, 0)">
                                            <rect class="day" width="15" height="15" x="-10" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(522, 0)">
                                            <rect class="day" width="15" height="15" x="-11" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
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
                                        <g transform="translate(0, 0)">
                                            <rect class="day" width="15" height="15" x="18" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
                                        </g>
                                        <g transform="translate(18, 0)">
                                            <rect class="day" width="15" height="15" x="17" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-07"></rect>
                                        </g>
                                        <g transform="translate(36, 0)">
                                            <rect class="day" width="15" height="15" x="16" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-14"></rect>
                                        </g>
                                        <g transform="translate(54, 0)">
                                            <rect class="day" width="15" height="15" x="15" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-21"></rect>
                                        </g>
                                        <g transform="translate(72, 0)">
                                            <rect class="day" width="15" height="15" x="14" y="0" fill="#ebedf0" data-count="0" data-date="2017-05-28"></rect>
                                        </g>
                                        <g transform="translate(90, 0)">
                                            <rect class="day" width="15" height="15" x="13" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-04"></rect>
                                        </g>
                                        <g transform="translate(108, 0)">
                                            <rect class="day" width="15" height="15" x="12" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-11"></rect>
                                        </g>
                                        <g transform="translate(126, 0)">
                                            <rect class="day" width="15" height="15" x="11" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-18"></rect>
                                        </g>
                                        <g transform="translate(144, 0)">
                                            <rect class="day" width="15" height="15" x="10" y="0" fill="#ebedf0" data-count="0" data-date="2017-06-25"></rect>
                                        </g>
                                        <g transform="translate(162, 0)">
                                            <rect class="day" width="15" height="15" x="9" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(180, 0)">
                                            <rect class="day" width="15" height="15" x="8" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(198, 0)">
                                            <rect class="day" width="15" height="15" x="7" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(216, 0)">
                                            <rect class="day" width="15" height="15" x="6" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(234, 0)">
                                            <rect class="day" width="15" height="15" x="5" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(252, 0)">
                                            <rect class="day" width="15" height="15" x="4" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(270, 0)">
                                            <rect class="day" width="15" height="15" x="3" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(288, 0)">
                                            <rect class="day" width="15" height="15" x="2" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(306, 0)">
                                            <rect class="day" width="15" height="15" x="1" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(324, 0)">
                                            <rect class="day" width="15" height="15" x="0" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(342, 0)">
                                            <rect class="day" width="15" height="15" x="-1" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(360, 0)">
                                            <rect class="day" width="15" height="15" x="-2" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(378, 0)">
                                            <rect class="day" width="15" height="15" x="-3" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(396, 0)">
                                            <rect class="day" width="15" height="15" x="-4" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(414, 0)">
                                            <rect class="day" width="15" height="15" x="-5" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(432, 0)">
                                            <rect class="day" width="15" height="15" x="-6" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(450, 0)">
                                            <rect class="day" width="15" height="15" x="-7" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(468, 0)">
                                            <rect class="day" width="15" height="15" x="-8" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(486, 0)">
                                            <rect class="day" width="15" height="15" x="-9" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(504, 0)">
                                            <rect class="day" width="15" height="15" x="-10" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
                                        <g transform="translate(522, 0)">
                                            <rect class="day" width="15" height="15" x="-11" y="0" fill="#c6e48b" data-count="1" data-date="2017-07-02"></rect>
                                        </g>
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