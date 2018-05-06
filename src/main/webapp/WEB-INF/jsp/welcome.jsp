<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
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
                                <a href="#">CNN 영어 공부</a>
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
                                <a href="#">스쿼트 100개</a>
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
                                <a href="#">퇴근 후 15분 정리</a>
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
<%@ include file = "addGoalModal.jsp" %>
<%@ include file = "footer.jsp" %>
