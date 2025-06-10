<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="modal" id="id_modal_login">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title"></h5>
				<button class="btn-close" data-bs-dismiss="modal">
				</button>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
				  <form id="id_form_login" method="POST">
					<input type="text" id="id_seq" name="seq" style="display: none;"/>
					<div class="row">
						<label class="col-2 fw-bold">id</label>
						<div class="col-10">
							<input type="text" id="id_id" name="cmdXsearchId" class="form-control form-control-sm"/>
						</div>
					</div>
					
					<div class="row mt-1">
						<label class="col-2 fw-bold">name</label>
						<div class="col-10">
							<input type="text" id="id_name" name="cmdXsearchName" class="form-control form-control-sm"/>
						</div>
					</div>
					
					<div class="row mt-1">
						<label class="col-2 fw-bold">pw</label>
						<div class="col-10">
							<input type="password" id="id_pw" name="cmdXsearchPw" class="form-control form-control-sm"/>
						</div>
					</div>

					<div class="row mt-1">
						<label class="col-2 fw-bold">auth</label>
						<div class="col-10">
							<input type="text" id="id_auth" name="colAuth" class="form-control form-control-sm"/>
						</div>
					</div>
					</form>
				</div>
			</div>

			<div class="modal-footer">
				<button class="btn btn-sm btn-danger" id="id_btn_delete"><spring:message code="msg.del"/></button>
				<button class="btn btn-sm btn-primary" id="id_btn_confirm"></button>
				<button class="btn btn-sm btn-secondary" data-bs-dismiss="modal"><spring:message code="msg.cancel" /></button>
			</div>

		</div>
	</div>
</div>
