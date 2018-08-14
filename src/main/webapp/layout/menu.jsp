<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <jsp:include page="../commons/head.jsp"></jsp:include>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
                <a class="navbar-brand" href="/">Logo</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">บันทึกการแจ้งซ่อม</a></li>
                    <li><a href="/tableadmin">รายการแจ้งซ่อมทั้งหมด</a></li>
                    <li><a href="/part">ทะเบียนอุปกรณ์</a></li>
                    <li><a href="/report">รายงาน</a></li>
                    <li><a href="/add">เพิ่มช่างซ่อมในระบบ</a></li>
                    <li><a href="javascript: document.logoutForm.submit()"><span class="glyphicon glyphicon-log-out"></span>
						ออกจากระบบ</a></li>
                    <form name="logoutForm" action="logout" method="post" th:hidden="true"></form>
                </ul>
            </div>
        </div>
    </nav>