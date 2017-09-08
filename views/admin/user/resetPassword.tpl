{{extends file='../../layout/admin.tpl'}}
{{block name=title1}}修改密码{{/block}}

{{block name=content1}}
  <h1>修改密码</h1>
  <form action="/admin/user/reset-password" method="post">
    <label for="oldPassword">旧密码</label>
    <input type="password" id="oldPassword" name="oldPassword" placeholder="旧密码" required autofocus>
    <label for="newPassword">新密码</label>
    <input type="password" id="newPassword" name="newPassword" placeholder="新密码" required>
    <label for="newPassword2">新密码确认</label>
    <input type="password" id="newPassword2" name="newPassword2" placeholder="新密码确认" required>
    <button type="submit">确定</button>
  </form>
{{/block}}
