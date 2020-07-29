<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>


<script src="${pageContext.request.contextPath }/resources/js/kakao.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
<script
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>




</head>

<body>
	<!-- 로그인 Modal -->
	<div class="modal fade" id="modal-login" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">CRETIVE TEAM</span> 로그인
					</h4>
				</div>
				<div class="modal-body">
					<form action="LoginForm" class="modal-form" method="post"
						id="LoginForm" name="LoginForm">
						<table class="project-login-table">
							<tr>
								<td class="project-login-table-td">
									<p>
										<strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="idCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-login-table-input" type="text"
									name="userId" placeholder="최대 10자"></td>
							</tr>
							<tr>
								<td class="project-login-table-td">
									<p>
										<strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="pwCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input class="project-login-table-input" name="userPw"
									type="password" placeholder="최소 8자"></td>
							</tr>
							<tr>
								<td class="project-login-table-td2">
									<p>
										<strong>로그인하셔서 스트레스 지수를 측정해보세요~~!</strong>
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-login-table-td3"><input
									class="project-login-table-button1" type="submit" value="로그인"></td>
							</tr>


							<tr>
								<td colspan="2" class="project-login-table-td4"><a
									href="javascript:loginWithKakao()"> <img
										src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg"
										width="222" /></a></td>
							</tr>



						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>


		</div>
	</div>



	<!-- 회원가입 Modal -->
	<div class="modal fade" id="modal-regist" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">CRETIVE TEAM</span> 회원가입
					</h4>
				</div>
				<div class="modal-body">
					<form action="JoinForm" class="modal-form" method="post"
						id="JoinForm" name="JoinForm">
						<table class="project-regist-table">
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp; <span
											id="msgId"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="text" class="project-update-table-input"
									id="userId" name="userId" placeholder="숫자, 영어로 4-12자">
									<button type="button" class="btn btn-primary checkBtn"
										id="idCheckBtn">아이디중복체크</button></td>
							</tr>

							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="msgPw"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="password"
									class="project-regist-table-input" id="userPw" name="userPw"
									placeholder="영문, 숫자, 특수문자를 포함한 최소 8자"></td>
							</tr>
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="msgPwCheck"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="password" id="userPwCheck"
									name="userPwCheck" class="project-regist-table-input"
									placeholder="비밀번호가 일치해야합니다."></td>
							</tr>

							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									name="userName" id="userName" placeholder="OOO"></td>
							</tr>


							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span
											id="msgEmail"></span>
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="email" class="project-regist-table-input"
									name="userEmail" id="userEmail" placeholder="email@example.com"></td>
							</tr>


							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>주소를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="text" class="project-update-table-input"
									id="userAddrZipNum" name="userAddrZipNum" placeholder="우편번호">
									<button type="button" class="btn btn-primary checkBtn"
										onclick="goPopup()">주소찾기</button></td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									id="userAddrBasic" name="userAddrBasic" placeholder="기본주소"></td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									id="userAddrDetail" name="userAddrDetail" placeholder="상세주소"></td>
							</tr>

							<tr>
								<td class="project-regist-table-td2">
									<p>
										<strong>회원가입하신 후, 스트레스 지수를 측정해보세요~~!</strong>
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-regist-table-td3"><input
									type="button" value="회원가입" class="project-regist-table-button1"
									id="joinBtn"></td>
							</tr>

						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<!-- 회원정보수정 Modal -->
	<div class="modal fade" id="modal-update" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">CRETIVE TEAM</span>회원정보
					</h4>
				</div>
				<div class="modal-body">
					<form action="UpdateForm" class="modal-form" method="post"
						name="UpdateForm" id="UpdateForm">
						<table class="project-regist-table">
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>아이디</strong>&nbsp;&nbsp;&nbsp;<span id="msgId"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="text" class="project-regist-table-input" name="userId"
									value="${infoVO.userId }" disabled></td>
							</tr>

							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>이름</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="text" class="project-regist-table-input"
									name="userName" value="${infoVO.userName }"></td>
							</tr>
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>이메일</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="email" class="project-regist-table-input"
									name="userEmail" value="${infoVO.userEmail }"></td>
							</tr>
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>주소</strong>&nbsp;&nbsp;&nbsp;
									</p>
								</td>
							</tr>

							<tr>
								<td><input type="text" class="project-update-table-input"
									name="userAddrZipNum" value="${infoVO.userAddrZipNum }" placeholder="우편번호">
									<button type="button" class="btn btn-primary checkBtn"
										onclick="goPopup()">주소찾기</button></td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									name="userAddrBasic" value="${infoVO.userAddrBasic }" placeholder="기본주소"></td>
							</tr>

							<tr>
								<td><input type="text" class="project-regist-table-input"
									name="userAddrDetail" value="${infoVO.userAddrDetail }" placeholder="상세주소"></td>
							</tr>
							<tr>
								<td class="project-regist-table-td2">
									<p>
										<strong>회원정보 수정을 원하시면 아래의 버튼을 눌러주세요~~!</strong>
									</p>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="project-regist-table-td3"><input
									type="button" value="회원정보수정"
									class="project-regist-table-button1" id="updateBtn"></td>
							</tr>

						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>

	<div class="modal fade" id="modal-delete" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">
						<span class="modal-span">CRETIVE TEAM</span> 회원탈퇴
					</h4>
				</div>
				<div class="modal-body">
					<form action="DeleteForm" class="modal-form" method="post"
						name="DeleteForm" id="DeleteForm">
						<table class="project-regist-table">
							<tr>
								<td class="project-regist-table-td">
									<p>
										<strong>${sessionScope.userId }님의 비밀번호를 입력해주세요</strong>&nbsp;&nbsp;&nbsp;<span
											id="pwChk"></span>
									</p>
								</td>
							</tr>
							<tr>
								<td><input type="hidden" class="project-update-table-input"
									value="${sessionScope.userId }" id="userId" name="userId">
									<input type="password" class="project-update-table-input"
									id="userPw" name="userPw">
									<button type="submit" class="btn btn-primary checkBtn"
										id="pwCheckBtn">비밀번호확인</button></td>
							</tr>
							<tr>
								<td colspan="2" class="project-regist-table-td3"><input
									type="button" value="회원탈퇴" class="project-regist-table-button1"
									id="deleteBtn"></td>
							</tr>
						</table>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	<script>

		
	$(document).ready(function() {
    	
    	(function() {
    		var msg = "${msg}";
    		if(msg!='') {
    			alert(msg);
    		}
    	})();
    	
    })

	$("#joinBtn").click(function() {

		if ($("#userId").val() == '') {
			alert("아이디는 필수사항 입니다");
			return;
		} else if ($("#userPw").val() == '') {
			alert("비밀번호는 필수사항입니다");
			return;
		} else if ($("#userPw").val() != $("#userPwCheck").val()) {
			alert("비밀번호를 확인해주세요");
			return;
		} else if ($("#userName").val() == '') {
			alert("이름은 필수사항 입니다");
			return;
		} else if ($("#userEmail").val() == '') {
			alert("이메일은 필수사항 입니다");
			return;
		} else if ($("#userAddrZipNum").val() == '') {
			alert("우편번호는 필수사항 입니다");
			return;
		} else if ($("#userAddrBasic").val() == '') {
			alert("주소는 필수사항 입니다");
			return;
		} else {
			$("#JoinForm").submit();

		}

	})

	var id = document.getElementById("userId");
        id.onkeyup = function() {

            var regex = /^[A-Za-z0-9+]{4,12}$/; 
            if(regex.test(document.getElementById("userId").value )) {
                document.getElementById("userId").style.borderColor = "green";
                document.getElementById("msgId").innerHTML = "아이디중복체크는 필수 입니다";

            } else {
                document.getElementById("userId").style.borderColor = "red";
                document.getElementById("msgId").innerHTML = "";
            }
        }

        var pw = document.getElementById("userPw");
        pw.onkeyup = function(){
            var regex = /^.*(?=^.{8,}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/
             if(regex.test(document.getElementById("userPw").value )) {
                document.getElementById("userPw").style.borderColor = "green";
                document.getElementById("msgPw").innerHTML = "사용가능합니다";
            } else {
                document.getElementById("userPw").style.borderColor = "red";
                document.getElementById("msgPw").innerHTML = "";
            }
        }

        var userPwCheck = document.getElementById("userPwCheck");
        userPwCheck.onkeyup = function() {
            var regex = /^[A-Za-z0-9+]{8,16}$/;
            if(document.getElementById("userPwCheck").value == document.getElementById("userPw").value ) {
                document.getElementById("userPwCheck").style.borderColor = "green";
                document.getElementById("msgPwCheck").innerHTML = "비밀번호가 일치합니다";
            } else {
                document.getElementById("userPwCheck").style.borderColor = "red";
                document.getElementById("msgPwCheck").innerHTML = "비밀번호 확인란을 확인하세요";
            }
        }        

		var userEmail = document.getElementById("userEmail");
		userEmail.onkeyup = function() {
			var regex = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if(regex.test(document.getElementById("userEmail").value )) {
				document.getElementById("userEmail").style.borderColor = "green";
				document.getElementById("msgEmail").innerHTML = "이메일형식입니다";
			} else {
				document.getElementById("userEmail").style.borderColor = "red";
				document.getElementById("msgEmail").innerHTML = "이메일형식을 확인하세요";
			}
			
		}


		//주소 팝업창
		function goPopup() {

			var pop = window
					.open(
							"${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp",
							"pop",
							"width=570,height=420, scrollbars=yes, resizable=yes");

		}

		function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
				roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
				bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm,
				rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {

			document.getElementById("userAddrZipNum").value = zipNo;
			document.getElementById("userAddrBasic").value = roadAddrPart1;
			document.getElementById("userAddrDetail").value = addrDetail;

		}

		
		$("#idCheckBtn").click(function() {
			
			//console.log($("#userId").css("borderColor"))
			
			if($("#userId").val() == '' || $("#userId").css("borderColor") == "rgb(255, 0, 0)") {
				alert("아이디 규칙을 확인하세요");
				return;
			}
			
			var userId = $("#userId").val();
			console.log(userId);
			$.ajax({
				type: "POST",
				url: "idCheck",
				data: JSON.stringify({"userId":userId}),
				contentType: "application/json; charset=utf-8",
				success:function(data) {
					//console.log(data);
					
					if(data == 0) { //아이디 중복이 없는 경우
						$("#msgId").html("사용가능한 아이디 입니다");
						$("#userId").attr("readonly", true);
						
						
					} else { //아이디가 중복인 경우
						$("#msgId").html("중복된 아이디 입니다");
						$("#userId").focus(); //포커스
						
					}
					
				},
				error: function(status, error) {
					
					alert("서버에러입니다. 다시시작하세요");
				}
				
			})

		})
	
		
		
		$("#pwCheckBtn").click(function() {

			
			var userPw = $("#userPw").val();
			$.ajax({
				type: "POST",
				url: "pwCheck",
				data: JSON.stringify({"userPw":userPw}),
				contentType: "application/json; charset=utf-8",
				success:function(data) {
					//console.log(data);
					
					if(data == 0) { 
						alert("0");
						
					} else { 
						alert("1");
						
					}
					
				},
				error: function(status, error) {
					
					alert("서버에러입니다. 다시시작하세요");
				}
				
			})

		})

		
		$("#updateBtn").click(function() {
		
			if ($("#userName").val() == '') {
				alert("이름은 필수사항 입니다");
				return;
			} else if ($("#userEmail").val() == '') {
				alert("이메일은 필수사항 입니다");
				return;
			} else if ($("#userAddrZipNum").val() == '') {
				alert("우편번호는 필수사항 입니다");
				return;
			} else if ($("#userAddrBasic").val() == '') {
				alert("주소는 필수사항 입니다");
				return;
			} else {
				$("#UpdateForm").submit();
			}
			
		})
		

		
		$("#deleteBtn").click(function() {
			
			var userId = $("#userId").val();
			var userPw = $("#userPw").val(); 
			console.log(userId, userPw);
			
			if(userPw == "") {
				alert("비밀번호를 확인하세요");
			}
			
			$.ajax({
				
				type: "POST",
				url: "pwCheck",
				data: JSON.stringify({"userId":userId,"userPw":userPw}),
				contentType: "application/json; charset=utf-8",
				success:function(data) {
					console.log(data);
					if(data==1) {
						alert("탈퇴되었습니다");
						$("#checkPw").val("");
					} else {
						alert("비밀번호를 확인하세요");
					}
 					
				},
				error:function(status, error) {
					alert("회원탈퇴에 실패했습니다 관리자에게 문의해주세요");
				}
				
			})

		})
		
		
		
		
		//1. 카카오 초기화
        Kakao.init('e2bc77ca67693e7633f95f1e279e4985');

        //2. 카카오 로그인 버튼
        function loginWithKakao() {
            Kakao.Auth.login({

                success: function (authObj) {
                	
                    getInfo();
                },
                fail: function (err) {
                    alert('failed to login: ' + JSON.stringify(err))
                },

            })
        }

        //3. 사용자 정보 얻기
        function getInfo() {

            Kakao.API.request({
                url: '/v2/user/me',
                success: function (res) {
                    //alert(JSON.stringify(res))
                    console.log(res)

                    //아래의 코드로 id추출
                    var id = res.id;
                    var email = res.kakao_account.email;
                    var name = res.kakao_account.profile.nickname;


                    console.log(id, email, name);

                    //폼 요청 url변경
                    document.LoginForm.action = "localhost:8181/controller";

                    //폼 id의 value를 변경
                    document.LoginForm.id.value = id;
                    //
                    document.LoginForm.email.value = email;

                    document.LoginForm.name.value = name;

                    document.LoginForm.submit(); //서브밋
                    //location.href='../controller/';

                },
                fail: function (error) {
                    alert("사용자 요청 정보에 실패했습니다. 동의항목을 확인하세요.");
                },
            })

        }

        
	</script>

</body>
</html>