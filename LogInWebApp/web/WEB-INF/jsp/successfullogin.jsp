<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Successful LogIn</title>

        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/myCSS.css"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1 Succeess login!!!</h1>
                <h2 style="color: blue">WELCOME ${users.firstname} </h2>
            </div><br><br>
            <div class="row">
                <table class="table" style="color: blue">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">E-Mail</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Company</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <th>${users.firstname}</th>
                            <th>${users.lastname}</th>
                            <th>${users.email}</th>
                            <th>${users.phone}</th>
                            <th>${users.company}</th>
                        </tr>
                    </tbody>
                </table>
            </div><br><br>
            <div class="row">
                <a href="${pageContext.request.contextPath}/users/form.htm" class="btn btn-primary" role="button">Back</a>
            </div> 

        </div>      

        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    </body>
</html>
