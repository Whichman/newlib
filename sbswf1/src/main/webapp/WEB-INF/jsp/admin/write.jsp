<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>写文章</title>

		<link href="${ctx}/static/inspinia/css/bootstrap.min.css" rel="stylesheet">
	    <link href="${ctx}/static/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">
	    <link href="${ctx}/static/inspinia/css/animate.css" rel="stylesheet">
	    <link href="${ctx}/static/inspinia/css/plugins/summernote/summernote.css" rel="stylesheet">
	    <link href="${ctx}/static/inspinia/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
	    <link href="${ctx}/static/inspinia/css/style.css" rel="stylesheet">
	    <link href="${ctx}/static/inspinia/css/mycss.css" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="${ctx}/static/inspinia/img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.html">Profile</a></li>
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="mailbox.html">Mailbox</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li class="active">
                    <a href="write"><i class="fa fa-eyedropper"></i> <span class="nav-label">文章</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                    	<li><a href="${ctx}/article">所有文章</a></li>
                        <li class="active"><a href="${ctx}/article/write">写文章</a></li>
                        <li><a href="${ctx}/article/category">分类目录</a></li>
                        <li><a href="${ctx}/article/tag">标签</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="ecommerce_products_grid.html">Products grid</a></li>
                        <li><a href="ecommerce_product_list.html">Products list</a></li>
                        <li><a href="ecommerce_product.html">Product edit</a></li>
                        <li><a href="ecommerce_product_detail.html">Product detail</a></li>
                        <li><a href="ecommerce-orders.html">Orders</a></li>
                        <li><a href="ecommerce_payments.html">Credit Card form</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-picture-o"></i> <span class="nav-label">Gallery</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="basic_gallery.html">Lightbox Gallery</a></li>
                        <li><a href="slick_carousel.html">Slick Carousel</a></li>
                        <li><a href="carousel.html">Bootstrap Carousel</a></li>

                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-sitemap"></i> <span class="nav-label">Menu Levels </span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a href="#">Third Level <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level Item</a>
                                </li>

                            </ul>
                        </li>
                        <li><a href="#">Second Level Item</a></li>
                        <li>
                            <a href="#">Second Level Item</a></li>
                        <li>
                            <a href="#">Second Level Item</a></li>
                    </ul>
                </li>
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to INSPINIA+ Admin Theme.</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="${ctx}/static/inspinia/img/a7.jpg">
                                </a>
                                <div class="media-body">
                                    <small class="pull-right">46h ago</small>
                                    <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="mailbox.html">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul>

        </nav>
        </div>
        <form action="${ctx}/article/writesave" method="post" id="myForm">
        <div class="row wrapper page-heading">
       				<h2 style = "padding-left:15px;margin-bottom: 20px;">
                    	撰写新文章
                    </h2>
             <div class="col-lg-9">
                    <div id="titlewrap">
						<input type="text" size="30" placeholder="在此输入标题" name="postTitle" id="title" autofocus="autofocus">
					</div>
					<div id="edit-slug-box" class="hide-if-no-js">
					</div>
					<div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>文章编辑器</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <textarea style="display:none" name="postContent" id="postContent"></textarea>
                    <div class="ibox-content no-padding">
                        <div class="summernote">
                            
                        </div> 
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
            	<div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>发布</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <button>保存草稿</button>
                        <button style = "float:right">预览</button>
                        <p class = "p1">状态</p>
                        <p class = "p1">公开度</p>
                        <p class = "p1">立即发布</p>
                    	<p class = "text-right"><a href="javascript:submitForm();" class="btn btn-success">发布</a></p>
                    </div>
				</div>
				<div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>形式</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                                <div class="form-group" id="toastTypeGroup">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="toasts" value="标准" checked="">标准
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label class="radio">
                                            <input type="radio" name="toasts" value="日志">日志
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label class="radio">
                                            <input type="radio" name="toasts" value="图像">图像
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label class="radio">
                                            <input type="radio" name="toasts" value="视频">视频
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label class="radio">
                                            <input type="radio" name="toasts" value="音频">音频
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label class="radio">
                                            <input type="radio" name="toasts" value="引语">引语
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label class="radio">
                                            <input type="radio" name="toasts" value="链接">链接
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label class="radio">
                                            <input type="radio" name="toasts" value="相册">相册
                                        </label>
                                    </div>
                                </div>
                            </div>
				</div>
				<div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>分类目录</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                        <div class="ibox-content">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true">所有分类目录</a></li>
                            <li class=""><a data-toggle="tab" href="#tab-2" aria-expanded="false">最常用</a></li>
                        </ul>
                        <div class="tab-content">
                            <div id="tab-1" class="tab-pane active">
                                <div class="panel-body">
                                    
                                </div>
                            </div>
                            <div id="tab-2" class="tab-pane">
                                <div class="panel-body">
                                   
                                </div>
                            </div>
                        </div>
                    	</div>
                    </div>
                </div> 
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>标签</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                     <div class="ibox-content">
                     	<div class="inside">
						<div class="tagsdiv" id="post_tag">
							<div class="jaxtag">
						 		<div class="ajaxtag hide-if-no-js">
								<label class="screen-reader-text" for="new-tag-post_tag">添加新标签</label>
								<p><input type="text" id="new-tag-post_tag" name="newtag[post_tag]" class="newtag form-input-tip" size="16" autocomplete="off" aria-describedby="new-tag-post_tag-desc" value="">
								<input type="button" class="button tagadd" value="添加"></p>
							</div>
							<p class="howto" id="new-tag-post_tag-desc">多个标签请用英文逗号（,）分开</p>
								</div>
							<div class="tagchecklist"></div>
						</div>
							<p class="hide-if-no-js"><a href="#titlediv" class="tagcloud-link" id="link-post_tag">从常用标签中选择</a></p>
						</div>
                     </div>
				</div>
				<div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>特色图片</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content"> 
	                    <div class="inside">
							<p><a href="">设为特色图像</a></p>
						</div>
					</div>
				</div>                      
            </div>
        </div>
        </form>
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2015
            </div>
        </div>
        </div>
       
        </div>


    <!-- Mainly scripts -->
    <script src="${ctx}/static/inspinia/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/static/inspinia/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${ctx}/static/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${ctx}/static/inspinia/js/inspinia.js"></script>
    <script src="${ctx}/static/inspinia/js/plugins/pace/pace.min.js"></script>

    <!-- SUMMERNOTE -->
    <script src="${ctx}/static/inspinia/js/plugins/summernote/summernote.min.js"></script>

   <script>
        $(document).ready(function(){

            $('.summernote').summernote({focus: true});

       });
        var save = function() {
            var aHTML = $('.summernote').code(); //save HTML If you need(aHTML: array).
            $("#postContent").html(aHTML);
            $('.summernote').destroy();
        };
        
        function submitForm(){
        	save();
        	
        	$("#myForm").submit();
        }
        
    </script>
</body>
</html>