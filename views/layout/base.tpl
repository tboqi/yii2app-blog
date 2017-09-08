<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>{{block name=title}}{{/block}} - 我的博客</title>

    <!-- Bootstrap core CSS -->
    <link href="/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    {{block name=css}}
    {{/block}}
  </head>

  <body>
{{block name=nav}}
    <div class="blog-masthead">
      <div class="container">
        <nav class="nav">
          <a class="nav-link active" href="/">首页</a>
          <a class="nav-link" href="#">New features</a>
          <a class="nav-link" href="#">Press</a>
          {{if $isLogin}}
          <a class="nav-link" href="/admin">管理</a>
          <a class="nav-link" href="/admin/user/reset-password">修改密码</a>
          <a class="nav-link" href="/site/logout">退出</a>
          {{else}}
          <a class="nav-link" href="/site/login">登录</a>
          {{/if}}
        </nav>
      </div>
    </div>

    <div class="blog-header">
      <div class="container">
        <h1 class="blog-title">The Bootstrap Blog</h1>
        <p class="lead blog-description">An example blog template built with Bootstrap.</p>
      </div>
    </div>
{{/block}}

    {{block name=content}}
    {{/block}}

    {{block name=footer}}
    <footer class="blog-footer">
      <p>Blog template built for <a href="https://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>
    {{/block}}
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    {{block name=js}}
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"></script>
    <script>window.jQuery || document.write('<script src="/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="/assets/js/vendor/popper.min.js"></script>
    <script src="/dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    {{/block}}
    <script src="/assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
