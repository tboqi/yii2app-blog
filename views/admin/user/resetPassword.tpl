{{extends file='../../layout/admin.tpl'}}
{{block name=title1}}修改密码{{/block}}

{{block name=adminMain}}
<h1>修改密码</h1>
<form id="form" action="/admin/user/reset-password" method="post">
  <div class="form-group">
    <label for="oldPassword">旧密码</label>
    <input type="password" class="form-control" id="oldPassword" name="oldPassword" placeholder="旧密码" required autofocus>
  </div>
  <div class="form-group">
    <label for="newPassword">新密码</label>
    <input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="新密码" required>
  </div>
  <div class="form-group">
    <label for="newPassword2">新密码确认</label>
    <input type="password" class="form-control" id="newPassword2" name="newPassword2" placeholder="新密码确认" required>
  </div>
  <button type="submit" class="btn btn-default">确定</button>
</form>
{{/block}}

{{block name=js}}
<script type="text/javascript">
(function(){
  $('#form').submit(function(event){
    console.log(event);
    return false;
  });
})()
</script>
{{/block}}