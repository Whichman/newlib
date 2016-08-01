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

    <title>文章</title>

    <link href="${ctx}/static/inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/static/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx}/static/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Data Tables -->
    <link href="${ctx}/static/inspinia/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="${ctx}/static/inspinia/css/plugins/dataTables/dataTables.responsive.css" rel="stylesheet">
    <link href="${ctx}/static/inspinia/css/plugins/dataTables/dataTables.tableTools.min.css" rel="stylesheet">

    <link href="${ctx}/static/inspinia/css/animate.css" rel="stylesheet">
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
                    	<li class="active"><a href="${ctx}/article">所有文章</a></li>
                        <li><a href="${ctx}/article/write">写文章</a></li>
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
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>文章
                    	<a href="${ctx}/article/write" class="page-title-action">写文章</a>
                    </h2>
                </div>
            </div>
        <form id="pageForm" action="${ctx}/article" method="POST">
        <div class="wrapper wrapper-content animated fadeInRight">
        	<div style = "text-align: right">
        	<form class="form-inline" role="search" action="${ctx}/write"
					method="post">
        		<div class="form-group">
					<input type="text" name="title"
							placeholder="Search" value="${title}">
							<button type="submit" class="btn btn-default">
					<span class="glyphicon glyphicon-search"> </span> 查 询
				</button>
				</div>
			</form>
         	</div>
         	
         <table class="table table-hover table-condensed table-bordered">
			<tr>
				<th style= "width:35%"><input id="checkbox1" type="checkbox"> <label for="checkbox1">标题</label></th>
				<th>作者</th>
				<th>分类目录</th>
				<th>评论次数</th>
				<th>日期</th>
			</tr>
			<c:forEach items="${newcommendpost}" var="c">
				<tr>
					<td>
						<div onMouseOver="show('${c.postId}')">
						 	<a id= "${c.postId}" href="${ctx}/article/edit/${c.postId}">${c.title}</a><br>
						</div>
						<div onMouseOver="show('${c.postId}+1')" onMouseOut="hide('${c.postId}+1')">
						 	<div id= "${c.postId}+1" style ="visibility: hidden;">
						 		<a href="${ctx}/article/edit/${c.postId}">编辑</a>|
								<a style = "color:red" href="${ctx}/article/totrash/${c.postId}">移至回收站</a>|
								<a href="${ctx}/article/detail/${c.postId}" target="_blank">查看</a>
							</div>
						</div>
					</td>
					<td><a href="">${c.authorName}</a></td>
					<td><a href="">${c.category}</a></td>
					<td><a href="">${c.commentCount}</a></td>
					<td>已发布<br><fmt:formatDate pattern="yyyy-MM-dd"
							value="${c.postDate}" /></td>
				</tr>
			</c:forEach>
		</table>
		<nav style="text-align: right;">
                    <ul class="pagination pagination-lg">
                        <!-- 上一页 -->                    
						<c:choose> 
						  <c:when test="${page.hasPrePage}"><li><a href="javascript:joshua.pageSubmit(${page.pageNum-1});" aria-label="Previous"><span aria-hidden="true">上一页</span></a></li></c:when> 
						  <c:otherwise><li class="disabled"><a aria-label="Previous"><span aria-hidden="true">上一页</span></a></li></c:otherwise> 
						</c:choose>
											
						<c:forEach begin="1" end="${page.pageCount}" step="1" varStatus="status">
						  <c:choose> 
						    <c:when test="${page.pageNum == status.count}"><li class="active"><a>${status.count}</a></li></c:when> 
						    <c:otherwise><li><a href="javascript:joshua.pageSubmit(${status.count});">${status.count}</a></li></c:otherwise> 
						  </c:choose>
						</c:forEach>
						                        
						<!-- 下一页 -->                        
						<c:choose> 
						  <c:when test="${page.hasNextPage}"><li><a href="javascript:joshua.pageSubmit(${page.pageNum+1});" aria-label="Next"><span aria-hidden="true">下一页</span></a></li></c:when> 
						  <c:otherwise><li class="disabled"><a aria-label="Next"><span aria-hidden="true">下一页</span></a></li></c:otherwise> 
						</c:choose>
						<input type="hidden" name="pageNum" id="pageNum" value="${page.pageNum}">

                    </ul>
                </nav>
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
    <script src="${ctx}/static/inspinia/js/plugins/jeditable/jquery.jeditable.js"></script>

    <!-- Data Tables -->
    <script src="${ctx}/static/inspinia/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${ctx}/static/inspinia/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="${ctx}/static/inspinia/js/plugins/dataTables/dataTables.responsive.js"></script>
    <script src="${ctx}/static/inspinia/js/plugins/dataTables/dataTables.tableTools.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${ctx}/static/inspinia/js/inspinia.js"></script>
    <script src="${ctx}/static/inspinia/js/plugins/pace/pace.min.js"></script>
    <!-- Page-Level Scripts -->
    
    <script>
   
    function hide(element)
    {
    document.getElementById(element).style.visibility="hidden";
    }
    function show(element)
    {
    document.getElementById(element).style.visibility="visible";
    }
    </script>

     <script>
	var joshua={
			pageSubmit:function(page){
				document.getElementById("pageNum").value=page;
				document.getElementById("pageForm").submit();
				
			}
	}
	</script> 
    <script>
        $(document).ready(function() {
            $('.dataTables-example').DataTable({
                "dom": 'lTfigt',
                "tableTools": {
                    "sSwfPath": "${ctx}/static/inspinia/js/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
                }
            });

            /* Init DataTables */
            var oTable = $('#editable').DataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable( '../example_ajax.php', {
                "callback": function( sValue, y ) {
                    var aPos = oTable.fnGetPosition( this );
                    oTable.fnUpdate( sValue, aPos[0], aPos[1] );
                },
                "submitdata": function ( value, settings ) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition( this )[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            } );

        });
    </script>
</body>
</html>