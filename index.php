<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Online Exam System </title>
<link rel="icon" type="image/x-icon" href="image/exam.png">
<link  rel="stylesheet" href="css/bootstrap.min.css"/>
 <link  rel="stylesheet" href="css/bootstrap-theme.min.css"/>
 <link rel="stylesheet" href="css/main.css">
 <link  rel="stylesheet" href="css/font.css">
 <script src="js/jquery.js" type="text/javascript"></script>

  <script src="js/bootstrap.min.js"  type="text/javascript"></script>
 	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
<?php if(@$_GET['w'])
{echo'<script>alert("'.@$_GET['w'].'");</script>';}
?>
<style rel="stylesheet">
  #formdesign{
    background-color: rgb(247, 233, 233);
    /*opacity: */
    background: rgba(76, 175, 80, 0.7)
  }
</style>
<script>
  function validateForm() {var y = document.forms["form"]["name"].value;	var letters = /^[A-Za-z]+$/;if (y == null || y == "") {alert("Name must be filled out.");return false;}var z =document.forms["form"]["college"].value;if (z == null || z == "") {alert("college must be filled out.");return false;}var x = document.forms["form"]["email"].value;var atpos = x.indexOf("@");
  var dotpos = x.lastIndexOf(".");if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {alert("Not a valid e-mail address.");return false;}var a = document.forms["form"]["password"].value;if(a == null || a == ""){alert("Password must be filled out");return false;}if(a.length<5 || a.length>25){alert("Passwords must be 5 to 25 characters long.");return false;}
  var b = document.forms["form"]["cpassword"].value;if (a!=b){alert("Passwords must match.");return false;}}
</script>


</head>

<body>
<div class="header">
<div class="row">
<div class="col-lg-6">
  <span class="logo">Online Exam System</span>
  
</div>
<div class="col-md-2 col-md-offset-4">
<a href="#" class="pull-right btn sub1" style="border-radius:0%" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Login</b></span></a></div>
<!--sign in modal start-->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content title1">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title title1 text-center"><span style="color:black"><b>USER LOGIN</b></span></h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" action="login.php?q=index.php" method="POST">
<fieldset>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="email"></label>
  <div class="col-md-6">
  <input id="email" name="email" placeholder="Email" class="form-control input-md" type="email" required>

  </div>
</div>


<!-- Password input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="password"></label>
  <div class="col-md-6">
    <input id="password" name="password" placeholder="Password" class="form-control input-md" type="password" required>

  </div>
</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Log in</button>
		</fieldset>
</form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--sign in modal closed-->

</div><!--header row closed-->
</div>

<div class="bg1">
<div class="row">

<div class="col-md-7"></div>
<div class="col-md-4 panel" id="formdesign">
<!-- sign in form begins -->
  <form class="form-horizontal" name="form" action="sign.php?q=account.php" onSubmit="return validateForm()" method="POST">
    <fieldset>

    <p class="text-center" style="background: #148496; color: #fff; font-size: 18px; font-family: comic sans MS; padding-top: 2px; padding-bottom: 5px; opacity: 0.8;"><b>Student Registration</b></p>

    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="name"></label>
      <div class="col-md-12">
      <input id="name" name="name" placeholder="Fullname" class="form-control input-md" type="text" style="background: rgba(255, 255, 255, 0.8);">

      </div>
    </div>

    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="gender"></label>
      <div class="col-md-12">
        <select id="gender" name="gender" placeholder="Gender" class="form-control input-md" style="background: rgba(255, 255, 255, 0.8);">
       <option value="Male">Select Gender</option>
      <option value="M">Male</option>
      <option value="F">Female</option> </select>
      </div>
    </div>

    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="name"></label>
      <div class="col-md-12">
      <input id="college" name="college" placeholder="College Name" class="form-control input-md" type="text" style="background: rgba(255, 255, 255, 0.8);">

      </div>
    </div>


    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label title1" for="email"></label>
      <div class="col-md-12">
        <input id="email" name="email" placeholder="Email ID" class="form-control input-md" type="email" style="background: rgba(255, 255, 255, 0.8);">

      </div>
    </div>

    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="mob"></label>
      <div class="col-md-12">
      <input id="mob" name="mob" placeholder="Contact Number" class="form-control input-md" type="number" style="background: rgba(255, 255, 255, 0.8);">

      </div>
    </div>


    <!-- Text input-->
    <div class="form-group">
      <label class="col-md-12 control-label" for="password"></label>
      <div class="col-md-12">
        <input id="password" name="password" placeholder="Password" class="form-control input-md" type="password" style="background: rgba(255, 255, 255, 0.8);">
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-12control-label" for="cpassword"></label>
      <div class="col-md-12">
        <input id="cpassword" name="cpassword" placeholder="Confirm Password" class="form-control input-md" type="password" style="background: rgba(255, 255, 255, 0.8);">
      </div>
    </div>
    <?php if(@$_GET['q7'])
    { echo'<p style="color:red;font-size:15px;">'.@$_GET['q7'];}?>
    <!-- Button -->
    <div class="form-group">
      <label class="col-md-12 control-label" for=""></label>
      <div class="col-md-12">
        <input  type="submit" class="sub btn btn-danger" value="Register"/>
      </div>
    </div>

    </fieldset>
</form>
</div><!--col-md-6 end-->
</div></div>
</div><!--container end-->

<!--Footer start-->
<div class="row footer">

<div class="col-md-4 box">
<a href="#" data-toggle="modal" data-target="#login">Admin Login</a></div>
<div class="col-md-4 box">
<a href="#" data-toggle="modal" data-target="#developers">Developers</a>
</div>
<div class="col-md-4 box">
<a href="feedback.php" target="_blank">Feedback</a></div></div>
<!-- Modal For Developers-->
<div class="modal fade title1" id="developers">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" style="font-family:'typo' "><span style="color:orange">Developers</span></h4>
      </div>

      <div class="modal-body">
        <p>
		<div class="row">
		<div class="col-md-4">
		 <img src="image/Nayem.jpg" width="150" height="100" alt="Sunny Prakash Tiwari" class="img-rounded">
		 </div>
		 <div class="col-md-5">
    		<a style="color:#202020; font-family:'typo' ; font-size:18px; text-decoration:none" title="Find on Facebook">MD. NAYEM</a>
    		<h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+8801999791578</h4>
    		<h4 style="font-family:'typo' ">mdnayem.cse21@gmail.com</h4>
    		<h4 style="font-family:'typo' ">Zhejiang Sci-Tech University, China</h4></div></div>
		</p>
      </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--Modal for admin login-->
	 <div class="modal fade" id="login">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title"><span style="color:black;font-family:'typo' "><center>ADMIN LOGIN</center></span></h4>
      </div>
      <div class="modal-body title1">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form role="form" method="post" action="admin.php?q=index.php">
<div class="form-group">
<input type="text" name="uname" maxlength="20"  placeholder="Admin Email" class="form-control" required/>
</div>
<div class="form-group">
<input type="password" name="password" maxlength="15" placeholder="Password" class="form-control" required/>
</div>
<div class="form-group" align="center">
<input type="submit" name="login" value="Login" class="btn btn-primary" style="border-radius:0%" />
</div>
</form>
</div><div class="col-md-3"></div></div>
      </div>
      <!--<div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>-->
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!--footer end-->


</body>
</html>
