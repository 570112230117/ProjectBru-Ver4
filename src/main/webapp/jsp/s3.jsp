<%@page import="com.bru.model.RepairBean"%>
    <%@page import="com.bru.model.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <jsp:include page="../layout/menurepairmen.jsp"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
  <%
	        LoginBean bean = null;
            RepairBean beanRe = null;

%>
                <%
	        bean = (LoginBean) request.getSession().getAttribute("LoginUser");
            beanRe = (RepairBean) request.getAttribute("beanRe");

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
                                        <table id="employeesTable" class="table table-striped table-bordered" style="width:100%">

                                            <!-- Header Table -->
                                            <thead>
                                                <tr>
                                                    <th>วันที่แจ้งซ่อม</th>
                                                    <th>ชื่อ - นามสกุล</th>
                                                    <th>การประกัน</th>
                                                    <th>หมวดสินค้า</th>
                                                    <th>หัวข้อเรื่องการแจ้งซ่อม</th>
                                                    <th>นัดวันซ่อม</th>
                                                    <th>สาเหตุ / วิธีแก้ไข</th>
                                                    <th>สถานะ</th>
                                                    <th>ตอบกลับ</th>
                                                    <th>รายการเมนู</th>
                                                </tr>
                                            </thead>
                                            <tfoot>
                                                <tr>
                                                    <th>วันที่แจ้งซ่อม</th>
                                                    <th>ชื่อ - นามสกุล</th>
                                                    <th>การประกัน</th>
                                                    <th>หมวดสินค้า</th>
                                                    <th>หัวข้อเรื่องการแจ้งซ่อม</th>
                                                    <th>นัดวันซ่อม</th>
                                                    <th>สาเหตุ / วิธีแก้ไข</th>
                                                    <th>สถานะ</th>
                                                    <th>ตอบกลับ</th>
                                                    <th>รายการเมนู</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog modal-lg">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">รายละเอียด</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div id="content">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <p><b>ข้อมูลปัญหา</b></p>
                                                    <table id="w0" class="table table-striped table-bordered detail-view">
                                                        <tbody>
                                                            <tr>
                                                                <th width="15%">วันที่เวลาแจ้ง</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">ชื่อ - นามสกุล</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">ที่อยู่</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">เบอร์โทรศัพท์</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">อีเมล</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">หมวดสินค้า</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">ประเภทสินค้า</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">ยี่ห้อ</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">ปัญหา</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">รายละเอียดเพิ่มเติม</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">วันที่นัดซ่อม</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <p><b>สาเหตุ / วิธีแก้ไข</b></p>
                                                    <table id="w1" class="table table-striped table-bordered detail-view">
                                                        <tbody>
                                                            <tr>
                                                                <th width="15%">ช่วงวันที่ซ่อม</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">ช่างที่รับผิดชอบ</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">วันที่เสร็จ</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">สาเหตุ / วิธีแก้ไข</th>
                                                                <td>xxx</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">ค่าใช้จ่าย</th>
                                                                <td>0</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="15%">สถานะ</th>
                                                                <td><span style="color:#009900">สำเร็จ</span></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>
                                            <script src="/itv3/application/assets/2ca8e1c3/jquery.js"></script>
                                            <script type="text/javascript">
                                                //set for emply data
                                                $('.not-set').text('');
                                            </script>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal"><i class="glyphicon glyphicon-off"></i> ปิด</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </body>
                    <script>
                        $(document).ready(function() {
                            var table = $('#employeesTable').DataTable({
                                "sAjaxSource": "/status33",
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
                                        "mData": "repairmenCause",

                                    }, {
                                        "mData": "",
                                        "mRender": function(data, type, full) {
                                            if (full.repairmenStatus == '0') {
                                                return '<center><span class="label label-primary">' + 'แจ้งซ่อม' + '</span></center>';
                                            } else if (full.repairmenStatus == '1') {
                                                return '<center><span class="label label-info">' + 'รอตรวจสอบ' + '</span></center>';
                                            } else if (full.repairmenStatus == '2') {
                                                return '<center><span class="label label-default">' + 'ส่งซ่อม' + '</span></center>';
                                            } else if (full.repairmenStatus == '3') {
                                                return '<center><span class="label label-warning">' + 'นำกลับมาซ่อม' + '</span></center>';
                                            } else if (full.repairmenStatus == '4') {
                                                return '<center><span class="label label-success">' + 'ซ่อมเสร็จแล้ว' + '</span></center>';
                                            } else if (full.repairmenStatus == '5') {
                                                return '<center><span class="label label-danger">' + 'ซ่อมไม่ได้' + '</span></center>';
                                            } else if (full.repairmenStatus == '6') {
                                                return '<center><span class="label label-danger">' + 'ยกเลิก' + '</span></center>';
                                            }
                                        }
                                    }, {
                                        "mData": "repairmenId",

                                    }, {
                                        "mData": "",
                                        "sWidth": "100px",
                                        "mRender": function(data, type, full) {
                                            return '<center><a href="/repairmen/' + full.repairId + '" ' + 'class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-edit"></span>' + '</a> <a href="/list/' + full.id + '" ' + 'class="btn btn-info btn-sm view_detail" data-toggle="modal" data-target="#myModal"><i class="glyphicon glyphicon-file"></i>  ' + '</a></center>';
                                            //return '<center><a href="/repairmen/' + full.repairId + '" ' + 'class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-edit"></span>' + '</a> <a href="/update/' + full.repairId + '" ' + 'class="btn btn-info btn-sm"><span class="glyphicon glyphicon-pencil"></span>' + '</a></center>';
                                            // return '<a href="/list/' + full.id + '" ' + 'class="btn btn-default btn-xs view_detail" data-toggle="modal" data-target="#myModal"><i class="glyphicon glyphicon-file"></i> รายละเอียด</a>';

                                        }
                                    },

                                ]
                            })
                        });
                    </script>
</html>