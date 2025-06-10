<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="modal fade" id="id_modal_view_img">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">이미지</h5>
				<button class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
				<img id="id_img_src" class="img-fluid"></img>
			</div>
			<div class="modal-footer">
				<button class="btn btn-sm btn-secondary" data-bs-dismiss="modal"><spring:message code="msg.close"/></button>
			</div>
		</div>
	</div>
</div>