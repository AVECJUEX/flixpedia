<%@ page language="java" contentType="text/html; charset=UTF-8" 
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FLIXPEDIA ADMIN - Login</title>

    <!-- Custom fonts for this template-->
    <link href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<%=request.getContextPath()%>/resources/css/sb-admin-2.min.css" rel="stylesheet">
      
	<style>
		.image_test {
			background-repeat: no-repeat; 
			background-position: center;
			background-image: url(<%=request.getContextPath()%>/resources/images/chicago.jpg);
		}
	</style>
</head>

<body class="bg-gradient-primary">
	<%@include file="../include/adminnav.jsp" %>
	<form class="user" name="myform" id="myform">
	<input type="hidden" name="idcheck" id="idcheck" value="N"/>
    <div class="container">
    	
        <!-- Outer Row  justify-content-center-->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block image_test">
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                name="userid" id="userid" aria-describedby="emailHelp"
                                                placeholder="Enter id">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                name="password" id="password" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                        <a onclick="goWrite()" class="btn btn-primary btn-user btn-block">
                                            Login
                                        </a>
                                        <hr>
                                        <a href="index.html" class="btn btn-google btn-user btn-block">
                                            <i class="fab fa-google fa-fw"></i> Login with Google
                                        </a>
                                        <a href="index.html" class="btn btn-facebook btn-user btn-block">
                                            <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                        </a>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" onclick="goFindId()">아이디 찾기</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" onclick="goFindPassword()">패스워드 찾기</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" onclick="goRegister()">회원가입</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
    </form>

    <!-- Bootstrap core JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<%=request.getContextPath()%>/resources/js/sb-admin-2.min.js"></script>

</body>

</html>

<script>
function goWrite()
{
	var queryString = $("form[name=myform]").serialize();
   console.log( queryString );
      
   $.ajax({
      url:"${commonURL}/adminmember/login_proc",
      data:queryString,
      type:"POST",
      dataType:"json"
   })
   .done( (result)=>{
      if(result.flag=="1")
      {
    	  alert("로그인 성공");
    	  location.href="${commonURL}/admin/adminhome";
      }
      else if(result.flag=="2")
      {
    	  alert("아이디를 찾을 수 없습니다.");
      }
      else	//패스워드 실ㅍ시 3을 보낸다.
      {
    	  alert("패스워드가 일치하지 않습니다.");
      }
      
   })
   .fail( (error)=>{
      console.log(error);
   })
}

function goFindId()
{
	location.href="${commonURL}/adminmember/findId";	//페이지 이동	
}

function goFindPassword()
{
	location.href="${commonURL}/adminmember/findPassword";	//페이지 이동	
}
function goRegister()
{
	location.href="${commonURL}/adminmember/join";
}
function goCancel()
{
	location.href="${commonURL}/adminhome";
}


</script>