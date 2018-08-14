<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <jsp:include page="../layout/menurepairmen.jsp"></jsp:include>
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link href="/css/repair.css" rel="stylesheet">

    </head>

    <body>
        <div style="margin-top: 1cm; margin-left: 1cm; margin-right: 1cm; ">
            <h3>
                <div class="glyphicon glyphicon-list-alt">ทะเบียนอุปกรณ์ </div>
                <a href="/addparts" type="button" class="btn btn btn-primary pull-right">
                    <span class="glyphicon glyphicon-plus"></span>ทะเบียนอุปกรณ์</a>

            </h3>
            <br>
            <table id="parts" class="display">

                <!-- Header Table -->
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>หมวดหมู่อุปกรณ์</th>
                        <th>ชื่ออุปกรณ์</th>
                        <th>ยี่ห้ออุปกรณ์</th>
                        <th>ชื่อผู้เบิกอุปกรณ์</th>
                        <th>รูปภาพ</th>
                        <th>ชื่อลูกค้า</th>
                        <th>ราคาอุปกรณ์</th>
                        <th>ประวัติการซ่อม</th>
                        <th>รายละเอียด</th>
                    </tr>
                </thead>
                <!-- Footer Table -->
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>หมวดหมู่อุปกรณ์</th>
                        <th>ชื่ออุปกรณ์</th>
                        <th>ยี่ห้ออุปกรณ์</th>
                        <th>ชื่อผู้เบิกอุปกรณ์</th>
                        <th>รูปภาพ</th>
                        <th>ชื่อลูกค้า</th>
                        <th>ราคาอุปกรณ์</th>
                        <th>ประวัติการซ่อม</th>
                        <th>รายละเอียด</th>
                    </tr>
                </tfoot>
            </table>

        </div>
    </body>

    <script>
        $(document).ready(function() {
            var table = $('#parts').DataTable({
                "sAjaxSource": "/xxx",
                "sAjaxDataProp": "",
                "order": [
                    [0, "asc"]
                ],
                "aoColumns": [

                    {
                        "mData": ""
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง
                            return '<a href=#>' + 'aa' + '</a>';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง
                            return '<a href=#>' + 'bb' + '</a>';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง
                            return '<a href=#>' + 'cc' + '</a>';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง
                            return '<a href=#>' + 'dd' + '</a>';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง
                            return '<a href=#>' + 'gg' + '</a>';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง
                            return '<a href=#>' + 'xx' + '</a>';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง
                            return '<a href=#>' + 'xx' + '</a>';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง
                            return '<a href=#>' + 'xx' + '</a>';
                        }
                    }, {
                        "mData": "",
                        "mRender": function(data, type, full) { //full คือ  ข้อมูลของ ตาราง

                            return '<a href="/">' + '<span class="glyphicon glyphicon-edit">เพิ่มเติม</span>' + '</a>';

                        }
                    },
                ]
            })
        });
    </script>

    </html>