<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<div class="container">
    <div class="starter-template">
        <div class="row">
            <div class="col-md-12">
                <div class="move">
                    <div class="goal-info">
                        <h3>영어 공부<a href="#" data-toggle="modal" data-target="#editGoalModal"><span class="glyphicon glyphicon-pencil"></span></a></h3>
                        <div class="goal-info-detail">
                            <span>매일매일 아침에 cnn 방송 듣고 딕테이션 하기.<br> ebs 영어 강의도 시간 나면 듣기! <br> 보상은 새 신발 사기~ </span>
                        </div>
                    </div>
                    <div class="goal-move">
                        <c:forEach begin="0" end="0" varStatus="loop">
                            <div class="row">
                                <div class="col-sm-4 col">
                                    <div class="goal-daily goal-daily-box-new"><span>05/04</span></div>
                                </div>
                                <div class="col-sm-4 col">
                                    <div class="goal-daily goal-daily-box-completed"><span>05/03</span></div>
                                </div>
                                <div class="col-sm-4 col">
                                    <div class="goal-daily goal-daily-box-uncompleted"><span>05/02</span></div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:forEach begin="0" end="8" varStatus="loop">
                            <div class="row">
                                <div class="col-sm-4 col">
                                    <div class="goal-daily goal-daily-box-inactive"><span>-</span></div>
                                </div>
                                <div class="col-sm-4 col">
                                    <div class="goal-daily goal-daily-box-inactive"><span>-</span></div>
                                </div>
                                <div class="col-sm-4 col">
                                    <div class="goal-daily goal-daily-box-inactive"><span>-</span></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file = "editGoalModal.jsp" %>
<%@ include file = "dailyGoalModal.jsp" %>
<%@ include file = "footer.jsp" %>
