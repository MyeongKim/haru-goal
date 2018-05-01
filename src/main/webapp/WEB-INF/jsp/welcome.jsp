<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
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

        .todo-calendar {
            text-align: center;
        }

        .todo-title {
            line-height: 15px;
        }

        .modal {
            text-align: center;
            padding: 0!important;
        }

        .modal:before {
            content: '';
            display: inline-block;
            height: 100%;
            vertical-align: middle;
            margin-right: -4px;
        }

        .modal-dialog {
            display: inline-block;
            text-align: left;
            vertical-align: middle;
        }

        .modal-body {
            overflow: hidden;
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
                    <button class="btn-add-to-do" data-toggle="modal" data-target="#exampleModal">+</button>
                    <ul id="sortable" class="list-unstyled">
                        <li class="ui-state-default">
                            <div class="col-md-6 todo-title">
                                CNN 영어 공부
                            </div>
                            <div class="col-md-6 todo-calendar">
                                <svg width="508" height="50" class="calendar-graph-svg">
                                    <g transform="translate(-18, 0)">
                                        <c:forEach begin="0" end="${period}" varStatus="loop">
                                            <g transform="translate(${loop.index * 18}, 0)">
                                                <rect class="day" width="15" height="15" x="${18-loop.index}" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
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
                                            <g transform="translate(${loop.index * 18}, 0)">
                                                <rect class="day" width="15" height="15" x="${18-loop.index}" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
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
                                            <g transform="translate(${loop.index * 18}, 0)">
                                                <rect class="day" width="15" height="15" x="${18-loop.index}" y="0" fill="#c6e48b" data-count="11" data-date="2017-04-30"></rect>
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

<%--목표 추가 모달--%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">새 목표 추가하기</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <label for="goal-title" class="col-form-label">목표:</label>
                        <input type="text" name="title" class="form-control" id="goal-title">
                    </div>
                    <div class="form-group">
                        <label for="goal-compensation" class="col-form-label">달성 시 보상:</label>
                        <textarea class="form-control" name="compensation" id="goal-compensation"></textarea>
                    </div>
                    <div class="pull-right">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-primary">저장</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%--footer--%>
<footer class="footer">
    <div class="container">
        <span class="text-muted">Haru-goal 에 대해</span>
    </div>
</footer>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>