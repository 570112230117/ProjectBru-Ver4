<%@page import="com.bru.model.RepairBean"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
        <jsp:include page="../commons/head.jsp"></jsp:include>
        <%
    RepairBean beanRe = null;
    RepairBean bean1 = null;
    RepairBean bean2 = null;
    RepairBean bean3 = null;
    RepairBean bean4 = null;
    RepairBean bean5 = null;
    RepairBean bean6 = null;
%>

            <%
    beanRe = (RepairBean) request.getAttribute("beanRe");
    bean1 = (RepairBean) request.getAttribute("bean1");
    bean2 = (RepairBean) request.getAttribute("bean2");
    bean3 = (RepairBean) request.getAttribute("bean3");
    bean4 = (RepairBean) request.getAttribute("bean4");
    bean5 = (RepairBean) request.getAttribute("bean5");
    bean6 = (RepairBean) request.getAttribute("bean6");
%>

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
                                <li><a href="/table">รายการแจ้งซ่อมทั้งหมด</a></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">ตรวจสอบสถานะ <span class="label label-danger"><%=beanRe.getRepairId() %></span>
                        <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="/s1">รายการรอตรวจสอบข้อมูล <span class="label bg-aqua"><%=bean1.getRepairId()%></span></a></li>
                                        <li><a href="/s2">ส่งซ่อม <span class="label bg-black"><%=bean2.getRepairId()%></span></a></li>
                                        <li><a href="/s3">นำกลับมาซ่อม <span class="label bg-yellow"><%=bean3.getRepairId()%></span></a></li>
                                        <li><a href="/s4">ซ่อมเสร็จแล้ว <span class="label bg-green"><%=bean4.getRepairId()%></span></a></li>
                                        <li><a href="/s5">ซ่อมไม่ได้ <span class="label bg-red"><%=bean5.getRepairId()%></span></a></li>
                                        <li><a href="/s6">ยกเลิก <span class="label bg-red"><%=bean6.getRepairId()%></span></a></li>
                                    </ul>
                                </li>
                                <li><a href="/warrantyrepairmen">ตรวจสอบอายุประกัน</a></li>
                                <li><a href="/part">ทะเบียนอุปกรณ์</a></li>
                                <li><a href="/report">รายงาน</a></li>
                                <li><a href="javascript: document.logoutForm.submit()"><span class="glyphicon glyphicon-log-out"></span>
						ออกจากระบบ</a></li>
                                <form name="logoutForm" action="logout" method="post" th:hidden="true"></form>
                            </ul>
                        </div>
                    </div>
                </nav>