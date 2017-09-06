{{extends file='../layout/base.tpl'}}
{{block name=title}}登录{{/block}}

{{block name=css}}
    <link href="/css/user/signin.css" rel="stylesheet">
{{/block}}

{{block name=content}}

    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
    <script src="/assets/js/ie10-viewport-bug-workaround.js"></script>
{{/block}}
{{block name=footer}}{{/block}}
{{block name=js}}{{/block}}
