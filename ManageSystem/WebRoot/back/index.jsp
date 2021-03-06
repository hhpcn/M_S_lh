<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>

<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>欢迎进入管理系统</title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!--[if !IE]> -->
		<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/pace.min.css" />

		<script data-pace-options='{ "ajax": true, "document": true, "eventLag": false, "elements": false }' src="<%=basePath %>/common/ace/dist/js/pace.min.js"></script>

		<!-- <![endif]-->

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath %>/common/boostrapvalidator/dist/css/bootstrapValidator.css" />
		
		<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/ace-fonts.min.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="<%=basePath %>/common/ace/dist/css/ace-ie.min.css" />
		<![endif]-->

		<!-- ace settings handler -->
		<script src="<%=basePath %>/common/ace/dist/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="<%=basePath %>/common/ace/dist/js/html5shiv.min.js"></script>
		<script src="<%=basePath %>/common/ace/dist/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="#" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							管理系统
						</small>
					</a>

					<!-- /section:basics/navbar.layout.brand -->

					<!-- #section:basics/navbar.toggle -->

					<!-- /section:basics/navbar.toggle -->
				</div>

				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						

						
						<!-- #section:basics/navbar.user_menu -->
						<li class="grey">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<%=basePath %>/common/ace/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info" Style="margin-top:8px;">
									<%=session.getAttribute("userName") %>
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								


								<li>
									<a href="#" onclick="quit()">
										<i class="ace-icon fa fa-power-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar                  responsive">
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<!-- #section:basics/sidebar.layout.shortcuts -->
						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>

						<!-- /section:basics/sidebar.layout.shortcuts -->
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li class="">
						<a data-url="page/index" href="#page/index">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> 系统 </span>
						</a>

						<b class="arrow"></b>
					</li>
					
					<!-- <li class="">
						<a data-url="page/user" href="#page/user">
							<i class="menu-icon fa fa-list-alt"></i>
							<span class="menu-text"> 用户管理 </span>
						</a>

						<b class="arrow"></b>
					</li> -->
					
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> 产品管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a data-url="page/product" href="#page/product">
									<i class="menu-icon fa fa-caret-right"></i>
									产品
								</a>

								<b class="arrow"></b>
							</li>

							
						</ul>
						
						<ul class="submenu">
							<li class="">
								<a data-url="page/kind" href="#page/kind">
									<i class="menu-icon fa fa-caret-right"></i>
									产品种类
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
						
						<ul class="submenu">
							<li class="">
								<a data-url="page/category" href="#page/category">
									<i class="menu-icon fa fa-caret-right"></i>
									栏目管理
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
						
						
					</li>

					
				</ul><!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

				<!-- /section:basics/sidebar.layout.minimize -->
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<div class="main-content-inner">
					<!-- #section:basics/content.breadcrumbs -->
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">主页</a>
							</li>
						</ul><!-- /.breadcrumb -->

						<!-- #section:basics/content.searchbox -->
						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->

						<!-- /section:basics/content.searchbox -->
					</div>

					<!-- /section:basics/content.breadcrumbs -->
					<div class="page-content">
						<!-- #section:settings.box -->
						<div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<!-- #section:settings.skins -->
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; Choose Skin</span>
									</div>

									<!-- /section:settings.skins -->

									<!-- #section:settings.navbar -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
										<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
									</div>

									<!-- /section:settings.navbar -->

									<!-- #section:settings.sidebar -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
										<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
									</div>

									<!-- /section:settings.sidebar -->

									<!-- #section:settings.breadcrumbs -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
										<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
									</div>

									<!-- /section:settings.breadcrumbs -->

									<!-- #section:settings.rtl -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
										<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
									</div>

									<!-- /section:settings.rtl -->

									<!-- #section:settings.container -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
										<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
									</div>

									<!-- /section:settings.container -->
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<!-- #section:basics/sidebar.options -->
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
										<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
										<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
										<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
									</div>

									<!-- /section:basics/sidebar.options -->
								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->

						<!-- /section:settings.box -->
						<div class="page-content-area" data-ajax-content="true">
							<!-- ajax content goes here -->
						</div><!-- /.page-content-area -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120">
							
							福州战凯军科贸易有限公司  &copy; 2013-2014
							<span class="blue bolder">LH</span>
						</span>

						&nbsp; &nbsp;
						
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=basePath %>/common/ace/dist/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<%=basePath %>/common/ace/dist/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=basePath %>/common/ace/dist/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
			function quit(){
				$.post("/ManageSystem/personnel/userAction_quit.action",function(data){
					if(data==true){
						window.location.href="<%=basePath %>/login.jsp";
					}
				});
			}
		</script>
		<script src="<%=basePath %>/common/ace/dist/js/bootstrap.min.js"></script>
		<script src="<%=basePath %>/common/boostrapvalidator/dist/js/bootstrapValidator.min.js"></script>
		<!-- ace scripts -->
		<script src="<%=basePath %>/common/ace/assets/js/ace/elements.scroller.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/elements.fileinput.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/elements.typeahead.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/elements.spinner.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/elements.treeview.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/elements.wizard.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/elements.aside.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.ajax-content.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.touch-drag.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.sidebar.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.sidebar-scroll-1.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.submenu-hover.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.widget-box.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.settings.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.settings-rtl.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.settings-skin.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.widget-on-reload.js"></script>
		<script src="<%=basePath %>/common/ace/assets/js/ace/ace.searchbox-autocomplete.js"></script>
	</body>
</html>
