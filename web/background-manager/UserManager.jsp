<%@ page import="com.seecen.vancl.dao.UserDao" %>
<%@ page import="com.seecen.vancl.pojo.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta content="" name="description"/>
    <meta content="webthemez" name="author"/>
    <title>凡客后台管理系统</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet"/>
    <!-- Morris Chart Styles-->

    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
    <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet"/>
</head>

<body>
<div id="wrapper">
    <nav class="navbar navbar-default top-navbar" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="http://localhost:8888"><strong><i class="icon fa fa-plane"></i> 凡客vancl</strong></a>
            <div id="sideNav" href="">
                <i class="fa fa-bars icon"></i>
            </div>
        </div>

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Doe</strong>
                                <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <strong>John Smith</strong>
                                <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                            </div>
                            <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>Read All Messages</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 1</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (success)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 2</strong>
                                    <span class="pull-right text-muted">28% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                        <span class="sr-only">28% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 3</strong>
                                    <span class="pull-right text-muted">60% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        <span class="sr-only">60% Complete (warning)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>Task 4</strong>
                                    <span class="pull-right text-muted">85% Complete</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                        <span class="sr-only">85% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Tasks</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-tasks -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                <span class="pull-right text-muted small">12 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> Message Sent
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-tasks fa-fw"></i> New Task
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                <span class="pull-right text-muted small">4 min</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-alerts -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
    </nav>
    <!--/. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">

                <li>
                    <a href="index.jsp"><i class="fa fa-dashboard"></i> 首页</a>
                </li>
                <li>
                    <a href="GoodsManager.jsp"><i class="fa fa-desktop"></i> 商品管理</a>
                </li>

               

                <li>
                    <a class="active-menu" href="UserManager.jsp"><i class="fa fa-table"></i>用户管理</a>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                用户管理
                <small>This is your 用户</small>
            </h1>
        </div>
        <div class="container" data-spy="scroll" data-target="#scc">
            <div class="row">
                <div class="col-md-10">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <table class="table table-striped user">
                                <tr>
                                    <th>用户id</th>
                                    <th>用户名</th>
                                    <th>用户密码</th>
                                    <th>联系电话</th>
                                </tr>
                                <tr>
                                    <td id="show-id"></td>
                                    <td id="show-name"></td>
                                    <td id="show-pwd"></td>
                                    <td id="show-tel"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            添加用户
                        </div>
                        <div class="panel-body">
                            <label>用户名</label>
                            <input type="text" id="add-uname" class="form-control">
                            <label>用户密码</label>
                            <input type="text" id="add-pwd" class="form-control">
                            <label>联系电话</label>
                            <input type="text" id="add-tel" class="form-control">
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-success" id="add-btn">添加</button>
                        </div>
                    </div>
                   <%-- <form  method="post">--%>
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            查找用户
                        </div>
                        <div class="panel-body">
                            <label>用户名关键字</label>
                            <input type="text" id="search-name" name="uname" class="form-control">
                            <%--<label>用户密码</label>
                            <input type="text" id="search-pwd" name="upsw" class="form-control">--%>
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-warning" type="button" id="search-btn">查找</button>
                        </div>

                    </div>
                    <%--</form>--%>
                </div>
                <div class="col-md-5" id="scc">

                    <div class="panel panel-info">
                        <div class="panel-heading">
                            修改用户
                        </div>
                        <div class="panel-body">
                            <label>用户id</label>
                            <input type="text" id="edit-id" class="form-control">
                            <label>用户名</label>
                            <input type="text" id="edit-name" class="form-control">
                            <label>用户密码</label>
                            <input type="text" id="edit-pwd" class="form-control">
                            <label>联系电话</label>
                            <input type="text" id="edit-tel" class="form-control">
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-info" id="edit-btn">修改</button>
                        </div>
                    </div>
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            删除用户
                        </div>
                        <div class="panel-body">
                            <label>用户id</label>
                            <input type="text" id="delete-id" class="form-control">
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-primary" id="delete-btn">删除</button>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>

</div>
<!-- /. PAGE WRAPPER  -->
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.10.2.js"></script>
<script src="../js/jquery-3.2.1.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- DATA TABLE SCRIPTS -->
<script src="assets/js/dataTables/jquery.dataTables.js"></script>
<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
<script>
</script>
<!-- Custom Js -->
<!--<script src="assets/js/custom-scripts.js"></script>-->
<script>
    //添加用户
    $("#add-btn").click(function () {
        var name = $("#add-uname").val();
        var psw = $("#add-pwd").val();
        var phone = $("#add-tel").val();
        $.ajax({
            url: "/addUser",
            type: "post",
            data: {"name": name, "phone": phone, "psw": psw},
            success: function (data) {
                $("#show-id").text(data);
                $("#show-name").text(name);
                $("#show-pwd").text(psw);
                $("#show-tel").text(phone);
            },
            error: function () {
                alert("请求地址有问题");
            }
        })
    });
    //删除用户
    $("#delete-btn").click(function () {
       var id=$("#delete-id").val();
        $.ajax({
            url: "/deleteUser",
            type: "post",
            data: {"id":id},
            success: function (data) {
                alert("删除成功");
            },
            error: function () {
                alert("请求地址有问题");
            }
        })
    });
//    修改用户
    $("#edit-btn").click(function () {
        var id=$("#edit-id").val();
        var name = $("#edit-name").val();
        var psw = $("#edit-pwd").val();
        var phone = $("#edit-tel").val();
        $.ajax({
            url: "/updateUser",
            type: "post",
            data: {"id":id,"name": name, "phone": phone, "psw": psw},
            success: function (data) {
                $("#show-id").text(id);
                $("#show-name").text(name);
                $("#show-pwd").text(psw);
                $("#show-tel").text(phone);
            },
            error: function () {
                alert("请求地址有问题");
            }
        })
    });
     //查找用户
    $("#search-btn").click(function () {
        var uname = $("#search-name").val();
        $.ajax({
            url: "/searchUser",
            type: "post",
            dataType: "json",
            data: {"uname": uname},
            success: function (data) {

               for(var k in data){
                   $(".user").append("<tr><td>"+data[k].uid+"</td><td>"+data[k].uname+"</td><td>"+data[k].upsw+
                       "</td><td>"+data[k].uphone+"</td></tr>");
               }

            },
            error: function () {
                alert("请求地址有问题");
            }
        })
    })
</script>
</body>
</html>
