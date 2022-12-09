<%@include file="header.html"%>
<!DOCTYPE html>
<html>

<body style="background-color:powderblue;">

  <center>  <h1 style="background-color: grey;">Admin Home</h1>

<div class="w3-container">
  <div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Add New Student</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Insert New Result</button>
   <a href="datalao.jsp" <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">   &nbsp&nbsp&nbsp&nbsp&nbsp   Registered Students</button></a>
   
     <a href="markslao.jsp"   <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo1')"> &nbsp &nbsp &nbsp &nbspAll Student Result</button></a>
     <a href="adminLogin.html" class="w3-bar-item w3-button tablink">&nbsp &nbsp &nbsp &nbspLogout</a>
  </div>
  
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
  

</head>
<body>
<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Students</div>
                        <div class="card-body">
                           
    
        <form method="POST" action="register.jsp" class="f1">
            <div class="d2">
                Course Name: <input type="text" name="Cname" placeholder="Enter course"><br><br>
                Branch Name: <input type="text" name="Bname" placeholder="Enter branch"><br><br>
                Roll Number: <input type="number" name="Rnum" placeholder="Enter Roll number"><br><br>
                Name       : <input type="text" name="name" placeholder="Enter name"><br><br>
                Father Name: <input type="text" name="Fname" placeholder="Enter father name"><br><br>
                Gender     : <input type="text" name="gen" placeholder="Enter Gender"><br><br>
            </div>
           <!-- Re-Password : <input type="password" name="pass2" placeholder="Re Enter password"><br><br> -->
            <input type="submit" style="cursor: pointer;border: 1px solid #00000052;; padding: 8px;background-color:#0000001f;" value="Register">
            
    </div>
    <a  href="home.html" type="button" class="b1">Home</a>
    </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  
<!doctype html>
<html lang="en">

<body>

<br>

<main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Insert New Result</div>
                        <div class="card-body">
                          
        <form method="POST" action="addmarks.jsp" class="f1">
            <div class="d2">
                
                Roll Number: <input type="number" name="Rnum" placeholder="Enter Roll number"><br><br>
                Maths: <input type="number" name="num1" placeholder=""><br><br>
                Physics: <input type="number" name="num2" placeholder=""><br><br>
                Chemistry: <input type="number" name="num3" placeholder=""><br><br>
                Biology: <input type="number" name="num4" placeholder=""><br><br>
                English: <input type="number" name="num5" placeholder=""><br><br>
            
            </div>
           <!-- Re-Password : <input type="password" name="pass2" placeholder="Re Enter password"><br><br> -->
            <input type="submit" style="cursor: pointer;border: 1px solid #00000052;; padding: 8px;background-color:#0000001f;" value="Save">
            
    </div>
    <a  href="home.html" type="button" class="b1">Home</a>
    </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>




</div>
  <hr class="new1">
<center><h5>All Right Reserved</h5></center> 
  <hr class="new1">
<br>
</body>
</html>