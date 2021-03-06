<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>


<title>产品管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<%-- <link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/jquery-ui.css" /> --%>

<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/datepicker.min.css" />
<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/daterangepicker.min.css" />
<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/bootstrap-datetimepicker.min.css" />
<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/ui.jqgrid.min.css" />
<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/dropzone.min.css" />
<!-- ajax layout which only needs content area -->
	<!-- <div class="page-header">
							<h1>
								jqGrid
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									Dynamic tables and grids using jqGrid plugin
								</small>
							</h1>
	</div> -->
	<!-- /.page-header -->

<script src="<%=basePath %>/common/ckeditor/ckeditor.js"></script>	
<script>
//解决bootrap模态框和ckeditor弹窗的冲突    
$.fn.modal.Constructor.prototype.enforceFocus = function () {
    modal_this = this;
    $(document).on('focusin.modal', function (e) {
        if (modal_this.$element[0] !== e.target && !modal_this.$element.has(e.target).length
        &&
        !$(e.target.parentNode).hasClass('cke_dialog_ui_input_select') && !$(e.target.parentNode).hasClass('cke_dialog_ui_input_text')) {
            modal_this.$element.focus();
        }
    });
};
</script>





<div class="row">
	<div class="col-xs-12">
		<!-- PAGE CONTENT BEGINS -->

		<table id="grid-table-product"></table>

		<div id="grid-pager-product"></div>
		
		<script type="text/javascript">
			var $path_base = "../..";//in Ace demo this will be used for editurl parameter
		</script>

		<!-- PAGE CONTENT ENDS -->
	</div><!-- /.col -->
</div><!-- /.row -->



<!----------------- 添加产品开始--------------------------- -->
<div  id="addProductmodal" class="modal fade bs-example-modal-lg"  role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">
				<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i> 添加产品
			</h4>
	     </div>
      <div class="modal-body">
             <div class="row">
             	<form id="addProductform" class="form-horizontal" role="form">
		             		<!-- #section:elements.form -->
		            <input name="id" value="" style="display:none;"/>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 产品名称 ：</label>
						<div class="col-sm-4">
							<input name="productName" type="text"  placeholder="产品名称" class="col-xs-10 col-sm-9" />
						</div>
					
						<label class="col-sm-2 control-label no-padding-right" > 产品编号： </label>
		
						<div class="col-sm-4">
							<input name="productNo" type="text"  placeholder="产品编号" class="col-xs-10 col-sm-9" />
						</div>
						
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 价格： </label>
						<div class="col-sm-4">
							<input name="price" type="text"  placeholder="价格" class="col-xs-10 col-sm-9" />
						</div>
						<label class="col-sm-2 control-label no-padding-right" > 库存： </label>
						<div class="col-sm-4">
							<input name="stock" type="text"  placeholder="库存" class="col-xs-10 col-sm-9" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 品牌： </label>
						<div class="col-sm-4">
							<select id="brand" name="brand" class=" col-xs-10 col-sm-9"  autocomplete="off" data-placeholder="选择一个品牌">
										<option value="0"> abl0 </option>
										<option value="1">Alabama1</option>
										<option value="2">Alaska2</option>
										<option value="3">Arizona3</option>
							</select>
						</div>
						
						<label class="col-sm-2 control-label no-padding-right" > 优先级： </label>
						<div class="col-sm-4">
							<input name="priority" type="text"  placeholder="优先级" class="col-xs-10 col-sm-9" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" >  栏目： </label>
						<div class="col-sm-4">
							<select id="category" name="category" class=" col-xs-10 col-sm-9" autocomplete="off"  data-placeholder="选择类别">
										
							</select>
						</div>
						<label class="col-sm-2 control-label no-padding-right" >  类别： </label>
						<div class="col-sm-4">
							<select id="kind" name="kind" class=" col-xs-10 col-sm-9" autocomplete="off"  data-placeholder="选择类别">
										
							</select>
						</div>
						
						
					</div>
					<div class="form-group">
					
						<label class="col-sm-2 control-label no-padding-right" > 材质： </label>
						<div class="col-sm-4">
							<input name="material" type="text"  placeholder="材质" class="col-xs-10 col-sm-9" />
						</div>
					
						<label class="col-sm-2 control-label no-padding-right" > 是否发布： </label>
						<div class="col-sm-4">
							<div class="control-group">
							  <div class="radio" >
								<div class="col-sm-3">
								<label>
								<input class="ace" type="radio" value="true" name="isPublish" checked="checked">
								<span class="lbl">是</span>
								</label>
								</div>
								<div class="col-sm-3">
								<label>
								<input class="ace" type="radio" value="false" name="isPublish">
								<span class="lbl">否</span>
								</label>
								</div>
							 </div>
						   </div>
						</div>
						
						
						
						
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 创建时间： </label>
						<div class="col-sm-4">
							<div class="input-group">
									<input name="createTime" id="createTime" type="text" class="form-control"  />
									<span class="input-group-addon">
										<i class="fa fa-clock-o bigger-90"></i>
									</span>
							</div>
						</div>
					</div>
					
					
					
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > URL： </label>
						<div class="col-sm-10">
							<input name="url" type="text"  placeholder="URL" class="col-xs-10 col-sm-9" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 引导图： </label>
						<div class="col-sm-10">
							<input name="guideMap" type="text"  placeholder="引导图路径" class="col-xs-10 col-sm-9" />
						</div>
					</div>
             </form>
             </div>
             <div class="row">
				<div class="col-sm-12">
					<form action="/ManageSystem/ckeditorUploadAction_uploadGuideImg.action" class="dropzone" id="dropzone">
						<div class="fallback">
							<input name="guideImg"  id="guideImg" type="file"  />
						</div>
					</form>
				</div>
				
             </div>
             <!-- 详细信息 -->
             <div class="row">
             	<div class="form-group">
					      <label style="margin-left:20px;" class="col-sm-12 " for="form-field-1">详细信息： </label>
						<div class="col-sm-12">
							<textarea name="detailInfo" id="editor1" rows="20" cols="80">
				                
				            </textarea>
			            </div>
					</div>
             </div>
	         <script>
	                CKEDITOR.replace( 'editor1' );
	         </script>
       
      </div>
      <div class="modal-footer" style="height:55px;">
	        <button id="cancleAddProduct" type="button" class="btn btn-white btn-info btn-round" data-dismiss="modal">
	        	<i class="ace-icon fa fa-times  red2"></i>取消
	        </button>
	        <button id="saveProduct" type="button" class="btn btn-white btn-info btn-round" >
	        	<i class="ace-icon fa fa-floppy-o  blue"></i>保存
	        </button>
	        
      </div>
    </div>
  </div>
</div>
<!----------------- 添加产品结束--------------------------- -->




<!----------------- 更新产品开始--------------------------- -->
<div  id="editProductmodal" class="modal fade bs-example-modal-lg"  role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title">
				<i class="ace-icon fa fa-hand-o-right icon-animated-hand-pointer blue"></i> 编辑产品
			</h4>
	     </div>
      <div class="modal-body">
             <div class="row">
             	<form id="editProductform" class="form-horizontal" role="form">
		             		<!-- #section:elements.form -->
		            <input name="id" value="" style="display:none;"/>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 产品名称 ：</label>
						<div class="col-sm-4">
							<input name="productName" type="text"  placeholder="产品名称" class="col-xs-10 col-sm-9" />
						</div>
						<label class="col-sm-2 control-label no-padding-right" > 产品编号： </label>
		
						<div class="col-sm-4">
							<input name="productNo" type="text"  placeholder="产品编号" class="col-xs-10 col-sm-9" />
						</div>
						
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 价格： </label>
						<div class="col-sm-4">
							<input name="price" type="text"  placeholder="价格" class="col-xs-10 col-sm-9" />
						</div>
						<label class="col-sm-2 control-label no-padding-right" > 库存： </label>
						<div class="col-sm-4">
							<input name="stock" type="text"  placeholder="库存" class="col-xs-10 col-sm-9" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 品牌： </label>
						<div class="col-sm-4">
							<select id="editbrand" name="brand" class=" col-xs-10 col-sm-9"  autocomplete="off" data-placeholder="选择一个品牌">
										<option value="0"> abl0 </option>
										<option value="1">Alabama1</option>
										<option value="2">Alaska2</option>
										<option value="3">Arizona3</option>
							</select>
						</div>
						<label class="col-sm-2 control-label no-padding-right" > 优先级： </label>
						<div class="col-sm-4">
							<input name="priority" type="text"  placeholder="优先级" class="col-xs-10 col-sm-9" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" >  栏目： </label>
						<div class="col-sm-4">
							<select id="editcategory" name="category" class=" col-xs-10 col-sm-9" autocomplete="off"  data-placeholder="选择类别">
										
							</select>
						</div> 
						
						<label class="col-sm-2 control-label no-padding-right" >  类别： </label>
						<div class="col-sm-4">
							<select id="editkind" name="kind" class=" col-xs-10 col-sm-9" autocomplete="off"  data-placeholder="选择类别">
									
							</select>
						</div>
						
					</div>
					<div class="form-group">
					
						<label class="col-sm-2 control-label no-padding-right" > 材质： </label>
						<div class="col-sm-4">
							<input name="material" type="text"  placeholder="材质" class="col-xs-10 col-sm-9" />
						</div>
					
					
					
						<label class="col-sm-2 control-label no-padding-right" > 是否发布： </label>
						<div class="col-sm-4">
							<div class="control-group">
							  <div class="radio" >
								<div class="col-sm-3">
								<label>
								<input class="ace" type="radio" value="true" name="isPublish" checked="checked">
								<span class="lbl">是</span>
								</label>
								</div>
								<div class="col-sm-3">
								<label>
								<input class="ace" type="radio" value="false" name="isPublish">
								<span class="lbl">否</span>
								</label>
								</div>
							 </div>
						   </div>
						</div>
						
						
					</div>
					
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 创建时间： </label>
						<div class="col-sm-4">
							<div class="input-group">
									<input name="createTime" id="editcreateTime" type="text" class="form-control"  />
									<span class="input-group-addon">
										<i class="fa fa-clock-o bigger-90"></i>
									</span>
							</div>
						</div>
					</div>
					
					
					
					
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > URL： </label>
						<div class="col-sm-10">
							<input name="url" type="text"  placeholder="URL" class="col-xs-10 col-sm-9" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label no-padding-right" > 引导图： </label>
						<div class="col-sm-10">
							<input name="guideMap" type="text"  placeholder="引导图路径" class="col-xs-10 col-sm-9" />
						</div>
					</div>
             </form>
             </div>
             <div class="row">
				<div class="col-sm-12">
					<form action="/ManageSystem/ckeditorUploadAction_uploadGuideImg.action" class="dropzone" id="editdropzone">
						<div class="fallback">
							<input name="guideImg"  id="editguideImg" type="file"  />
						</div>
					</form>
				</div>
				
             </div>
             <!-- 详细信息 -->
             <div class="row">
             	<div class="form-group">
					      <label style="margin-left:20px;" class="col-sm-12 " for="form-field-1">详细信息： </label>
						<div class="col-sm-12">
							<textarea name="detailInfo" id="editInformation" rows="20" cols="80">
				                
				            </textarea>
			            </div>
					</div>
             </div>
	         <script>
	                CKEDITOR.replace( 'editInformation' );
	         </script>
       
      </div>
      <div class="modal-footer" style="height:55px;">
	        <button id="cancleEditProduct" type="button" class="btn btn-white btn-info btn-round" data-dismiss="modal">
	        	<i class="ace-icon fa fa-times  red2"></i>取消
	        </button>
	        <button id="saveEditProduct" type="button" class="btn btn-white btn-info btn-round" >
	        	<i class="ace-icon fa fa-floppy-o  blue"></i>保存
	        </button>
	        
      </div>
    </div>
  </div>
</div>
<!----------------- 更新产品结束--------------------------- -->





















<!-- page specific plugin scripts -->
<script src="<%=basePath %>/js/back/product.js"></script>
