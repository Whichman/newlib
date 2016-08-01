<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="option" value="${blogname}" />
<c:set var="option2" value="${blogdescription}" />
<c:set var="option3" value="${siteurl}" />
<c:set var="option4" value="${home}" />
<c:set var="option5" value="${adminEmail}" />
<c:set var="option6" value="${usersCanRegister}" />
<c:set var="option7" value="${defaultRole}" />
<c:set var="option8" value="${timezoneString}" />
<c:set var="option9" value="${startWeek}" />
<c:set var="option10" value="${WPLANG}" />
<c:set var="option11" value="${dateFormat}" />
<c:set var="option12" value="${timeFormat}" />
<c:set var="option13" value="${dateFormatCustom}" />
<c:set var="option14" value="${timeFormatCustom}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>w3c | 设置-常规</title>
    <link href="${ctx}/static/backstage/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/css/style.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
<script language=JavaScript> 
var timerID = null; 
var timerRunning = false; 
function stopclock (){ 
if(timerRunning) 
clearTimeout(timerID); 
timerRunning = false;} 
function startclock () { 
stopclock(); 
showtime();} 
function showtime () { 
var now = new Date(); 
var hours = now.getHours(); 
var minutes = now.getMinutes(); 
var seconds = now.getSeconds() 
var timeValue = "" +((hours >= 12) ? "下午 " : "上午 " ) 
timeValue += ((hours >12) ? hours -12 :hours) 
timeValue += ((minutes < 10) ? ":0" : ":") + minutes 
timeValue += ((seconds < 10) ? ":0" : ":") + seconds 
document.clock.thetime.value = timeValue; 
timerID = setTimeout("showtime()",1000); 
timerRunning = true;} 
</SCRIPT> 
</head>
<body>
    <div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="${ctx}/static/backstage/img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams（作者名）</strong>
                             </span> <span class="text-muted text-xs block">Art Director（职务） <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="#">Profile（简况）</a></li>
                            <li><a href="#">Contacts（联络）</a></li>
                            <li><a href="#">Mailbox（邮箱）</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout（登录，退出）</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">设置</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li class="active"><a href="${ctx}/admin/general">常规</a></li>
                        <li><a href="${ctx}/admin/writting">撰写</a></li>
                        <li><a href="${ctx}/admin/read">阅读</a></li>
                        <li><a href="${ctx}/admin/discuss">讨论</a></li>
                        <li><a href="${ctx}/admin/media">多媒体</a></li>
						<li><a href="${ctx}/admin/fixed_link">固定链接</a></li>
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
            <form role="search" class="navbar-form-custom" action="#">
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
                                    <img alt="image" class="img-circle" src="${ctx}/static/backstage/img/a7.jpg">
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
                            <div class="dropdown-messages-box">
                                <a href="#" class="pull-left">
                                    <img alt="image" class="img-circle" src="${ctx}/static/backstage/img/a4.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right text-navy">5h ago</small>
                                    <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="${ctx}/static/backstage/img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="#">
                                    <i class="fa fa-envelope"></i> <strong>查看所有评论</strong>
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
                        
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>常规选项 </h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">帮助</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">                        
	                        <c:if test="${!empty message}">
								<p class="alert alert-success" role="alert">${message}</p>
							</c:if>                       
                            <form method="post" class="form-horizontal" action="${ctx}/admin/update">
                                <div class="form-group">
									<label class="col-sm-2 control-label" for="blogname">站点标题</label>
                                    <div class="col-sm-10">
										<input type="text" name="blogname" id="blogname" value="${option.optionValue}"  class="form-control"/>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label" for="blogdescription">副标题</label>
                                    <div class="col-sm-10">
										<input type="text" name="blogdescription" id="blogdescription" aria-describedby="tagline-description" value="${option2.optionValue}"class="form-control"/>
										<p class="help-block m-b-none" id="tagline-description">用简洁的文字描述本站点。</p>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label" for="siteurl">WordPress地址(URL)</label>
                                    <div class="col-sm-10">
										<input type="url" name="siteurl"  id="siteurl" value="${option3.optionValue}" class="form-control" />
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label" for="home">站点地址(URL)</label>
                                    <div class="col-sm-10">
										<input type="url" name="home" id="home" value="${option4.optionValue}"  aria-describedby="home-description" class="form-control"/>
										<p class="help-block m-b-none" id="home-description" >如果您想<a href ="#">让您的站点主页与WordPress安装目录不同</a>，请在此输入地址。</p>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label" for="admin_email">电子邮件地址</label>
                                    <div class="col-sm-10">
										<input type="email" name="admin_email" id="admin_email"  aria-describedby="admin-email-description" value="${option5.optionValue}" class="form-control"/>
										<p class="help-block m-b-none" id="admin-email-description">这个电子邮件地址仅为了管理方便而索要，例如新注册用户通知。</p>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-lg-2 control-label">成员资格</label>
                                    <div class="col-lg-10">
										<label for="users_can_register">
											<input type="checkbox" name="users_can_register" id="users_can_register" value="${option6.optionValue}" />
											任何人都可以注册
										</label>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for ="default_role">新用户默认角色</label>
                                    <div class="col-lg-10">																		
											<select id="default_role" name="default_role" onChange="GaiBian(this)">
												<option value="subscriber" >订阅者</option>
												<option value="contributor"  >投稿者</option>
												<option value="${option7.optionValue}" selected="selected">作者</option>
												<option value="editor">编辑</option>
												<option value="administrator">管理员</option>
											</select>										
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for="timezone_string">时区</label>
                                    <div class="col-lg-10">
											<select id="timezone_string" name="timezone_string"  aria-describedby="timezone-description">
												<optgroup label="亚洲（*：中国领土）">
												<option  value="${option8.optionValue}">*上海</option>
												<option value="Asia/Urumqi">*乌鲁木齐</option>
												<option value="Asia/Taipei">*台北</option>
												<option value="Asia/Macau">*澳门</option>
												<option value="Asia/Hong_Kong">*香港</option>
												<option value="Asia/Barnaul">Barnaul</option>
												<option value="Asia/Chita">Chita</option>
												<option value="Asia/Hebron">Hebron</option>
												<option value="Asia/Kathmandu">Kathmandu</option>
												<option value="Asia/Khandyga">Khandyga</option>
												<option value="Asia/Novokuznetsk">Novokuznetsk</option>
												<option value="Asia/Tokyo">东京</option>
												<option value="Asia/Ulaanbaatar">乌兰巴托</option>
												<option value="Asia/Choibalsan">乔巴山</option>
												<option value="Asia/Aden">亚丁</option>
												<option value="Asia/Rangoon">仰光</option>
												<option value="Asia/Irkutsk">伊尔库茨克</option>
												<option value="Asia/Qyzylorda">克孜勒奥尔达</option>
												<option value="Asia/Krasnoyarsk">克拉斯诺亚尔斯克</option>
												<option value="Asia/Colombo">科伦坡</option>
												<option value="Asia/Magadan">马加丹</option>
												<option value="Asia/Manila">马尼拉</option>
												<option value="Asia/Muscat">马斯喀特</option>
												</optgroup>
												<optgroup label="北极">
												<option value="Arctic/Longyearbyen">朗伊尔城</option>
												</optgroup>
												<optgroup label="南极洲">
												<option value="Antarctica/Macquarie">Macquarie</option>
												<option value="Antarctica/Troll">Troll</option>
												<option value="Antarctica/Casey">凯西</option>
												<option value="Antarctica/Palmer">帕尔默</option>
												<option value="Antarctica/Davis">戴维斯</option>
												<option value="Antarctica/Syowa">昭和</option>
												<option value="Antarctica/DumontDUrville">杜蒙特迪</option>
												<option value="Antarctica/Vostok">沃斯托克</option>
												<option value="Antarctica/Rothera">罗瑟拉</option>
												<option value="Antarctica/Mawson">莫森</option>
												<option value="Antarctica/McMurdo">麦克默多站</option>
												</optgroup>
												<optgroup label="印度次大陆">
												<option value="Indian/Kerguelen">凯尔盖朗</option>
												<option value="Indian/Reunion">团圆</option>
												<option value="Indian/Christmas">圣诞岛</option>
												<option value="Indian/Antananarivo">塔那那利佛</option>
												<option value="Indian/Chagos">查戈斯群岛</option>
												<option value="Indian/Mauritius">毛里求斯</option>
												<option value="Indian/Comoro">科摩罗</option>
												<option value="Indian/Cocos">科科斯</option>
												<option value="Indian/Mahe">马埃</option>
												<option value="Indian/Maldives">马尔代夫</option>
												<option value="Indian/Mayotte">马约特岛</option>
												</optgroup>
												<optgroup label="大西洋">
												<option value="Atlantic/Azores">亚速尔群岛</option>
												<option value="Atlantic/Cape_Verde">佛得角</option>
												<option value="Atlantic/Canary">加纳利</option>
												<option value="Atlantic/South_Georgia">南乔治亚</option>
												<option value="Atlantic/St_Helena">圣赫勒拿岛</option>
												<option value="Atlantic/Stanley">斯坦利</option>
												<option value="Atlantic/Faroe">法罗</option>
												<option value="Atlantic/Bermuda">百慕大</option>
												<option value="Atlantic/Reykjavik">雷克雅未克</option>
												<option value="Atlantic/Madeira">马德拉</option>
												</optgroup>
												<optgroup label="太平洋">
												<option value="Pacific/Bougainville">Bougainville</option>
												<option value="Pacific/Chuuk">Chuuk</option>
												<option value="Pacific/Pohnpei">Pohnpei</option>
												<option value="Pacific/Midway">中途</option>
												<option value="Pacific/Guam">关岛</option>
												<option value="Pacific/Galapagos">加拉帕戈斯</option>
												<option value="Pacific/Noumea">努美阿</option>
												<option value="Pacific/Gambier">甘比尔</option>
												<option value="Pacific/Pitcairn">皮特凯恩</option>
												<option value="Pacific/Kosrae">科斯雷</option>
												<option value="Pacific/Johnston">约翰斯顿</option>
												<option value="Pacific/Niue">纽埃</option>
												<option value="Pacific/Port_Moresby">莫尔兹比港</option>
												<option value="Pacific/Norfolk">诺福克</option>
												<option value="Pacific/Apia">阿皮亚</option>
												<option value="Pacific/Marquesas">马克萨斯</option>
												<option value="Pacific/Majuro">马朱罗</option>
												</optgroup>
												<optgroup label="欧洲">
												<option value="Europe/Astrakhan">Astrakhan</option>
												<option value="Europe/Busingen">Busingen</option>
												<option value="Europe/Ulyanovsk">Ulyanovsk</option>
												<option value="Europe/Uzhgorod">乌日哥罗德</option>
												<option value="Europe/Istanbul">伊斯坦布尔</option>
												<option value="Europe/Volgograd">伏尔加格勒</option>
												<option value="Europe/London">伦敦</option>
												<option value="Europe/Kaliningrad">加里宁格勒</option>
												<option value="Europe/Warsaw">华沙</option>
												<option value="Europe/Ljubljana">卢布尔雅那</option>
												<option value="Europe/Luxembourg">卢森堡</option>
												<option value="Europe/Copenhagen">哥本哈根</option>
												<option value="Europe/San_Marino">圣马力诺</option>
												<option value="Europe/Tirane">地拉那</option>
												<option value="Europe/Chisinau">基希讷乌</option>
												<option value="Europe/Kiev">基辅</option>
												<option value="Europe/Tallinn">塔林</option>
												<option value="Europe/Berlin">柏林</option>
												<option value="Europe/Guernsey">根西岛</option>
												<option value="Europe/Vatican">梵蒂冈</option>
												<option value="Europe/Podgorica">波德戈里察</option>
												<option value="Europe/Vaduz">瓦杜兹</option>
												<option value="Europe/Gibraltar">直布罗陀</option>
												<option value="Europe/Sofia">索菲亚</option>
												<option value="Europe/Vienna">维也纳</option>
												<option value="Europe/Vilnius">维尔纽斯</option>
												<option value="Europe/Rome">罗马</option>
												<option value="Europe/Zurich">苏黎世</option>
												</optgroup>
												<optgroup label="澳洲">
												<option value="Australia/Melbourne">墨尔本</option>
												<option value="Australia/Eucla">尤克拉</option>
												<option value="Australia/Broken_Hill">布罗肯希尔</option>
												<option value="Australia/Brisbane">布里斯班</option>
												<option value="Australia/Sydney">悉尼</option>
												<option value="Australia/Lindeman">林德曼</option>
												<option value="Australia/Currie">柯里</option>
												<option value="Australia/Perth">珀斯</option>
												<option value="Australia/Lord_Howe">豪勋爵</option>
												<option value="Australia/Darwin">达尔文</option>
												<option value="Australia/Adelaide">阿德莱德</option>
												<option value="Australia/Hobart">霍巴特</option>
												</optgroup>
												<optgroup label="美洲">
												<option value="America/Boa_Vista">博阿维斯塔</option>
												<option value="America/Cayenne">卡宴</option>
												<option value="America/Indiana/Indianapolis">印地安那 - 印第安纳波利斯</option>
												<option value="America/Indiana/Petersburg">印地安那 - 圣彼得堡</option>
												<option value="America/Indiana/Winamac">印地安那 - 威纳马克</option>
												<option value="America/Indiana/Vincennes">印地安那 - 文森斯</option>
												<option value="America/Indiana/Tell_City">印地安那 - 特尔城</option>
												<option value="America/Indiana/Knox">印地安那 - 诺克斯</option>
												<option value="America/Indiana/Vevay">印地安那 - 韦韦</option>
												<option value="America/Indiana/Marengo">印地安那 - 马伦哥</option>
												<option value="America/Guatemala">危地马拉</option>
												<option value="America/Goose_Bay">古斯湾</option>
												<option value="America/Halifax">哈利法克斯</option>
												</optgroup>
												<optgroup label="非洲">
												<option value="Africa/Juba">Juba</option>
												<option value="Africa/Addis_Ababa">亚的斯亚贝巴</option>
												<option value="Africa/Ceuta">休达</option>
												<option value="Africa/Nairobi">内罗毕</option>
												<option value="Africa/Bissau">几内亚比绍</option>
												<option value="Africa/Libreville">利伯维尔</option>
												<option value="Africa/Nouakchott">努瓦克肖特</option>
												<option value="Africa/Casablanca">卡萨布兰卡</option>
												<option value="Africa/Lubumbashi">卢本巴希</option>
												<option value="Africa/Lusaka">卢萨卡</option>
												<option value="Africa/Djibouti">吉布提</option>
												<option value="Africa/Gaborone">哈博罗内</option>
												<option value="Africa/Harare">哈拉雷</option>
												<option value="Africa/Dakar">达喀尔</option>
												<option value="Africa/Dar_es_Salaam">达累斯萨拉姆</option>
												<option value="Africa/Kinshasa">金沙萨</option>
												<option value="Africa/Accra">阿克拉</option>
												</optgroup>
												<optgroup label="协调世界时（UTC）">
												<option value="UTC">协调世界时（UTC）</option>
												</optgroup>
												<optgroup label="手动指定偏差">
												<option value="UTC-12">UTC-12</option>
												<option value="UTC-11.5">UTC-11:30</option>
												<option value="UTC-11">UTC-11</option>
												<option value="UTC-10.5">UTC-10:30</option>
												<option value="UTC-10">UTC-10</option>
												<option value="UTC-9.5">UTC-9:30</option>
												<option value="UTC-9">UTC-9</option>
												<option value="UTC-8.5">UTC-8:30</option>
												<option value="UTC-8">UTC-8</option>
												<option value="UTC-7.5">UTC-7:30</option>
												<option value="UTC-7">UTC-7</option>
												<option value="UTC-6.5">UTC-6:30</option>
												<option value="UTC-6">UTC-6</option>
												</optgroup>
											</select>
											<span class="help-block m-b-none" id="timezone-description">选择一个和您时区相同的城市</span>
											<p class="timezone-info">
												<span id="utc-time">协调世界时（UTC） 为<code>2016-07-25 08:31:38</code>。</span>
												<span id="local-time">当地时间为<code>2016-07-25 16:31:38</code>。</span>
											</p>
											<p class="timezone-info">
											该时区当前使用标准时间<br/>
											该时区不实施夏令时。
											</p>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">日期格式 </label>
                                    <div class="col-sm-10">
                                        <div>
											<label>
												<input type="radio" name='date_format' value="Y年n月j日" />
												<span class="date-time-text format-i18n"> 2016年7月25日</span>
												<code>Y年n月j日</code>
											</label>
										</div>
                                        <div>
											<label>
												<input type="radio" name='date_format' value="${option11.optionValue}" checked="checked"/>
												<span class="date-time-text format-i18n">2016-07-25</span>
												<code>Y-m-d</code>
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='date_format' value="m/d/Y"/>
												<span class="date-time-text format-i18n">07/25/2016</span>
												<code>m/d/Y</code>
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='date_format' value="d/m/Y"/>
												<span class="date-time-text format-i18n">25/07/2016</span>
												<code>d/m/Y</code>
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='date_format' id="date_format_custom_radio"  value="\c\u\s\t\o\m"/>
												<span class="date-time-text date-time-custom-text">自定义：</span>
											</label>
											<span class="screen-reader-text"> 自定义日期格式:</span>
											<input type="text" name="date_format_custom" id="date_format_custom" value="${option13.optionValue}" class="small-text" />
											<span class="example">2016年7月25日</span>
										</div>
                                    </div>
                                </div>
								<div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">时间格式</label>
                                    <div class="col-sm-10">                                      
                                        <div>
											<label>
												<input type="radio" name='time_format' value="${option12.optionValue}" checked="checked"  >
												<span class="date-time-text format-i18n">下午6:01</span>
												<code>ag:i</code>
											</label>
										</div>
                                        <div>
											<label>
												<input type="radio" name='time_format' value="g:i A"  >
												<span class="date-time-text format-i18n"> 6:01 下午</span>
												<code>g:i A</code>
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='time_format' value="H:i"  >
												<span class="date-time-text format-i18n"> 18:01</span>
												<code>H:i</code>
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='time_format' value="option2" >
												<span class="date-time-text date-time-custom-text">自定义：</span>
											</label>
											<label for="date_format_custom" class="screen-reader-text">自定义时间格式：</label>
											<input type="text" name="time_format_custom" id="time_format_custom" value="${option14.optionValue}" class="small-text" />
											<span class="screen-reader-text">例子： </span>
											<span class="example">下午6:01</span>
										</div>									
										<p class='date-time-doc'>
											<a href="https://codex.wordpress.org/Formatting_Date_and_Time">日期和时间格式帮助</a>.
										</p>
									</div>
								</div>
								 <div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for ="start_of_week">一星期开始于</label>
                                    <div class="col-lg-10">																		
											<select id="start_of_week" name="start_of_week">
												<option value="0" selected="selected">星期日</option>
												<option value="${option4.optionValue}" selected="selected">星期一</option>
												<option value="2" selected="selected">星期二</option>
												<option value="3">星期三</option>
												<option value="4">星期四</option>
												<option value="5">星期五</option>
												<option value="6">星期六</option>
											</select>										
									</div>
                                </div>
								 <div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for ="WPLANG">站点语言</label>
                                    <div class="col-lg-10">																		
											<select id="WPLANG" name="WPLANG">
												<optgroup label="已安装">
												<option value="" lang="en" data-installed="1">English (United States)</option>
												<option value="${option10.optionValue}" lang="zh" selected='selected' data-installed="1">简体中文</option>
												</optgroup>
												<optgroup label="可用">
												<option value="ar" lang="ar">العربية</option>
												<option value="ary" lang="ar">العربية المغربية</option>
												<option value="az" lang="az">Azərbaycan dili</option>
												<option value="azb" lang="az">گؤنئی آذربایجان</option>
												<option value="bg_BG" lang="bg">Български</option>
												<option value="bn_BD" lang="bn">বাংলা</option>
												<option value="bs_BA" lang="bs">Bosanski</option>
												<option value="ca" lang="ca">Català</option>
												<option value="ceb" lang="ceb">Cebuano</option>
												<option value="cs_CZ" lang="cs">Čeština‎</option>
												<option value="cy" lang="cy">Cymraeg</option>
												<option value="da_DK" lang="da">Dansk</option>
												<option value="de_CH" lang="de">Deutsch (Schweiz)</option>
												<option value="de_DE" lang="de">Deutsch</option>
												<option value="de_CH_informal" lang="de">Deutsch (Schweiz, Du)</option>
												<option value="de_DE_formal" lang="de">Deutsch (Sie)</option>
												<option value="gl_ES" lang="gl">Galego</option>
												<option value="haz" lang="haz">هزاره گی</option>
												<option value="he_IL" lang="he">עִבְרִית</option>
												<option value="hi_IN" lang="hi">हिन्दी</option>
												<option value="hr" lang="hr">Hrvatski</option>
												<option value="hu_HU" lang="hu">Magyar</option>
												<option value="hy" lang="hy">Հայերեն</option>
												<option value="id_ID" lang="id">Bahasa Indonesia</option>
												<option value="is_IS" lang="is">Íslenska</option>
												<option value="it_IT" lang="it">Italiano</option>
												<option value="ka_GE" lang="ka">ქართული</option>
												<option value="ko_KR" lang="ko">한국어</option>
												<option value="mr" lang="mr">मराठी</option>
												<option value="ms_MY" lang="ms">Bahasa Melayu</option>
												<option value="nl_NL" lang="nl">Nederlands</option>
												<option value="nl_NL_formal" lang="nl">Nederlands (Formeel)</option>
												<option value="nn_NO" lang="nn">Norsk nynorsk</option>
												<option value="oci" lang="oc">Occitan</option>
												<option value="pl_PL" lang="pl">Polski</option>
												<option value="tr_TR" lang="tr">Türkçe</option>
												<option value="ug_CN" lang="ug">Uyƣurqə</option>
												<option value="uk" lang="uk">Українська</option>
												<option value="vi" lang="vi">Tiếng Việt</option>
												<option value="zh_TW" lang="zh">繁體中文</option>
												</optgroup>
											</select>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-white" type="submit">返回</button>
                                        <button class="btn btn-primary" type="submit" name="submit" id="submit">保存更改</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
    <!-- Mainly scripts -->
    <script src="${ctx}/static/backstage/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/static/backstage/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/backstage/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${ctx}/static/backstage/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${ctx}/static/backstage/js/inspinia.js"></script>
    <script src="${ctx}/static/backstage/js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="${ctx}/static/backstage/js/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>
        
<script type="text/javascript">                        
//判断个函数   以上 5 个Radio 那个为选中状态  
function judgeRadioClicked()  
{  
    //获得 单选选按钮name集合  
    var radios = document.getElementsByName("date_format");                                   
    //根据 name集合长度 遍历name集合  
    for(var i=0;i<radios.length;i++)  
    {   
        //判断那个单选按钮为选中状态  
        if(radios[i].checked)  
        {  
            //弹出选中单选按钮的值  
            alert(radios[i].value);  
        }   
    }     
}                               
</script> 
		  
    


</body>

</html>
