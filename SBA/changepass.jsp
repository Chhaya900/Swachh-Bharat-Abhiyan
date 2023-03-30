<%-- 
    Document   : changepass
    Created on : 4 Aug, 2019, 12:27:06 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
          <link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/font-awesome.min.css" rel="stylesheet"/>
<link href="css/hover-min.css" rel="stylesheet"/>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

    </head>
    
    <body>
         <%@include file="../AdminZone/header.jsp" %>
         <div class="container-fluid">
        <div class="row" style="min-height: 480px;">
             <div class="col-sm-2" style="background:#a6ffd2;min-height: 480px;">
                <br>
                <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"> <a href="dashboard.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Home</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"><a href="DonorManagement.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Donor Management</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"> <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Govt. Scheme</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">  <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Member Details</span></a></div><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">  <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Response Management</span></a></div><br>
                       <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Dynamic Event</span></a></div><br>
                       
                       <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Setting</span></a></div><br>
                          
                          <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="../logout.html"><span style="color:navy;font-size: 20px;font-family: bold;">Log Out</span></a></div><br>
                           <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="../changepwd.html"><span style="color:navy;font-size: 20px;font-family: bold;">Change Password</span></a></div><br>
                            <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Forget Password</span></a></div><br>
                   </div>
             <div class="row">
                <div class="col-sm-2"></div>
                
                <form action="../codes/changepasscode.jsp" method="post">
                <div class="col-sm-6" style="min-height: 450px;background-image:url('t2.jpg');"><br>
                    <div style="height: 50px; width:100%;background: whitesmoke; border-radius: 50%;">
                        <font style="font-family: bold;font-size: 35px; color:red;"><center>Change Password</center></font></div>
                    
                    <span style="color: white;font-size:20px;font-family: bold;"><span class="fa fa-lock"></span>Old Password</span>
                    <input type="password" name="oldpass" class="form-control"  placeholder="Enter Old Password "/><br><br>
                    <span style="color: white;font-size:20px;font-family: bold;" ><span class="fa fa-lock"></span>New Password</span>
                    <input type="password" name="newpass" class="form-control" placeholder="Enter New Password"><br><br>
                    <span style="color: white;font-size:20px;font-family: bold;" ><span class="fa fa-lock"></span>Confirm New Password</span>
                    <input type="password" name="cpass" class="form-control" placeholder="Enter Confirm New Password "/><br>
                    <br>
                <input type="submit" value="Change Password" class="btn btn-success"/>
                <input type="reset" value="Reset" class="btn btn-success"/>
                </div>
                </form>
                <div class="col-sm-2"></div>
                
                
            
            </div>
         <%@include file="../AdminZone/footer.jsp" %>
         </body>
</html>
