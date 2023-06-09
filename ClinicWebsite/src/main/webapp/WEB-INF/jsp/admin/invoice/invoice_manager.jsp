<%-- 
    Document   : invoice_manager
    Created on : 17 Mar 2023, 15:52:16
    Author     : thien
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="mt-4">Quản Hoá Đơn</h1>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="index.html">admin</a></li>
    <li class="breadcrumb-item active">quanly-hoadon</li>
</ol>
<c:if test="${err != null}">
    <div class="alert alert-danger">${err}</div>
</c:if>
<div id="managerTable" class="table table-striped w-auto" >

    <table  class="table table-striped table-bordered" width="100%">

        <thead>
        <form action="">
            <div class="row mb-3">
                <div class="col-md-3">
                    <a href="<c:url value="/admin/invoice-manager/add-invoice"/>" class=" btn btn-primary btn-xs pull-right"><b>+</b>Thêm hóa đơn</a>
                </div>
                <div class="col-md-3">

                    <select name="quantity" id="inputState" class="form-control">

                        <option>10</option>
                        <option>15</option>
                        <option>All</option>

                    </select>
                </div>


                <div style="margin-right: 0; margin-left: auto;"class="col-md-2">
                    <input type="submit" value="Lọc" class="btn btn-danger"/>
                </div>  
            </div>
        </form>
        <tr>
            <th class="th-sm">Mã</th>
            <th>Ngày tạo</th>
            <th>Giá tiền</th>
            <th>Mã toa thuốc</th>
            <th>Y tá tạo hóa đơn</th>

            <th><i class="fas fa-cog"></i></th>
        </tr>


        </thead>
        <tbody>

            <c:forEach items="${invoices}" var="s">
                <tr>
                    <td>${s.id}</td>
                    <td>${s.createdDate}</td>
                    <td>${s.totalPrice}</td>
                    <td>${s.prescription.id}</td>
                    <td>${s.nurse.firstName}</td>

                    <td class="setting d-flex justify-content-between align-items-center gap-2 w-100 border-0">

                        <a class="p-0" data-toggle="tooltip" title="xem thông tin" title="thông tin"href="<c:url value="/admin/quanly-hoadon/chitiet-hoadon/${s.id}"/>"> <i class="fas fa-info-circle" style="color:#18d26e"></i></a>
                        <a class="p-0" data-toggle="tooltip" title="chỉnh sửa" href="<c:url value="/admin/invoice-manager/edit-invoice/${s.id}"/>">
                            <i class="fas fa-edit" style="color:#6633ff"></i>
                        </a>
                        <a class="p-0" id="modal" href="<c:url value="/admin/invoice-manager/delete-invoice/${s.id}"/>" name="deleteButton" type="button" class="btn btn-primary" data-toggle="tooltip modal" data-target="#deleteModal" title="Xóa hóa đơn">
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
                <h5 class="modal-title" id="exampleModalLabel">Xóa hóa đơn</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có muốn chắn xóa hóa đơn
            </div>
            <div class="modal-footer">
                <a href="" class="btn btn-primary" id="delRef">Vâng,tôi chắc</a> 
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>



