<%-- 
    Document   : med_card
    Created on : 17 Mar 2023, 16:44:15
    Author     : thien
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h4 class="mt-4">Phiếu khám</h4>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="<c:url value="/nurse"/>">nurse</a></li>
    <li class="breadcrumb-item active">medical-examination-card</li>
</ol>

<div class="row">

    <div class="col-md-3">
    </div>
    <br><br>
    <div class="col-md-8">

        <div class="input-group" id="adv-search">
            <form  id ="find"role="form">
                <input value="${lastname}" name="lastname" type="text" class="form-control" placeholder="tên điệm và tên" />
            </form>
            <div class="input-group-btn">
                <div class="btn-group" role="group">
                    <div class="dropdown dropdown-lg">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                        <div class="dropdown-menu dropdown-menu-right" role="menu">
                            <form  class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="firstName">Nhập họ</label>
                                    <input value="${lastname}" name ="lastname" class="form-control" type="text" />
                                </div>
                                <div class="form-group">
                                    <label for="lastname">Nhập tên đệm và tên</label>
                                    <input value="${firstname}" name ="firstname" class="form-control" type="text" />
                                </div>
                                <div class="form-group">
                                    <label for="medid">Chuyên khoa</label>
                                    <select  name ="medid"class="form-control">
                                        <option value="all" <c:if test="${medid.equals('all')}">selected</c:if>>ALL</option>
                                        <c:forEach items="${medicals}" var="med">



                                            <option value="${med.id}"<c:if test="${medid.equals(Integer.toString(med.id))}"> selected</c:if>>${med.name}</option>



                                        </c:forEach>
                                    </select>
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

    <table  class=" table table-striped table-bordered" width="100%">

        <thead>



            <tr>
                <th class="th-sm">Mã</th>
                <th>Họ</th>
                <th>Tên</th>
                <th>Giới tính</th>
                <th>SĐT</th>
                <th>Email</th>
                <th style="width:10% ">Ảnh</th>
                <th>Tên Khoa</th>
                <th>Phiếu khám hôm nay</th>

                <th><i class="fas fa-cog"></i></th>
            </tr>
        </thead>
        <tbody>

        <c:forEach items="${doctors}" var="s">
            <tr>
                <td>${s.id}</td>
                <td>${s.lastName} </td>
                <td>${s.firstName}</td>
                <td>${s.gender}</td>
                <td>${s.phone}</td>
                <td>${s.email}</td> 
                <td class="w-25">
                    <img src="${s.image}" class="img-fluid img-thumbnail" alt="Sheep">

                </td>
                <td>${s.medical.name}</td>

                <td >
                    ${s.medCardCount}    
                </td>
                <td>
                    <button type="button" class="btn btn-outline-primary">                         
                        <a data-toggle="tooltip" title="xem thông tin" title="thông tin"href="<c:url value="/nurse/medical-examination-card/${s.id}"/>">Check phiếu khám</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>

    </table>
</div>
<c:if test="${!pagequan.equals('all')}"> 
    <div class="pagination">
        <a href="<c:url value="/admin/doctor-manager"/>?page=1">«</a>


        <c:forEach begin = "1" end="${Math.ceil(count/Integer.parseInt(pagequan))}" var="i">
            <c:if test="${page != i}">
                <a href="<c:url value="/admin/doctor-manager">

                    <c:param name="lastname"
                             value="${lastname}"></c:param>
                    <c:param name="account"
                             value="${account}"></c:param>
                    <c:param name="firstname"
                             value="${firstname}"></c:param>
                    <c:param name="pagequan"
                             value="${pagequan}"></c:param>
                    <c:param name="page"
                             value="${i}"></c:param>
                    </c:url>"
                    >${i}</a></li>
            </c:if>
            <c:if test="${page == i}">

                <a class ="active"href="<c:url value="/admin/doctor-manager">
                    <c:param name="lastname"
                             value="${lastname}"></c:param>

                    <c:param name="firstname"
                             value="${firstname}"></c:param>
                    <c:param name="pagequan"
                             value="${pagequan}"></c:param>
                    <c:param name="page"
                             value="${i}"></c:param>
                    </c:url>"
                    >${i}</a></li>
            </c:if>
        </c:forEach>

        <a href="#">»</a>
    </div>
</c:if >     
<!-- Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Xóa slide</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có muốn chắn xóa bác sĩ
            </div>
            <div class="modal-footer">
                <a href="" class="btn btn-primary" id="delRef">Vâng,tôi chắc</a> 
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

            </div>
        </div>
    </div>
</div>
