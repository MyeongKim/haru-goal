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
        html {
            position: relative;
            min-height: 100%;
        }
        body {
            margin-bottom: 60px; /* Margin bottom by footer height */
            padding-right: 0px !important
        }
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px;
            line-height: 60px;
            background-color: #f5f5f5;
            text-align: center;
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

        .modal-open {
            overflow-y: auto;
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

        .modal-goal-delete {
            text-align: right;
            margin-bottom: 10px;
        }

        .goal-info h3{
            text-align: center;
        }

        .goal-info h3 span {
            margin-left: 15px;
            color: #a8a6aa;
        }

        .goal-info .goal-info-detail{
            width: max-content;
            margin: 20px auto 0;
        }

        .goal-move {
            padding-left: 100px;
            padding-right: 100px;
        }

        .goal-move .col {
            padding: 50px;
            margin: auto;
        }

        .goal-daily {
            max-width: 200px;
            border: 1.2px solid #D1C4E9;
            height: 100px;
            line-height: 100px;
            margin: auto;
            background-color: #EDE7F6;
            text-align: center;
            font-size: 20px;
            color: #B39DDB;
        }

        .goal-daily:hover {
            cursor: pointer;
        }

        .btn-file {
            position: relative;
            overflow: hidden;
        }
        .btn-file input[type=file] {
            position: absolute;
            top: 0;
            right: 0;
            min-width: 100%;
            min-height: 100%;
            font-size: 100px;
            text-align: right;
            filter: alpha(opacity=0);
            opacity: 0;
            outline: none;
            background: white;
            cursor: inherit;
            display: block;
        }

        #img-upload{
            width: 100%;
        }

        /*=====goal box css start=====*/
        .goal-daily:not(.goal-daily-box-inactive):hover {
            font-size: 25px;
        }

        .goal-daily-box-completed {
            background-color: #DCEDC8;
            border: 1.2px solid #C5E1A5;
            color: #9CCC65;
        }

        .goal-daily-box-uncompleted {
            background-color: #FFEBEE;
            border: 1.2px solid #FFCDD2;
            color: #EF9A9A;
        }

        .goal-daily-box-inactive {
            background-color: #EEEEEE;
            border: 1.2px solid #E0E0E0;
            color: #BDBDBD;
        }

        .goal-daily-box-inactive:hover {
            background-color: #EEEEEE;
            cursor: default;
        }

        /*=====goal box css end=====*/

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