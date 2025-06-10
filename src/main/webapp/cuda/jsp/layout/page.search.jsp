<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-2">
	<div class="row">
		<div class="col-7">
			<div class="input-group input-group-sm">
				<span class="input-group-text">줄수</span>		
				<select name="colXsearchLine" id="id_search_line" class="form-select">
					<option value="10">10</option>
					<option value="20">20</option>
					<option value="30">30</option>
					<option value="50">50</option>
					<option value="100">100</option>
					<option value="300">300</option>
					<option value="500">500</option>
				</select>
			</div>
		</div>
	</div>
</div>

<!-- 
<div class="col-2">
	<div class="row">
		<div class="offset-4 col-8">
			<div class="input-group input-group-sm">
				<input id="id_reg_date_from" type="text" class="form-control" name="xsearchDateFrom" placeholder="등록일"/>
				<span class="input-group-text">부터</span>		
			</div>
		</div>
	</div>
</div>

<div class="col-2">
	<div class="row">
		<div class="col-8">
			<div class="input-group input-group-sm">
				<input id="id_reg_date_to" type="text" class="form-control" name="xsearchDateTo" placeholder="등록일"/>
				<span class="input-group-text">까지</span>		
			</div>
		</div>
	</div>
</div>
-->

<div class="col-1">
	<button type="button" class="btn btn-sm btn-outline-secondary form-control" onclick="_Paging.xSubmit(Define.PAGE_0, Define.STR_BLANK, _SortEx.value());">찾기</button>
</div>