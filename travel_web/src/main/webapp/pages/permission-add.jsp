<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>数据 - AdminLTE2定制版</title>
<meta name="description" content="AdminLTE2定制版">
<meta name="keywords" content="AdminLTE2定制版">

<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">


<link rel="stylesheet"
	href="${basePath}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${basePath}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${basePath}/plugins/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="${basePath}/plugins/iCheck/square/blue.css">
<link rel="stylesheet"
	href="${basePath}/plugins/morris/morris.css">
<link rel="stylesheet"
	href="${basePath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<link rel="stylesheet"
	href="${basePath}/plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="${basePath}/plugins/daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="${basePath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="${basePath}/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${basePath}/plugins/treeTable/jquery.treetable.css">
<link rel="stylesheet"
	href="${basePath}/plugins/treeTable/jquery.treetable.theme.default.css">
<link rel="stylesheet"
	href="${basePath}/plugins/select2/select2.css">
<link rel="stylesheet"
	href="${basePath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${basePath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
<link rel="stylesheet"
	href="${basePath}/plugins/adminLTE/css/AdminLTE.css">
<link rel="stylesheet"
	href="${basePath}/plugins/adminLTE/css/skins/_all-skins.min.css">
<link rel="stylesheet"
	href="${basePath}/css/style.css">
<link rel="stylesheet"
	href="${basePath}/plugins/ionslider/ion.rangeSlider.css">
<link rel="stylesheet"
	href="${basePath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
<link rel="stylesheet"
	href="${basePath}/plugins/bootstrap-slider/slider.css">
<link rel="stylesheet"
	href="${basePath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

	<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
		<!-- 导航侧栏 /-->

		<!-- 内容区域 -->
		<div class="content-wrapper">

			<!-- 内容头部 -->
			<section class="content-header">
			<h1>
				权限管理 <small>权限表单</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${basePath}/index.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a href="${basePath}/permission/findAll.do">权限管理</a></li>
				<li class="active">权限表单</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

			<form action="${basePath}/permission/save.do"
				method="post">
				<!-- 正文区域 -->
				<section class="content"> <!--产品信息-->

				<div class="panel panel-default">
					<div class="panel-heading">权限信息</div>
					<div class="row data-type">

						<div class="col-md-2 title">权限名称</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="permissionName"
								placeholder="权限名称" value="">
						</div>
						<div class="col-md-2 title">URL</div>
						<div class="col-md-4 data">
							<input type="text" class="form-control" name="url"
								placeholder="URL" value="">
						</div>
										

					</div>
				</div>
				<!--订单信息/--> <!--工具栏-->
				<div class="box-tools text-center">
					<button type="submit" class="btn bg-maroon">保存</button>
					<button type="button" class="btn bg-default"
						onclick="history.back(-1);">返回</button>
				</div>
				<!--工具栏/--> </section>
				<!-- 正文区域 /-->
			</form>
		</div>
		<!-- 内容区域 /-->

		<!-- 底部导航 -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.8
			</div>
			<strong>Copyright &copy; 2019
				Email:gong993996@qq.com.
			</strong></footer>
		<!-- 底部导航 /-->

	</div>


	<script
		src="${basePath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
	<script
		src="${basePath}/plugins/jQueryUI/jquery-ui.min.js"></script>
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<script
		src="${basePath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${basePath}/plugins/raphael/raphael-min.js"></script>
	<script
		src="${basePath}/plugins/morris/morris.min.js"></script>
	<script
		src="${basePath}/plugins/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${basePath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${basePath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script
		src="${basePath}/plugins/knob/jquery.knob.js"></script>
	<script
		src="${basePath}/plugins/daterangepicker/moment.min.js"></script>
	<script
		src="${basePath}/plugins/daterangepicker/daterangepicker.js"></script>
	<script
		src="${basePath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
	<script
		src="${basePath}/plugins/datepicker/bootstrap-datepicker.js"></script>
	<script
		src="${basePath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
	<script
		src="${basePath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<script
		src="${basePath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<script
		src="${basePath}/plugins/fastclick/fastclick.js"></script>
	<script
		src="${basePath}/plugins/iCheck/icheck.min.js"></script>
	<script
		src="${basePath}/plugins/adminLTE/js/app.min.js"></script>
	<script
		src="${basePath}/plugins/treeTable/jquery.treetable.js"></script>
	<script
		src="${basePath}/plugins/select2/select2.full.min.js"></script>
	<script
		src="${basePath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
	<script
		src="${basePath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
	<script
		src="${basePath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
	<script
		src="${basePath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
	<script
		src="${basePath}/plugins/bootstrap-markdown/js/markdown.js"></script>
	<script
		src="${basePath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
	<script
		src="${basePath}/plugins/ckeditor/ckeditor.js"></script>
	<script
		src="${basePath}/plugins/input-mask/jquery.inputmask.js"></script>
	<script
		src="${basePath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script
		src="${basePath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<script
		src="${basePath}/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${basePath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<script
		src="${basePath}/plugins/chartjs/Chart.min.js"></script>
	<script
		src="${basePath}/plugins/flot/jquery.flot.min.js"></script>
	<script
		src="${basePath}/plugins/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${basePath}/plugins/flot/jquery.flot.pie.min.js"></script>
	<script
		src="${basePath}/plugins/flot/jquery.flot.categories.min.js"></script>
	<script
		src="${basePath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
	<script
		src="${basePath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
	<script
		src="${basePath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

	<script>
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

			// WYSIHTML5编辑器
			$(".textarea").wysihtml5({
				locale : 'zh-CN'
			});
		});

		// 设置激活菜单
		function setSidebarActive(tagUri) {
			var liObj = $("#" + tagUri);
			if (liObj.length > 0) {
				liObj.parent().parent().addClass("active");
				liObj.addClass("active");
			}
		}

	</script>
	

</body>

</html>