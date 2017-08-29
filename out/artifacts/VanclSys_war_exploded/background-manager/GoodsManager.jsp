<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet"/>
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
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
                    <a class="active-menu" href="GoodsManager.jsp"><i class="fa fa-desktop"></i> 商品管理</a>
                </li>

               

                <li>
                    <a href="UserManager.jsp"><i class="fa fa-table"></i>用户管理</a>
                </li>
            </ul>

        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div class="header">
            <h1 class="page-header">
                商品管理
                <small>This is your goods</small>
            </h1>

        </div>
        <!--页面主体-->
        <div class="page-inner">
            <div class="container">
                <div class="row">
                    <div class="col-md-10">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <table class="table table-striped goods">
                                    <tr>
                                        <th>商品id</th>
                                        <th>商品名</th>
                                        <th>商品图片</th>
                                        <th>商品类型</th>
                                        <th>商品价格</th>
                                    </tr>
                                    <tr>
                                        <td id="show-gid"></td>
                                        <td id="show-gname"></td>
                                        <td id="show-gurl"></td>
                                        <td id="show-gtype"></td>
                                        <td id="show-gprice"></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">

                            <div class="panel panel-success">
                                <div class="panel-heading">
                                    添加商品
                                </div>
                                <div class="panel-body">
                                    <label>商品名</label>
                                    <input type="text" name="gname" id="add-gname" class="form-control">
                                    <label>商品图片</label>
                                    <input type="file" id="upload" class="form-control">
                                    <label>商品类型</label>
                                    <input type="text" name="gtype" id="add-gtype" class="form-control">
                                    <label>商品价格</label>
                                    <input type="text" name="gprice" id="add-gprice" class="form-control">
                                </div>
                                <div class="panel-footer">
                                    <button class="btn btn-success" id="add-btn">添加</button>
                                </div>
                            </div>

                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                查找商品
                            </div>
                            <div class="panel-body">
                                <label>商品名</label>
                                <input type="text" id="search-gname" class="form-control">
                            </div>
                            <div class="panel-footer">
                                <button class="btn btn-warning" id="search-btn"><span class="glyphicon glyphicon-search"></span>
                                </button>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-5">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                修改商品
                            </div>
                            <div class="panel-body">
                                <label>商品id</label>
                                <input type="text" name="gid" id="edit-gid" class="form-control">
                                <label>商品名</label>
                                <input type="text" name="gname" id="edit-gname" class="form-control">
                                <label>商品图片</label>
                                <input type="file" id="edit-gurl">
                                <label>商品类型</label>
                                <input type="text" name="gtype" id="edit-gtype" class="form-control">
                                <label>商品价格</label>
                                <input type="text" name="gprice" id="edit-gprice" class="form-control">
                            </div>
                            <div class="panel-footer">
                                <button class="btn btn-info" id="edit-btn">修改</button>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                删除商品
                            </div>
                            <div class="panel-body">
                                <label>商品id</label>
                                <input type="text" id="del-gid" class="form-control">
                            </div>
                            <div class="panel-footer">
                                <button class="btn btn-danger" id="del-btn">删除</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="assets/js/jquery-3.2.1.min.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<script>
    //添加商品
    $("#add-btn").click(function () {
        var gname = $("#add-gname").val();
        var gurl = ($("#upload").val()).substring(12);
        var gtype = $("#add-gtype").val();
        var gprice = $("#add-gprice").val();
        $.ajax({
            url: "/addGoods",
            type: "post",
            data: {"gname": gname, "gurl": gurl, "gtype": gtype, "gprice": gprice},
            success: function (data) {
                $("#show-gid").text(data);
                $("#show-gname").text(gname);
                $("#show-gurl").text(gurl);
                $("#show-gtype").text(gtype);
                $("#show-gprice").text(gprice);
            },
            error: function () {
                alert("false");
            }
        });
    });
    //修改商品
    $("#edit-btn").click(function () {
        var id=$("#edit-gid").val();
        var gname=$("#edit-gname").val();
        var gurl=$("#edit-gurl").val().substring(12);
        var gtype=$("#edit-gtype").val();
        var gprice=$("#edit-gprice").val();
        $.ajax({
            url: "/updateGoods",
            type: "post",
            data: {"id":id,"gname": gname, "gurl": gurl, "gtype": gtype,"gprice":gprice},
            success: function (data) {
                $("#show-gid").text(id);
                $("#show-gname").text(gname);
                $("#show-gurl").text(gurl);
                $("#show-gtype").text(gtype);
                $("#show-gprice").text(gprice);
            },
            error: function () {
                alert("请求地址有问题");
            }
        })
    });
    //删除商品
    $("#del-btn").click(function () {
        var id=$("#del-gid").val();
        $.ajax({
            url: "/deleteGoods",
            type: "post",
            data: {"id":id},
            success: function (data) {
                $("#show-gid").text("");
                $("#show-gname").text("");
                $("#show-gurl").text("");
                $("#show-gtype").text("");
                $("#show-gprice").text("");
                alert("删除商品成功");
            },
            error: function () {
                alert("请求地址有问题");
            }
        })
    });

    //查询商品
    $("#search-btn").click(function () {
        var gname = $("#search-gname").val();
        $.ajax({
            url: "/searchGoods",
            type: "post",
            dataType: "json",
            data: {"gname": gname},
            success: function (data) {
                for(var k in data){
                    $(".goods").append("<tr><td>"+data[k].gid+"</td><td>"+data[k].gname+"</td><td>"+data[k].gurl+
                        "</td><td>"+data[k].gtype+"</td><td>"+data[k].gprice+"</td></tr>");
                }

            },
            error: function () {
                alert("请求地址有问题");
            }
        })
    });
</script>
</body>
</html>

