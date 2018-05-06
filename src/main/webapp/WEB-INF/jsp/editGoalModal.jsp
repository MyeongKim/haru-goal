<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--목표 편집 모달--%>
<div class="modal fade" id="editGoalModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">목표 편집하기</h3>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <label for="goal-title" class="col-form-label">목표:</label>
                        <input type="text" name="title" class="form-control" id="goal-title" value="영어 공부">
                    </div>
                    <div class="form-group">
                        <label for="goal-compensation" class="col-form-label">내용:</label>
                        <textarea class="form-control" name="compensation" id="goal-compensation" placeholder="상세 내용 및 보상을 입력하세요." rows="5" >매일매일 아침에 cnn 방송 듣고 딕테이션 하기.&#13;&#10;ebs 영어 강의도 시간 나면 듣기!&#13;&#10;보상은 새 신발 사기~</textarea>
                    </div>
                    <div class="pull-right">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-primary">저장</button>
                        <button type="submit" class="btn btn-danger">목표 삭제</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>