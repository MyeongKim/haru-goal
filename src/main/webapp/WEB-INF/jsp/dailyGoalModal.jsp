<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--목표 편집 모달--%>
<div class="modal fade" id="dailyGoalModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">05/05</h3>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <label for="goal-daily-completed" class="col-form-label">달성 여부:</label>
                        <select class="form-control" id="goal-daily-completed">
                            <option>-</option>
                            <option>달성</option>
                            <option>미달성</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="goal-daily-description" class="col-form-label">진행 내용:</label>
                        <textarea class="form-control" name="compensation" id="goal-daily-description" placeholder="진행 내용을 입력하세요." rows="5" >아침 6시에 기상해서 ebs 영어 강의 3강 수강하고&#13;&#10;출근하면서 cnn 뉴스 방송 청쥐함!</textarea>
                        <div class="input-group">
                            <span class="input-group-btn">
                                <span class="btn btn-default btn-file">
                                    사진 업로드<input type="file" id="imgInp">
                                </span>
                            </span>
                            <input type="text" class="form-control" readonly>
                        </div>
                        <img id='img-upload'/>
                    </div>
                    <p>최종 수정일 : 2018-05-05 15:30</p>
                    <div class="pull-right">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                        <button type="submit" class="btn btn-primary">저장</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>