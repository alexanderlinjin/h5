<%@ page language="java" import="java.util.*" contentType="text/html;charset=GBK" pageEncoding="GBK"%>
<html lang="zh-CN">
<body>
<header>
    <nav class="navbar navbar-default" >
        <div class="container" style="padding:0">
            <div class="navbar-header row">
                <!--        小于992px时显示在顶端的button-->
                <!--        手机端顶部左边侧拉按钮，暂无跳转-->

                <div class="col-xs-2">
                    <button type="button" class="navbar-toggle offcanvas-toggle" data-toggle="offcanvas" data-target="#js-bootstrap-offcanvas">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>


                <!--        以下这个按钮实现跳转到user.html页面-->
                <div class="col-xs-2 phone_user" style="float:right;padding:0;">
                    <button type="button" class="navbar-toggle offcanvas-toggle" data-toggle="offcanvas" data-target="#js-bootstrap-offcanvas-2" style="float:right">
                        <span class="glyphicon glyphicon-user"></span>

                    </button>
                </div>
                <!--        以上这个按钮实现跳转到user.html页面-->
<!--                以下为顶部搜索框和搜索图标，实现搜索功能-->
                <div class="search_input_box visible-xs col-xs-8">
                    <input class="search_input" type="text">
                    <a class="search_button" href="index.html"><span class="glyphicon glyphicon-search"></span></a>
                </div>
                <!--        以上为顶部搜索框和搜索图标-->
            </div>
            <!--        以下a标签分别跳转到登录注册界面-->
            <span>
        <a class="navbar-brand hidden-xs">您好，欢迎访问金金汇，请先</a>
        <a class="index_login hidden-xs" href="login.html">登录</a>
        <a class="index_login hidden-xs">/</a>
        <a class="index_login hidden-xs" href="zhuce.html">注册</a>
            </span>


            <!-- 个人中心下拉框，跳转到user.html-->
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right " style="font-size:13px">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">个人中心
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu" style="font-size:13px;">
                            <li><a href="user.html">我的主页</a></li>
                            <li><a href="user.html">我的收藏</a></li>
                            <li><a href="user.html">我的发布</a></li>
                        </ul>
                    </li>
                    <li><a href="#">帮助中心</a></li>
                </ul>
            </div>
            <!--      以上为下拉框-->


        </div>
            </nav>
    </header>
</body>
</html

