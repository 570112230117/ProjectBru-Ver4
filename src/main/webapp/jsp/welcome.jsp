<%@page import="com.bru.model.RepairBean"%>
    <%@page import="com.bru.model.LoginBean"%>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <jsp:include page="../layout/menu.jsp"></jsp:include>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Welcome</title>
            </head>
            <%
	LoginBean bean = null;
            RepairBean beanRe = null;
            RepairBean bean1 = null;
            RepairBean bean2 = null;
            RepairBean bean3 = null;
            RepairBean bean4 = null;
            RepairBean bean5 = null;
            RepairBean bean6 = null;
%>
                <%
	bean = (LoginBean) request.getSession().getAttribute("LoginUser");
                beanRe = (RepairBean) request.getAttribute("beanRe");
                bean1 = (RepairBean) request.getAttribute("bean1");
                bean2 = (RepairBean) request.getAttribute("bean2");
                bean3 = (RepairBean) request.getAttribute("bean3");
                bean4 = (RepairBean) request.getAttribute("bean4");
                bean5 = (RepairBean) request.getAttribute("bean5");
                bean6 = (RepairBean) request.getAttribute("bean6");
%>

                    <body>
                        <div class="container-fluid">
                            <div class="box box-default">
                                <div>
                                    <h3>รายการแจ้งซ่อมทั้งหมด <small>รวมรายการแจ้งซ่อมทั้งหมด <span class="label label-danger"><%=beanRe.getRepairId() %></span> รายการ</small>
                                        <a href="/">
                                            <span class="btn btn-default pull-right">
                                            <span class="glyphicon glyphicon-plus"></span>เพิ่มข้อมูล</span>
                                        </a>
                                    </h3>
                                    <br>
                                    <div>
                                        <a href="#">รอตรวจสอบ</a> <span class="label bg-yellow"><%=bean1.getRepairId()%></span>
                                        <a href="#">ส่งซ่อม</a> <span class="label bg-aqua"><%=bean2.getRepairId()%></span>
                                        <a href="#">นำกลับมาซ่อม</a> <span class="label bg-black"><%=bean3.getRepairId()%></span>
                                        <a href="#">ซ่อมเสร็จแล้ว</a> <span class="label bg-green"><%=bean4.getRepairId()%></span>
                                        <a href="#">ซ่อมไม่ได้</a> <span class="label bg-red"><%=bean5.getRepairId()%></span>
                                    </div>
                                    <br>
                                    <div>
                                        <table id="Table" class="table table-striped table-bordered" style="width:100%">

                                            <!-- Header Table -->
                                            <thead>
                                                <tr>
                                                    <th>วันที่แจ้งซ่อม</th>
                                                    <th>ชื่อลูกค้า</th>
                                                    <th>การประกัน</th>
                                                    <th>หมวดสินค้า</th>
                                                    <th>หัวข้อเรื่องการแจ้งซ่อม</th>
                                                    <th>นัดวันซ่อม</th>
                                                    <th>สาเหตุ / วิธีแก้ไข</th>
                                                    <th>ผู้รับแจ้ง</th>
                                                    <th>สถานะ</th>
                                                    <th>ตอบกลับ</th>
                                                    <th>รายละเอียด</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                                <tr>
                                                    <th>วันที่แจ้งซ่อม</th>
                                                    <th>ชื่อลูกค้า</th>
                                                    <th>การประกัน</th>
                                                    <th>หมวดสินค้า</th>
                                                    <th>หัวข้อเรื่องการแจ้งซ่อม</th>
                                                    <th>นัดวันซ่อม</th>
                                                    <th>สาเหตุ / วิธีแก้ไข</th>
                                                    <th>ผู้รับแจ้ง</th>
                                                    <th>สถานะ</th>
                                                    <th>ตอบกลับ</th>
                                                    <th>รายละเอียด</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </body>
                    <script>
                        $(document).ready(function() {
                            var table = $('#Table').DataTable({
                                "sAjaxSource": "/all",
                                "iDisplayLength": 25,
                                "sAjaxDataProp": "",
                                "order": [
                                    [0, "DESC"]
                                ],
                                "aoColumns": [{
                                        "mData": "repairDateStr",
                                        "sWidth": "120px"
                                    }, {
                                        "mData": "repairname",
                                        "sWidth": "150px",
                                    }, {
                                        "mData": "",
                                        "sWidth": "100px",
                                        "mRender": function(data, type, full) {
                                            if (full.repairWarranty == 'ในประกัน') {
                                                return '<center><span class="label label-success">' + full.repairWarranty + '</span></center>';
                                            } else {
                                                return '<center><span class="label label-danger">' + full.repairWarranty + '</span></center>';
                                            }

                                        }
                                    }, {
                                        "mData": "repairProduct",
                                        "sWidth": "100px",
                                    },

                                    {
                                        "mData": "repairWaste",
                                        "sWidth": "300px",
                                    }, {
                                        "mData": "repairAppointment",
                                        "sWidth": "70px",
                                    }, {
                                        "mData": "",
                                        "sWidth": "300px",
                                        "mRender": function(data, type, full) {
                                            return '<a href=#>' + 'สาเหตุ / วิธีแก้' + '</a>';
                                        }
                                    }, {
                                        "mData": "",
                                        "mRender": function(data, type, full) {
                                            return '<a href=#>' + 'ผู้รับแจ้ง' + '</a>';
                                        }
                                    }, {
                                        "mData": "",
                                        "sWidth": "80px",
                                        "mRender": function(data, type, full) {
                                            return '<a href=#>' + 'สถานะ' + '</a>';
                                        }
                                    }, {
                                        "mData": "",
                                        "sWidth": "130px",
                                        "mRender": function(data, type, full) {
                                            return '<a href=#>' + 'ช่าง A' + '</a>';
                                        }
                                    }, {
                                        "mData": "",
                                        "sWidth": "100px",
                                        "mRender": function(data, type, full) {
                                            return '<center><a href="/repairmen/' + full.repairId + '" ' + 'class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-edit"></span>' + '</a> <a href="/update/' + full.repairId + '" ' + 'class="btn btn-info btn-sm"><span class="glyphicon glyphicon-pencil"></span>' + '</a></center>';

                                        }
                                    },

                                ]
                            })
                        });
                    </script>

            </html>