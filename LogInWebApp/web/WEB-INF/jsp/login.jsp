<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>


<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset=UTF-8">
        <title>DV LogIn</title>

        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/myCSS.css"/>
        <script src="${pageContext.request.contextPath}/script/script.js"></script>
    </head>
    <body onload="disableSubmit()">
        <div class="container">
            <section>				
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">


                            <form  action="${pageContext.request.contextPath}/users/logincheck.htm" autocomplete="on" method="POST"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="email" class="mail" > E-Mail </label>
                                    <input id="email" name="email" required="required" type="text" placeholder="someone@example.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="pass"> Password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="G3j!k03KG"/> 
                                </p>
                                <p class="keeplogin"> 
                                    <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" onchange="activateLoginButton(this)"/> 
                                    <label for="loginkeeping">I am not a robot.</label>
                                </p>
                                <div style="color: red">
                                    ${message}
                                </div>
                                <p class="login button"> 
                                    <a href="http://cookingfoodsworld.blogspot.in/" target="_blank" ></a>
                                </p>
                                <p class="change_link">
                                    Not a member yet ?
                                    <a href="#toregister" class="to_register">Register</a>
                                </p><br><br><br>
                                <p class="signin button"> 
                                    <input type="submit" value="Log in" id="log"/> 
                                </p>                           
                            </form>
                        </div>

                        <div id="register" class="animate form">

                            <spring:form modelAttribute="users" action="${pageContext.request.contextPath}/users/registrationForm.htm" method="POST"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <spring:label path="firstname" for="firstnamesignup" class="firstname" >First Name</spring:label>
                                    <spring:input path="firstname" id="firstnamesignup" name="firstnamesignup" required="required" type="text" placeholder="" />
                                </p>
                                <p> 
                                    <spring:label path="lastname" for="lastnamesignup" class="lastname" >Last Name</spring:label>
                                    <spring:input path="lastname" id="lastnamesignup" name="lastnamesignup" required="required" type="text" placeholder="" />
                                </p>
                                <p> 
                                    <spring:label path="email" for="emailsignup" class="mail" >E-Mail </spring:label>
                                    <spring:input path="email" id="emailsignup" name="emailsignup" required="required" type="email" placeholder="something@example.com"/> 
                                </p>
                                <p> 
                                    <spring:label path="phone" for="phonesignup" class="phone" >Phone</spring:label>
                                    <spring:input path="phone" id="phonesignup" name="phonesignup" type="text" placeholder="69XXXXXXXX"/> 
                                </p>
                                <p> 
                                    <spring:label path="company" for="companysignup" class="company" >Company</spring:label>
                                    <spring:input path="company" id="companysignup" name="companysignup" type="text" placeholder="DataVerse"/> 
                                </p>
                                <p> 
                                    <spring:label path="password" for="passwordsignup" class="password" >Password</spring:label>
                                    <spring:input path="password" id="passwordsignup" name="passwordsignup" required="required"  type="password" placeholder="G3j!k03KG"/>
                                </p>
                                <p> 
                                    <spring:label path="confpassword" for="passwordsignup_confirm" class="passwordc" >Please confirm your Password </label></spring:label>
                                    <spring:input path="confpassword" id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="" onkeyup="checkPass(); return false;"/>
                                    <input type="checkbox" name="terms" id="terms" onchange="activateButton(this)" /> 
                                    <label for="terms">I Agree Terms & Coditions </label>
                                    <span id="confirmMessage" class="confirmMessage"></span>
                                </p>

                                <div style="color: red">
                                    ${message}
                                </div>
                                <p class="signin button"> 
                                    <input type="submit" value="Sign up" id="submit"/> 
                                </p>
                                <p class="change_link">  
                                    Already a member ?
                                    <a href="#tologin" class="to_register">Log in </a>
                                </p>
                            </spring:form>
                        </div>
                    </div>
                </div>  
            </section>
        </div>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    </body>
</html>
