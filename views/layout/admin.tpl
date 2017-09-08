{{extends file='../layout/base.tpl'}}
{{block name=title}}{{block name=title1}}{{/block}} - 后台管理{{/block}}

{{block name=css}}
    <link href="/css/admin/dashboard.css" rel="stylesheet">
{{/block}}

{{block name=nav}}
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      {{*<a class="navbar-brand" href="#">Dashboard</a>*}}

      <div class="collapse navbar-collapse"{{* id="navbarsExampleDefault"*}}>
        <ul class="navbar-nav mr-auto">
          <li class="nav-item {{*active*}}">
            <a class="nav-link" href="/">网站首页</a>
          </li>
          {{*
          <li class="nav-item">
            <a class="nav-link" href="#">Settings</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/admin/user/reset-password">修改密码</a>
          </li>*}}
          <li class="nav-item">
            <a class="nav-link" href="/site/logout">退出</a>
          </li>
        </ul>
        {{*<form class="form-inline mt-2 mt-md-0">
          <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>*}}
      </div>
    </nav>
{{/block}}

{{block name=content}}
    <div class="container-fluid">
      <div class="row">
        <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link{{if $module=='admin' && $controller=='site' && $action=='index'}} active{{/if}}" href="/admin">控制台首页</a>
            </li>
            <li class="nav-item">
              <a class="nav-link{{if $module=='admin' && $controller=='user' && $action=='reset-password'}} active{{/if}}" href="/admin/user/reset-password">修改密码</a>
            </li>
          </ul>

          <ul class="nav nav-pills flex-column">
            <li class="nav-item">
              <a class="nav-link{{if $module=='admin' && $controller=='article' && $action=='index'}} active{{/if}}" href="/admin/article/index">文章</a>
            </li>
            <li class="nav-item">
              <a class="nav-link{{if $module=='admin' && $controller=='article-category' && $action=='index'}} active{{/if}}" href="/admin/article-category/index">文章分类</a>
            </li>
          </ul>
        </nav>

        <main class="col-sm-9 ml-sm-auto col-md-10 pt-3" role="main">
        {{block name=adminMain}}
        {{/block}}
        </main>
      </div>
    </div>
{{/block}}

{{block name=footer}}{{/block}}
