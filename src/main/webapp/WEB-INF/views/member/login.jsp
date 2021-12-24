<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
}

.vertical-center {
  min-height: 100%;  /* Fallback for browsers do NOT support vh unit */
  min-height: 100vh; /* These two lines are counted as one :-)       */
  display: flex;
  align-items: center;
}
</style>

<title>Vision Market</title>
</head>
<body>
	<div class="vertical-center">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-3">
					<div class="text-center fs-3 fw-bold mb-4">로그인</div>
					<form>
						<input class="form-control" type="text" name="id" placeholder="아이디를 입력해주세요">
						<input class="form-control mt-2" type="password" name="password" placeholder="비밀번호를 입력해주세요">
						<div class="mt-1 fs-6 text-muted">
							<a class="text-reset" onclick="KurlyTrackerLink('/member/find/id', 'select_find_id')" href="#"> 아이디 찾기 </a>
							<span>&nbsp; | &nbsp;</span>
							<a class="text-reset" onclick="KurlyTrackerLink('/member/find/password', 'select_find_password')" href="#"> 비밀번호 찾기 </a>
						</div>
						<input class="btn btn-primary w-100 mt-4" formaction="${pageContext.request.contextPath }/member/login" method="post" type="submit" value="로그인">
					</form>
					<button class="btn btn-outline-primary w-100 mt-2" formaction="${pageContext.request.contextPath }/member/join" type="submit" method="post">회원가입</button>

				</div>
			</div>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>

</body>
</html>