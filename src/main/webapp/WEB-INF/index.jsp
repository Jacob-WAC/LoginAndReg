<!-- prettier-ignore -->
<%@ page language="java" contentType="text/html charset=UTF-8" pageEncoding="UTF-8" %>
<!-- prettier-ignore -->
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- prettier-ignore -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- prettier-ignore -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1" />
        <title>Insert title here</title>
        <link
            rel="stylesheet"
            href="/webjars/bootstrap/css/bootstrap.min.css"
        />
        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container d-flex">
            <div class="col-md-4">
                <form:form
                    action="/register"
                    method="post"
                    modelAttribute="newUser"
                >
                    <div class="form-group">
                        <label>User Name:</label>
                        <form:input path="userName" class="form-control" />
                        <form:errors path="userName" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <form:input path="email" class="form-control" />
                        <form:errors path="email" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Password:</label>
                        <form:password path="password" class="form-control" />
                        <form:errors path="password" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Confirm Password:</label>
                        <form:password path="confirm" class="form-control" />
                        <form:errors path="confirm" class="text-danger" />
                    </div>
                    <input
                        type="submit"
                        value="Register"
                        class="btn btn-primary"
                    />
                </form:form>
            </div>
            <div class="col-md-3 offset-3">
                <form:form
                    action="/login"
                    method="post"
                    modelAttribute="newLogin"
                >
                    <div class="form-group">
                        <label>Email:</label>
                        <form:input path="email" class="form-control" />
                        <form:errors path="email" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Password:</label>
                        <form:password path="password" class="form-control" />
                        <form:errors path="password" class="text-danger" />
                    </div>
                    <input
                        type="submit"
                        value="Login"
                        class="btn btn-success"
                    />
                </form:form>
            </div>
        </div>
    </body>
</html>
