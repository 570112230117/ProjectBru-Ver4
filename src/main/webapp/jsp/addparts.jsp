<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*"%>
        <%@ page import="javax.servlet.*,java.text.*"%>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <jsp:include page="../layout/menurepairmen.jsp"></jsp:include>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Insert Parts</title>
            </head>

            <body>
                <div class="container">
                    <h3 align="center">ทะเบียนอุปกรณ์</h3><br>
                    <div class="box box-danger">
                        <div class="box-header with-border">
                            <h3 class="box-title">ข้อมูลทะเบียนอุปกรณ์</h3>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label>เลขครุภัณฑ์ / รหัส :</label>
                                    <input type="text" class="form-control" placeholder="เลขครุภัณฑ์ / รหัส">
                                </div>
                                <div class="col-xs-4">
                                    <label>Serial Number :</label>
                                    <input type="text" class="form-control" placeholder="Serial Number">
                                </div>
                                <div class="col-xs-4">
                                    <label>ชื่อเครื่อง :</label>
                                    <input type="text" class="form-control" placeholder="ชื่อเครื่อง">
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label>วันที่รับเข้าระบบ :</label>
                                    <input type="text" class="form-control" disabled value="<%Date dNow = new Date();
										SimpleDateFormat ft = new SimpleDateFormat(" dd-MM-yyyy ");
										out.print(ft.format(dNow));%>">
                                </div>
                                <div class="col-xs-4">
                                    <label>หมวดหมู่อุปกรณ์ :</label>
                                    <input type="text" class="form-control" placeholder="หมวดหมู่อุปกรณ์">
                                </div>
                                <div class="col-xs-4">
                                    <label>ประเภทอุปกรณ์ :</label>
                                    <input type="text" class="form-control" placeholder="ประเภทอุปกรณ์">
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label>ยี่ห้ออุปกรณ์</label>
                                    <input type="text" class="form-control" placeholder="ยี่ห้ออุปกรณ์">
                                </div>
                                <div class="col-xs-4">
                                    <label>การรับประกัน :</label>
                                    <input type="text" class="form-control" placeholder="การรับประกัน">
                                </div>
                                <div class="col-xs-4">
                                    <label>ราคา :</label>
                                    <input type="text" class="form-control" placeholder="0">
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label>หมายเหตุ</label>
                                    <textarea class="form-control" id="Waste" rows="3" name="waste"></textarea>
                                </div>
                                <div class="col-xs-4">
                                    <label>สถานะ</label>
                                    <div class="radio">
                                        <label><input type="radio" name="status" checked >ใช้งาน</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" name="status">เลิกใช้งาน</label>
                                    </div>
                                </div>
                                <div class="col-xs-4">

                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="pull-right ">
                                <button type="submit " class="btn btn-success " onclick="insertConfirm() ">ยืนยัน</button>
                                <button type="button " class="btn btn-secondary " onclick="window.location.href='/repair' ">ยกเลิก</button>
                            </div>
                        </div>
                    </div>
            </body>

            </html>