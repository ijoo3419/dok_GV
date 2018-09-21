<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
@import url('https://fonts.googleapis.com/css?family=Poppins');

/* BASIC */

html { 
  background-color: #5F4B8B !important;
}

body {
  font-family: "Poppins", sans-serif !important;
  height: 100vh !important;
}

a {
  color: #92badd !important;
  display:inline-block !important;
  text-decoration: none !important;
  font-weight: 400 !important;
}

h2 {
  text-align: center !important;
  font-size: 16px !important;
  font-weight: 600 !important;
  text-transform: uppercase !important;
  display:inline-block !important;
  margin: 40px 8px 10px 8px !important; 
  color: #cccccc !important;
}

.nli {
	text-align: center;
	color: black;
}

p {
	color: black;
}


/* STRUCTURE */

.wrapper {
  display: flex !important;
  align-items: center !important;
  flex-direction: column !important; 
  justify-content: center !important;
  width: 100% !important;
  min-height: 100% !important;
  padding: 20px !important;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px !important;
  border-radius: 10px 10px 10px 10px !important;
  background: #fff !important;
  padding: 30px !important;
  width: 90% !important;
  max-width: 450px !important;
  position: relative !important;
  padding: 0px !important;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3) !important;
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3) !important;
  text-align: center !important;

}

#formFooter {
  background-color: #f6f6f6 !important;
  border-top: 1px solid #dce8f1 !important;
  padding: 25px !important;
  text-align: center !important;
  -webkit-border-radius: 0 0 10px 10px !important;
  border-radius: 0 0 10px 10px !important;
}



/* TABS */

h2.inactive {
  color: #cccccc !important;
}

h2.active {
  color: #0d0d0d !important;
  border-bottom: 2px solid #5fbae9 !important;
}



/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #5F4B8B !important;
  border: none !important;
  color: white !important;
  padding: 15px 80px !important;
  text-align: center !important;
  text-decoration: none !important;
  display: inline-block !important;
  text-transform: uppercase !important;
  font-size: 13px !important;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4) !important;
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4) !important;
  -webkit-border-radius: 5px 5px 5px 5px !important;
  border-radius: 5px 5px 5px 5px !important;
  margin: 5px 20px 40px 20px !important;
  -webkit-transition: all 0.3s ease-in-out !important;
  -moz-transition: all 0.3s ease-in-out !important;
  -ms-transition: all 0.3s ease-in-out !important;
  -o-transition: all 0.3s ease-in-out !important;
  transition: all 0.3s ease-in-out !important;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #39ace7 !important;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95) !important;
  -webkit-transform: scale(0.95) !important;
  -o-transform: scale(0.95) !important;
  -ms-transform: scale(0.95) !important;
  transform: scale(0.95) !important;
}

input[type=text], input[type=password] {
  background-color: #f6f6f6 !important;
  border: none !important;
  color: #0d0d0d !important;
  padding: 15px 32px !important;
  text-align: center !important;
  text-decoration: none !important;
  display: inline-block !important;
  font-size: 16px !important;
  margin: 5px !important;
  width: 85% !important;
  border: 2px solid #f6f6f6 !important;
  -webkit-transition: all 0.5s ease-in-out !important;
  -moz-transition: all 0.5s ease-in-out !important;
  -ms-transition: all 0.5s ease-in-out !important;
  -o-transition: all 0.5s ease-in-out !important;
  transition: all 0.5s ease-in-out !important;
  -webkit-border-radius: 5px 5px 5px 5px !important;
  border-radius: 5px 5px 5px 5px !important;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #fff !important;
  border-bottom: 2px solid #5fbae9 !important;
}

input[type=text]:placeholder, input[type=password]:placeholder {
  color: #cccccc !important;
}



/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown !important;
  animation-name: fadeInDown !important;
  -webkit-animation-duration: 1s !important;
  animation-duration: 1s !important;
  -webkit-animation-fill-mode: both !important;
  animation-fill-mode: both !important;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0 !important;
    -webkit-transform: translate3d(0, -100%, 0) !important;
    transform: translate3d(0, -100%, 0) !important;
  }
  100% {
    opacity: 1 !important;
    -webkit-transform: none !important;
    transform: none !important;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0) !important;
    transform: translate3d(0, -100%, 0) !important;
  }
  100% {
    opacity: 1 !important;
    -webkit-transform: none !important;
    transform: none !important;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1 !important;
  -moz-animation:fadeIn ease-in 1 !important;
  animation:fadeIn ease-in 1 !important;

  -webkit-animation-fill-mode:forwards !important;
  -moz-animation-fill-mode:forwards !important;
  animation-fill-mode:forwards !important;

  -webkit-animation-duration:1s !important;
  -moz-animation-duration:1s !important;
  animation-duration:1s !important;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s !important;
  -moz-animation-delay: 0.4s !important;
  animation-delay: 0.4s !important;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s !important;
  -moz-animation-delay: 0.6s !important;
  animation-delay: 0.6s !important;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s !important;
  -moz-animation-delay: 0.8s !important;
  animation-delay: 0.8s !important;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s !important;
  -moz-animation-delay: 1s !important;
  animation-delay: 1s !important;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block !important;
  left: 0 !important;
  bottom: -10px !important;
  width: 0 !important;
  height: 2px !important;
  background-color: #56baed !important;
  content: "" !important;
  transition: width 0.2s !important;
}

.underlineHover:hover {
  color: #0d0d0d !important;
}

.underlineHover:hover:after{
  width: 100% !important;
}



/* OTHERS */

*:focus {
    outline: none !important;
} 

#icon {
  width:60% !important;
}

* {
  box-sizing: border-box !important;
}



</style>




</head>
<body>

<%@ include file="../common/headBar.jsp"%>

<div id="blankspace"></div>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Sign In </h2>
    <h2 class="inactive underlineHover"><a href="signUp.me">Sign Up</a></h2>

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form --> 
    <form>
      <input type="text" id="email" class="fadeIn second" name="email" placeholder="email">
      <input type="password" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">

    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

  </div>
</div>
</body>
</html>