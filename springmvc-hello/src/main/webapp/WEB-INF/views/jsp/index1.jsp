<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>

    <spring:url value="/css/bootstrap.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet"/>

</head>
<body>

<div class="navbar-wrapper">
    <div class="container">

        <!-- Fixed navbar -->
        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">智能罐区管理系统</a>
                </div>
                <div class="navbar-collapse collapse" >
                    <!--<form class="navbar-form navbar-right" action="/login" method="post" shiro:guest="">-->
                    <!--<div class="form-group">-->
                    <!--<input type="text" name="account" placeholder="用户名" class="form-control" required="required" autofocus="autofocus"/>-->
                    <!--</div>-->
                    <!--<div class="form-group">-->
                    <!--<input type="password" name="password" placeholder="密码" class="form-control" required="required"/>-->
                    <!--</div>-->
                    <!--<button type="submit" class="btn btn-success">登录</button>-->
                    <!--</form>-->

                    <ul class="nav navbar-nav navbar-right" shiro:authenticated="">
                        <li><a href="/logout">安全退出</a></li>
                    </ul>

                </div><!--/.navbar-collapse -->
            </div>
        </nav>

    </div>
</div>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1>在线下单</h1>
                    <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                    <p><a class="btn btn-lg btn-primary" href="/online" role="button">开始下单</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1>油品查询</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="/oil" role="button">开始查询</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1>账单查询</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="/bill" role="button">开始查询</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140"/>
            <h2>提货人管理</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-default" href="/users" role="button">立即前往 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140"/>
            <h2>提单管理</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
            <p><a class="btn btn-default" href="/order" role="button">立即前往 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140"/>
            <h2>客户管理</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-default" href="/user" role="button">立即前往 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->



    <hr class="featurette-divider"/>

    <!-- /END THE FEATURETTES -->



    <!-- FOOTER -->
    <footer>
        <p class="pull-right"><a href="#">回到顶部</a></p>
        <p>&copy; 2017 宁波华自智能科技有限公司. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>



</div><!-- /.container -->


















































































<spring:url value="/js/jquery.min.js" var="jquery" />
<spring:url value="/js/bootstrap.min.js" var="bootstrap" />
<script src="${jquery}"/>
<script src="${bootstrap}"/>

<script>
    $(document).ready(function (e) {
        //console.log(e);

    });
</script>

</body>
</html>
</h3>
</body>
</html>
