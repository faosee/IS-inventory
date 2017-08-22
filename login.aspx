<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="invtory.login" %>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>เข้าสู่ระบบ</title>
  
  
  <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

      <link rel="stylesheet" href="bootstrap-snippet-login-form/css/style.css">

  
</head>

<body>
    <div class="wrapper">
    <form class="form-signin">       
      <h2 class="form-signin-heading">เข้าสู่ระบบ</h2>
      <input type="text" class="form-control" name="username" placeholder="user" required="" autofocus="" />
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <asp:Button ID="Button1" Text="เข้าสู่ระบบ" PostBackUrl="~/MainPage.aspx" />
    </form>
  </div>
  
  
</body>
</html>

