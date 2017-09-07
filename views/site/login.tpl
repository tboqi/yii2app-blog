{{extends file='../layout/base.tpl'}}
{{block name=title}}登录{{/block}}

{{block name=css}}
    <link href="/css/user/signin.css" rel="stylesheet">
{{/block}}

{{block name=nav}}{{/block}}

{{block name=content}}
    <div class="container">
      <form class="form-signin" action="/site/login" method="post">
        <h2 class="form-signin-heading">登录</h2>
        <label for="username" class="sr-only">账号</label>
        <input type="text" id="username" name="LoginForm[username]" class="form-control" placeholder="账号" required autofocus>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="password" name="LoginForm[password]" class="form-control" placeholder="密码" required>
        {{*<div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>*}}
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>
    </div> <!-- /container -->
{{/block}}
{{block name=footer}}{{/block}}
{{block name=js}}{{/block}}
