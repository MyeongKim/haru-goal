<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--목표 추가 모달--%>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">새 목표 추가하기</h3>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <label for="goal-title" class="col-form-label">목표:</label>
                        <input type="text" name="title" class="form-control" id="goal-title">
                    </div>
                    <div class="form-group">
                        <label for="goal-compensation" class="col-form-label">내용:</label>
                        <textarea class="form-control" name="compensation" id="goal-compensation" placeholder="상세 내용 및 보상을 입력하세요." rows="5"></textarea>
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