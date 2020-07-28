<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZERO STRESS</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/bootstrap-theme.css">
    
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>

 	<link rel="stylesheet" href="css/style.css">

</head>
<body>
 <!-- 게시판 등록 Modal -->
  <div class="modal fade" id="modal-board-regist" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h4 class="modal-title"><span class="modal-span">CRETIVE TEAM</span> 게시글 등록</h4>
        </div>
        <div class="modal-body">
            <form action="#" class="modal-form" method="post"> 
                <table>
                    <table class="project-board-table">
                        <tr>
                            <td class="project-board-table-td">
                                <p><strong>작성자</strong>&nbsp;&nbsp;&nbsp;<span id="writerCheck"></span></p>
                            </td>
                        </tr>
                        <tr>
                            <td><input class="project-board-table-input" type="text" placeholder="최대 10자"></td>
                        </tr>
                        <tr>
                            <td class="project-board-table-td">
                                <p><strong>제목</strong>&nbsp;&nbsp;&nbsp;<span id="titleCheck"></span></p>
                            </td>
                        </tr>
                        <tr>
                            <td><input class="project-board-table-input" type="text" placeholder="최소 8자"></td>
                        </tr>
                        <tr>
                          <td class="project-board-table-td">
                              <p><strong>내용</strong>&nbsp;&nbsp;&nbsp;<span id="contentCheck"></span></p>
                          </td>
                        </tr>
                        <tr>
                          <td class="project-board-table-td">
                            <textarea class="form-control project-board-table-textarea" rows="5" name='bContent'></textarea>
                          </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="project-board-table-td3">
                                <input class="project-board-table-button1" type="submit" value="등록">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="project-board-table-td3">
                                <input class="project-board-table-button2" type="button" value="취소">
                            </td>
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

  <!-- 게시판 상세보기 Modal -->
  <div class="modal fade" id="modal-board-content" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">

        <!-- Modal Header -->
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h4 class="modal-title"><span class="modal-span">CRETIVE TEAM</span> 게시글 등록</h4>
        </div>
        <div class="modal-body">
            <form action="#" class="modal-form" method="post"> 
                <table>
                    <table class="project-board-table">
                        <tr>
                            <td class="project-board-table-td">
                                <p><strong>작성자</strong>&nbsp;&nbsp;&nbsp;<span id="writerCheck"></span></p>
                            </td>
                        </tr>
                        <tr>
                            <td><input class="project-board-table-input" type="text" readonly></td>
                        </tr>
                        <tr>
                            <td class="project-board-table-td">
                                <p><strong>제목</strong>&nbsp;&nbsp;&nbsp;<span id="titleCheck"></span></p>
                            </td>
                        </tr>
                        <tr>
                            <td><input class="project-board-table-input" type="text" readonly></td>
                        </tr>
                        <tr>
                          <td class="project-board-table-td">
                              <p><strong>내용</strong>&nbsp;&nbsp;&nbsp;<span id="contentCheck"></span></p>
                          </td>
                        </tr>
                        <tr>
                          <td class="project-board-table-td">
                            <textarea class="form-control project-board-table-textarea" rows="5" name='bContent' readonly></textarea>
                          </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="project-board-table-td3">
                                <input class="project-board-table-button1" type="button" value="목록">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="project-board-table-td3">
                                <input class="project-board-table-button2" type="button" value="수정">
                            </td>
                        </tr>
                        <tr>
                          <td colspan="2" class="project-board-table-td3">
                              <input class="project-board-table-button3" type="button" value="삭제">
                          </td>
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
</body>
</html>