<%-- 
    Document   : drug_manager
    Created on : 17 Mar 2023, 15:50:00
    Author     : thien
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h4 class="mt-4">Quản lý Thuốc</h4>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="<c:url value="/admin"/>">admin</a></li>
    <li class="breadcrumb-item active">quanly-thuoc</li>
</ol>
<c:if test="${err != null}">
    <div class="alert alert-danger">${err}</div>
</c:if>
<div class="row mb-3">
    <div class="col-md-3">
        <a href="<c:url value="/admin/drug-manager/add-drug"/>" class=" btn btn-primary btn-xs pull-right"><b>+</b>Thêm thuốc</a>
    </div>
    <div class="col-md-8">
        <div class="input-group" id="adv-search">
            <form  id ="find"role="form">
                <input value="${name}" name="name" type="text" class="form-control" placeholder="Nhập từ khóa theo tên" />
            </form>
            <div class="input-group-btn">
                <div class="btn-group" role="group">
                    <div class="dropdown dropdown-lg">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                        <div class="dropdown-menu dropdown-menu-right" role="menu">
                            <form  class="form-horizontal" role="form">

                                <div class="form-group">
                                    <label for="name">Nhập tên</label>
                                    <input value="${name}" name ="name" class="form-control" type="text" />
                                </div>
                                <div class="form-group">
                                    <label for="pagequan">Số lượng hiển thị</label>
                                    <input autocomplete="off" value="${pagequan}" class="form-control" name ="pagequan"maxlength="3" type="text" onkeypress="return onlyNumberKey(event)" list="cars" />
                                    <datalist id="cars">
                                        <option>all</option>
                                    </datalist>
                                </div>

                                <button type="submit" class="btn btn-primary">Tìm</button>
                            </form>
                        </div>
                    </div>
                    <button type="submit" form="find" class="btn btn-primary">LỌC</button>

                </div>
            </div>
        </div>
    </div>
</div>
<div id="managerTable" class="table table-striped w-auto" >

    <table  class="table table-striped table-bordered" width="100%">

        <thead>

            <tr>
                <th class="th-sm">Mã</th>
                <th>Tên</th>
                <th>Giá</th>
                <th>Số lượng</th>
                <th>Hạn sử dụng</th>
                <th>Ngày sản xuất</th>

                <th>Chỉnh sửa</th>
                <th>Xóa</th>
            </tr>


        </thead>
        <tbody>

        <c:forEach items="${drugs}" var="s">
            <tr>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.unitPrice}</td>
                <td>${s.quantity}</td>
                <td>${s.expiry}</td>
                <td>${s.manufacturer}</td>

                <td>
                    <a data-toggle="tooltip" class="btn btn-success"title="chỉnh sửa" href="<c:url value="/admin/drug-manager/edit-drug/${s.id}"/>">
                    <i class="fas fa-edit" style=""></i>
                    </a>
                </td>
                <td>
                    <a id="modal"  href="<c:url value="/admin/drug-manager/delete-drug/${s.id}"/>" name="deleteButton" type="button" class="btn btn-primary" data-toggle="tooltip modal" data-target="#deleteModal" title="Xóa sản phẩm">
                    <i class="fas fa-trash-alt" style="color:#ed3c0d"></i>
                    </a>
                </td>        
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>


</div>


<c:if test="${!pagequan.equals('all')}"> 
    <div class="pagination">
        <a href="<c:url value="/admin/drug-manager">


            <c:param name="name"
                     value="${name}"></c:param>
            <c:param name="pagequan"
                     value="${pagequan}"></c:param>
            <c:param name="page"
                     value="1"></c:param>
            </c:url>"
            >«</a>


        <c:forEach begin = "1" end="${Math.ceil(count/Integer.parseInt(pagequan))}" var="i">
            <c:if test="${page != i}">
                <a href="<c:url value="/admin/drug-manager">


                    <c:param name="name"
                             value="${name}"></c:param>
                    <c:param name="pagequan"
                             value="${pagequan}"></c:param>
                    <c:param name="page"
                             value="${i}"></c:param>
                    </c:url>"
                    >${i}</a></li>
            </c:if>
            <c:if test="${page == i}">

                <a class ="active"href="<c:url value="/admin/drug-manager">
                    <c:param name="name"
                             value="${name}"></c:param>
                    <c:param name="pagequan"
                             value="${pagequan}"></c:param>
                    <c:param name="page"
                             value="${i}"></c:param>
                    </c:url>"
                    >${i}</a></li>
            </c:if>
        </c:forEach>

        <a href="<c:url value="/admin/drug-manager">
            <c:param name="name"
                     value="${name}"></c:param>
            <c:param name="pagequan"
                     value="${pagequan}"></c:param>
            <c:param name="page"
                     value="${fn:replace((Math.ceil(count/Integer.parseInt(pagequan))), '.0', '')}"></c:param>
            </c:url>"
            >»</a>
    </div>
</c:if >

<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xóa thuốc</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có muốn chắn xóa thuốc
            </div>
            <div class="modal-footer">
                <a href="" class="btn btn-primary" id="delRef">Vâng,tôi chắc</a> 
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>


