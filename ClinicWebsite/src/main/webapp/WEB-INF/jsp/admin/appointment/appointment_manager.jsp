<%-- 
    Document   : appointment_manager
    Created on : 17 Mar 2023, 15:24:53
    Author     : thien
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="mt-4">Quản lý cuộc hẹn</h1>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="index.html">admin</a></li>
    <li class="breadcrumb-item active">quanly-cuochen</li>
</ol>
<c:if test="${err != null}">
    <div class="alert alert-danger">${err}</div>
</c:if>


<div id="managerTable" class="table table-striped w-auto" >
    <table  class="slide-table table table-striped table-bordered" width="100%">
        <thead>
        <form action="">
            <div class="row mb-3">
                <div class="col-md-3">
                    <a href="<c:url value="/admin/appointment-manager/add-appointment"/>" class=" btn btn-primary btn-xs pull-right"><b>+</b>Thêm Cuộc Hẹn</a>
                </div>

                <div class="col-md-3">
                    <select name="quantity" id="inputState" class="form-control">
                        <option>10</option>
                        <option>15</option>
                        <option>All</option>
                    </select>
                </div>

                <div class="col-md-2">
                    <input type="submit" value="Lọc" class="btn btn-danger"/>
                </div>  
            </div>
        </form>

        <tr>
            <th class="th-sm">Mã</th> 
            <th>Tên Bác Sĩ</th>
            <th>Tên Bệnh Nhân</th>
            <th>Ngày hẹn</th>
            <th>Họ</th>
            <th>Tên</th>
            <th>Email</th>
            <th>Số điện thoại</th>
            <th>Chi tiết</th>
            <th><i class="fas fa-cog"></i>
            </th>
        </tr>
        </thead>
        <tbody>

            <c:forEach items="${appointments}" var="s">
                <tr>
                    <td>${s.appointmentId}</td>
                    <td>${s.doctor.firstName}</td>
                    <td>${s.patient.lastName}</td>
                    <td>${s.appointmentDate}</td>
                    <td>${s.lastName}</td>
                    <td>${s.firstName}</td>
                    <td>${s.email}</td>
                    <td>${s.phone}</td>
                    <td>${s.description}</td>

                    <td class="setting setting d-flex justify-content-between align-items-center gap-2 w-100 border-0">

                        <a class="p-2" data-toggle="tooltip" title="xem thông tin" title="thông tin"href="<c:url value="/admin/quanly-slide/chitiet-slide/${s.appointmentId}"/>"> <i class="fas fa-info-circle" style="color:#18d26e"></i></a>
                        <a class="p-2" data-toggle="tooltip" title="chỉnh sửa" href="<c:url value="/admin/appointment-manager/edit-appointment/${s.appointmentId}"/>">
                            <i class="fas fa-edit" style="color:#6633ff"></i>
                        </a>

                        <a class="p-2" id="modal" href="<c:url value="/admin/appointment-manager/delete-appointment/${s.appointmentId}"/>" name="deleteButton" type="button" class="btn btn-primary" data-toggle="tooltip modal" data-target="#deleteModal" title="Xóa cuộc hẹn">
                            <i class="fas fa-trash-alt" style="color:#ed3c0d"></i>
                        </a>

                    </td>
                </tr>
            </c:forEach>
        </tbody>

    </table>
</div>

<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xóa cuộc hẹn</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có muốn chắn xóa cuộc hẹn
            </div>
            <div class="modal-footer">
                <a href="" class="btn btn-primary" id="delRef">Vâng,tôi chắc</a> 
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>