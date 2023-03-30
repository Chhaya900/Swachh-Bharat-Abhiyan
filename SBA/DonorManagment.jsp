<%-- 
    Document   : DonorManagement
    Created on : 3 Aug, 2019, 8:04:09 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donor Management</title>
         
       
          <link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/font-awesome.min.css" rel="stylesheet"/>
<link href="css/hover-min.css" rel="stylesheet"/>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    function getCaptcha()
    {
        var strArr="0123456789AESDFgyhdwsfzCde";
        var code="";
        for(var i=0;i<5;i++)
        {
            code=code+strArr[Math.floor(Math.random()*20)];
        }
       return code; 
    }
    function demo()
    {
     var c=getCaptcha();
     document.getElementById("ct1").innerHTML=c;
     document.getElementById("hdn1").value=c;
    }
   
    </script>
<style>
    .form-control::placeholder
    {
        color:blue;
        font-family: 'monotype corsiva';
        font-size: 18px;
    }
    </style>
    </head>
    <body onload="demo()" style="background-image:url('t3.jpg'); background-repeat:no; height:300px;width: 100%;" >
        
         <%@include file="../AdminZone/header.jsp" %>
         <div class="container-fluid">
          <div class="row" >
              <div class="col-sm-2" style="background:#a6ffd2;min-height: 800px;">
                <br>
                <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"> <a href="dashboard.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Home</span></a></div><br><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"><a href="DonorManagement.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Donor Management</span></a></div><br><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;"> <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Govt. Scheme</span></a></div><br><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">  <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Member Details</span></a></div><br><br>
                      <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">  <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Response Management</span></a></div><br><br>
                       <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Dynamic Event</span></a></div><br><br>
                       
                       <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Setting</span></a></div><br><br>
                          
                          <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="../logout.html"><span style="color:navy;font-size: 20px;font-family: bold;">Log Out</span></a></div><br><br>
                           <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="changepass.jsp"><span style="color:navy;font-size: 20px;font-family: bold;">Change Password</span></a></div><br><br>
                            <div style="height: 30px;width: 100%;background:#cfcfcf; text-align: center;">   <a href="#"><span style="color:navy;font-size: 20px;font-family: bold;">Forget Password</span></a></div><br><br>
                         
                       
                    
            </div>
                  
             
             
              <div class="col-sm-2"></div>
              <div class="col-sm-6" style="min-height: 800px;background: rgba(255,209,187,0.8); ">
                <form> 
                    <div class="col-sm-12 panel panel-heading ff" style="background:whitesmoke;text-align: center;font-family: bold; font-size:25px;border:1px solid black">
                        Donor Management
                    </div>
                    <span style="font-size:20px;color:Black; font-family: bold;">Name</span>
                    <input type="text" name="name" class="form form-control" placeholder="Enter Name"/>
                    <span style="font-size:20px;color:Black; font-family: bold;">Father Name</span>
                    <input type="text" name="fname" class="form form-control" placeholder="Enter Name"/>
               <span style="font-size:20px;color:Black; font-family: bold;">Gender:</span>
               <input type="radio" value="Male" name="gender"><span style="font-size:15px;color:Black; font-family: bold;">Male</span>
               <input type="radio" value="Female" name="gender"><span style="font-size:15px;color:Black; font-family: bold;">Female</span><br><br>
               <span style="font-size:20px;color:Black; font-family: bold;">Qualification:</span>
               <select>
                   <option>--Select City--</option>
                   <option>Lucknow</option>
                    <option>Allahabad</option>
                     <option>Varansi</option>
                      <option>Azamgarh</option>
                       <option>Gorakhpur</option>
                        <option>Faizabad</option>
                         <option>Ambedakr Nagar</option>
                          <option>Gajipur</option>
                           <option>Kanpur</option>
                            <option>Noida</option>
                            <option>Gaziabad</option>
               </select>
               <br><br>
               <span style="font-size:20px;color:Black; font-family: bold;">Mobile No.</span>
                    <input type="number" name="mob" class="form form-control" placeholder="Enter Mobile No"/>
                    <span style="font-size:20px;color:Black; font-family: bold;">Address</span>
                    <input type="text" name="address" class="form form-control" placeholder="Enter Address"/>
                    <span style="font-size:20px;color:Black; font-family: bold;">
                        Captcha Code<span style="color:red;font-size: 25px;font-family: cursive;margin-left: 100px;">
              <s id="ct1">drF6s</s>
          </span>
          <span class="fa fa-refresh"style="font-size:20px;margin-left: 30px; cursor:pointer; " title="Click here to refresh captcha" onclick="demo()"></span>
                    </span><br>
                    
                      <span style="font-size:20px;color:Black; font-family: bold;">Enter Captcha Code</span> 
                      <input type="text" name="hdn1" placeholder="Enter Captcha Code" class="form-control"/>
                    
                    <span style="font-size:20px;color:Black; font-family: bold;">Amount</span>
                    <input type="number" name="amount" id="hdn1" class="form form-control" placeholder="Amount"/>
                    <span style="font-size:20px;color:Black; font-family: bold;">Purpose of Donation</span>
                    <textarea type ="text" name="purpose" class="form form-control" placeholder="write your purpose of donation"/></textarea>
                    
                </form>
              </div>
              <div class="col-sm-2"></div>
          </div>
             
             
             
         </div>
        
          <%@include file="../AdminZone/footer.jsp" %>
        
    </body>
</html>
