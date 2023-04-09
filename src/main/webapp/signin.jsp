




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignIn</title>
</head>
<body>
    <style>
  html {
height: 100%;
}
body {
margin: 0;
padding: 0;
font-family: sans-serif;
background: linear-gradient(#0b0a0a, #4d85c5);
}

.login-box {
position: absolute;
top: 50%;
left: 50%;
width: 400px;
padding: 40px;
transform: translate(-50%, -50%);
background:#000000;
box-sizing: border-box;
box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
border-radius: 10px;
}

.login-box h2 {
margin: 0 0 30px;
padding: 0;
color: #fff;
text-align: center;
}

.login-box .user-box {
position: relative;
}

.login-box .user-box input {
width: 100%;
padding: 10px 0;
font-size: 16px;
color: #fff;
margin-bottom: 30px;
border: none;
border-bottom: 1px solid #fff;
outline: none;
background: transparent;
}
.login-box .user-box label {
position: absolute;
top: 0;
left: 0;
padding: 10px 0;
font-size: 16px;
color: #fff;
pointer-events: none;
transition: 0.5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
top: -20px;
left: 0;
color: #03e9f4;
font-size: 12px;
}

.login-box form .a {

position: relative;
left: 32px;
display: inline-block;
padding: 10px 20px;
color: #fdffff;;
font-size: 16px;
text-decoration: none;
text-transform: uppercase;
overflow: hidden;
transition: 0.5s;
margin-top: 40px;
letter-spacing: 4px;
border-radius: 10px;
background: linear-gradient(90deg, transparent, #4d85c5);

}

.login-box .a:hover {
background: #42da40;
color: #fff;
border-radius: 5px;
box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4,
  0 0 100px #03e9f4;
}

.login-box .a span {
position: absolute;
display: block;
}

.login-box .a span:nth-child(1) {
top: 0;
left: -100%;
width: 100%;
height: 2px;
background: linear-gradient(90deg, transparent, #03e9f4);
animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
0% {
  left: -100%;
}
50%,
100% {
  left: 100%;
}
}

.login-box .a span:nth-child(2) {
top: -100%;
right: 0;
width: 2px;
height: 100%;
background: linear-gradient(180deg, transparent, #03e9f4);
animation: btn-anim2 1s linear infinite;
animation-delay: 0.25s;
}

@keyframes btn-anim2 {
0% {
  top: -100%;
}
50%,
100% {
  top: 100%;
}
}

.login-box .a span:nth-child(3) {
bottom: 0;
right: -100%;
width: 100%;
height: 2px;
background: linear-gradient(270deg, transparent, #03e9f4);
animation: btn-anim3 1s linear infinite;
animation-delay: 0.5s;
}

@keyframes btn-anim3 {
0% {
  right: -100%;
}
50%,
100% {
  right: 100%;
}
}

.login-box .a span:nth-child(4) {
bottom: -100%;
left: 0;
width: 2px;
height: 100%;
background: linear-gradient(360deg, transparent, #03e9f4);
animation: btn-anim4 1s linear infinite;
animation-delay: 0.75s;
}

@keyframes btn-anim4 {
0% {
  bottom: -100%;
}
50%,
100% {
  bottom: 100%;
}
}

/* button resset */
.login-box form .rest {

position: relative;
left: 32px;
display: inline-block;
padding: 10px 20px;
color: #fdffff;;
font-size: 16px;
text-decoration: none;
text-transform: uppercase;
overflow: hidden;
transition: 0.5s;
margin-top: 40px;
letter-spacing: 4px;
border-radius: 10px;
background: linear-gradient(90deg, transparent, #4d85c5);

}

.login-box .rest:hover {
background: #f40303;
color: #fff;
border-radius: 5px;
box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 50px #03e9f4,
  0 0 100px #03e9f4;
}

.login-box .rest span {
position: absolute;
display: block;
}

.login-box .rest span:nth-child(11) {
top: 0;
left: -100%;
width: 100%;
height: 2px;
background: linear-gradient(90deg, transparent, #03e9f4);
animation: btn-anim11 1s linear infinite;
}

@keyframes btn-anim11 {
0% {
  left: -100%;
}
50%,
100% {
  left: 100%;
}
}

.login-box .rest span:nth-child(22) {
top: -100%;
right: 0;
width: 2px;
height: 100%;
background: linear-gradient(180deg, transparent, #03e9f4);
animation: btn-anim2 1s linear infinite;
animation-delay: 0.25s;
}

@keyframes btn-anim22 {
0% {
  top: -100%;
}
50%,
100% {
  top: 100%;
}
}

.login-box .rest span:nth-child(3) {
bottom: 0;
right: -100%;
width: 100%;
height: 2px;
background: linear-gradient(270deg, transparent, #03e9f4);
animation: btn-anim33 1s linear infinite;
animation-delay: 0.5s;
}

@keyframes btn-anim33 {
0% {
  right: -100%;
}
50%,
100% {
  right: 100%;
}
}

.login-box .rest span:nth-child(44) {
bottom: -100%;
left: 0;
width: 2px;
height: 100%;
background: linear-gradient(360deg, transparent, #03e9f4);
animation: btn-anim44 1s linear infinite;
animation-delay: 0.75s;
}

@keyframes btn-anim44 {
0% {
  bottom: -100%;
}
50%,
100% {
  bottom: 100%;
}
}
img{
    width: 50px;
    padding-left: 130px;
}

</style>
</head>
<body>


<div class="login-box">
    <img src="https://clipground.com/images/admin-logo-3.png" alt="">
    
    <form action="login">
      <div class="user-box">
        <input type="text" name="name" required>
        <label>Name</label>
      </div>
      <div class="user-box">
        <input type="tel" name="phone_number" required>
        <label>Phone Number</label>
        
      </div>
      <div class="user-box">
        <input type="email" name="email" required>
        <label>Email</label>
      </div>
      <div class="user-box">
        <input type="password" name="psw" required>
        <label>Password</label>
      </div>
      <input type="hidden" name="log" value="signin">
    
     
        <button type="reset" class="rest">
        Reset
        <span></span>
        <span></span>
        
        <span></span>
        
        <span></span>
        </button>
        
    
      <button class="a">
        submit
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </button>
    </form>
 <br>
     <label style="color:white; padding-left:40px">Already Having a account,</label> <a href="index.jsp">LogIn</a>
  </div>


    
</body>
</html>