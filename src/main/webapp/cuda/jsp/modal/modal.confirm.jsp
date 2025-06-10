<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="modal fade" id="id-modal-confirm">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">
					<spring:message code="msg.confirm"/>
				</h5>
                <button class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<h6><span id="id_text">계속 진행하시려면</span><span>&nbsp;확인 버튼을 눌러 주세요</span></h6>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-sm btn-primary" id="id_btn_confirm" >
					<spring:message code="msg.confirm"/>
				</button>
				<button class="btn btn-sm btn-secondary" data-bs-dismiss="modal">
					<spring:message code="msg.cancel"/>
				</button>
			</div>
		</div>
	</div>
</div>