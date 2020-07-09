<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동의과학대학교 도서관</title>
  <!-- Bootstrap -->        
<link href="/Cheetah/Content/css/jquery-ui.css" rel="stylesheet"/>
<link href="/Cheetah/Content/css/advence-search.css" rel="stylesheet"/>
<link href="/Cheetah/Content/css/bootstrap-material-design.css" rel="stylesheet"/>
<link href="/Cheetah/Content/css/bootstrap.css" rel="stylesheet"/>
<link href="/Cheetah/Content/css/custom2.css" rel="stylesheet"/>
<link href="/Cheetah/Content/css/nprogress.css" rel="stylesheet"/>

    <link href="/Cheetah/Areas/DITL/Content/Css/gnb.css" rel="stylesheet"/>
<link href="/Cheetah/Areas/DITL/Content/Css/footer.css" rel="stylesheet"/>
<link href="/Cheetah/Areas/DITL/Content/Css/common.css" rel="stylesheet"/>


<script src="/Cheetah/Scripts/modernizr-2.6.2.js"></script>
<script src="/Cheetah/Scripts/jquery-1.10.2.js"></script>
<script src="/Cheetah/Scripts/jquery-ui.js"></script>
<script src="/Cheetah/Scripts/jquery.unobtrusive-ajax.min.js"></script>
<script src="/Cheetah/Scripts/jquery.validate.min.js"></script>
<script src="/Cheetah/Scripts/jquery.validate.unobtrusive.min.js"></script>
<script src="/Cheetah/Scripts/jquery.toaster.js"></script> 
<script src="/Cheetah/Scripts/bootstrap.min.js"></script>
<script src="/Cheetah/Scripts/knockout-3.4.0.debug.js"></script>
<script src="/Cheetah/Scripts/sammy-0.7.5.js"></script>
<script src="/Cheetah/Scripts/respond.min.js"></script>
<script src="/Cheetah/Scripts/ripples.min.js"></script>
<script src="/Cheetah/Scripts/material.min.js"></script>
<script src="/Cheetah/Scripts/hover.js"></script>
<script src="/Cheetah/Scripts/footable.js"></script>
<script src="/Cheetah/Scripts/ui_custom.js"></script>
<script src="/Cheetah/Scripts/Nwagon.js"></script>
<script src="/Cheetah/Scripts/Nwagon_no_vml.js"></script>
<script src="/Cheetah/Areas/DITL/Content/js/common.js"></script>
<script src="/Cheetah/Areas/DITL/Content/js/DITL.js"></script>

<script type="text/javascript">
    //$(function () {
    //    $('.footable').footable();
    //});
    function doSearchKey(Type, event) {
        var keyCode = event.which ? event.which : event.keyCode;
        if (keyCode == 13) {
            doSearch(Type);
            event.preventDefault();
        }
    }
    function doSearch(Type) {
        var objInput = "", empty = "";
        if (Type == "PC") {
            objInput = $("#search").val();
            if (objInput == "") {
                empty = "Ok";
            }
        }
        else if (Type == "Mobile") {
            objInput = $("#SearchText").val();
            if (objInput == "") {
                empty = "Ok";
            }
        }
        if (empty == "Ok") {
            alert("검색어를 입력 하세요.");
            //showMessage("warning", "오류", "검색어를 입력 하세요.", "");
        }
        else {
            //objInput = escape(objInput);
            //location.href = "http://www.daum.net";
            location.href = "/Cheetah/Search/AdvenceSearch#/total/" + objInput;
        }
    }
    function showMessage(icon, title, content, footer) {

        $(".bs-msg-modal-sm").find(".modal-title").empty().append("<span class='glyphicon glyphicon-" + icon + "-sign'></span> <span>" + title + "</span>")
            .end().find(".modal-body").empty().append("<span>" + content + "</span>")
            .end().find(".modal-footer").empty().append(footer)
            .end().modal("show");
    }
</script>

<header>
   <div class="logo">
      <!-- 로고 -->
        <h2>
            <a href="/Cheetah/Home/Index">
                <img src="/Cheetah/Areas/DITL/content/images/Main/logo.png" width="315" height="49" alt="동의과학대학교 도서관" />
            </a>
        </h2>
        <!-- 로고 끝 -->
    </div>
    </header>
    <nav>
        <ul class="clearFix menu">
        <li>
                    <a href="javascript:" class="menu-tit"><span>도서관안내</span></a>
                    <ul class="gnbSub">
         <li><a href="/Cheetah/DITL/LibGuide/LibGuide01">도서관 소개</a></li>
         <li><a href="/Cheetah/DITL/LibGuide/LibGuide02">개관시간/대출규정</a></li>
         <li><a href="/Cheetah/DITL/LibGuide/LibGuide03">자료이용안내</a></li>
         <li><a href="/Cheetah/DITL/LibGuide/LibGuide04">자료접근법</a></li>
         <li><a href="/Cheetah/Static/TotalVisit">도서관통계</a></li>
         <li><a href="http://library.dit.ac.kr:8081/EZ5500/SEAT/RoomStatus.aspx" target="_blank">열람실좌석현황</a></li>
         <li><a href="/Cheetah/DITL/LibGuide/LibGuide05">도서관 알아보기</a></li>
                  </ul>
                </li>
              </ul></nav>  
              
</head>
<body>

</body>
</html>