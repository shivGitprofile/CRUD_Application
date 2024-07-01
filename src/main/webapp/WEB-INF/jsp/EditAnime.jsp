<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<head>
    <meta charset="ISO-8859-1">
    <title>Edit Anime</title>

    <link rel="stylesheet"
        	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <script
        	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
            <style>
                body {
                    background-color: #f0f8ff;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                    margin: 0;
                }
        
                .container {
                    background-color: #ffffff;
                    border-radius: 15px;
                    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                    padding: 40px;
                    width: 100%;
                    max-width: 500px;
                    text-align: center;
                }
        
                h1 {
                    background-color: #4682b4;
                    color: #ffffff;
                    padding: 15px;
                    border-radius: 10px;
                    margin-bottom: 30px;
                }
        
                .form-group label {
                    color: #4682b4;
                    text-align: left;
                    margin-left: 48px;
                    display: block;
                    margin-bottom: 10px;
                }
        
                .form-control {
                    border-radius: 5px;
                    margin-bottom: 20px;
                    width: 100%;
                }
        
                .btn-success {
                    background-color: #32cd32;
                    border-color: #32cd32;
                    width:72%;
                    margin-right: 13px;
                    padding: 10px;
                    border-radius: 5px;
                }
        
                .btn-success:hover {
                    background-color: #136413;
                    border-color: #228b22;
                }
                #inp{
                    left: 46px;
                }
            </style>
</head>
<body>

    <div class="container">

        <h1 class="p-3"> Edit Anime </h1>

        <form:form action="/editSaveAnime" method="post" modelAttribute="anime">
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3" for="name">Name</label>
                    <div class="col-md-9" id="inp">
                        <form:input type="text" path="name" id="name" class="form-control input-sm" required="required" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3" for="year">Year</label>
                    <div class="col-md-9" id="inp">
                        <form:input type="number" path="year" id="year" class="form-control input-sm" required="required" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3" for="address">Address</label>
                    <div class="col-md-9" id="inp">
                        <form:input type="text" path="address" id="address" class="form-control input-sm" required="required" />
                    </div>
                </div>
            </div>
            <div class="row p-2">
                <div class="col-md-12">
                    <button type="submit" value="Register" class="btn btn-success">Save</button>
                </div>
            </div>
                </form:form>

    </div>

    <script th:inline="javascript">
                window.onload = function() {

                    var msg = "${message}";
                    console.log(msg);
                    if (msg == "Edit Failure") {
        				Command: toastr["error"]("Something went wrong with the edit.")
        			}

        			toastr.options = {
                          "closeButton": true,
                          "debug": false,
                          "newestOnTop": false,
                          "progressBar": true,
                          "positionClass": "toast-top-right",
                          "preventDuplicates": false,
                          "showDuration": "300",
                          "hideDuration": "1000",
                          "timeOut": "5000",
                          "extendedTimeOut": "1000",
                          "showEasing": "swing",
                          "hideEasing": "linear",
                          "showMethod": "fadeIn",
                          "hideMethod": "fadeOut"
                        }
        	    }
            </script>

</body>

</html>