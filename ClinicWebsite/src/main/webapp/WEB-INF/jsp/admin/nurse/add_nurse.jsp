<%-- 
    Document   : add_nurse
    Created on : 17 Mar 2023, 16:00:37
    Author     : thien
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/admin/nurse-manager/add-nurse" var="action"/>
<h2 class="mt-4">Thêm y tá </h2>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="index.html">admin</a></li>
    <li class="breadcrumb-item active">quanly-yta</li>
</ol>


<div class="Back">
    <a href="<c:url value="/admin/nurse-manager"/>">  <i class="fa fa-arrow-left" onclick=""></i></a>
</div>
<div class="card">
    <header class="card-header">
        <h2 class="card-title mt-2">Y tá</h2>
    </header>
    <article class="card-body">



        <form:form id="nurse" action="${action}" modelAttribute="nurse" method="post" enctype="multipart/form-data">
            <form:errors path="*" cssClass="alert alert-danger" element="div" />

            <div class="form-group preview text-center">
                <img class="" src=""id="preview" alt="Preview Image" width="50%" height="20%"/>
                <div class="browse-button">
                    <i class="fa fa-pencil-alt"></i>
                    <form:input path="file" type="file" requiredname="UploadedFile" id="UploadedFile"/>
                </div>
                <span class="Error"></span>
            </div>
            <div class="form-row">
                <div class=" form-group col-md-6">
                    <label for="lastName">Họ: </label>   
                    <form:input path="lastName" id="title" name="title" type="text" cssClass="form-control"/>
                    <form:errors path="lastName" cssClass="alert alert-danger" element="div" />
                </div> <!-- form-group end.// -->
                <div class=" form-group col-md-6">

                    <label for="firstName">Tên:</label>
                    <form:input path="firstName" id="title" name="title" type="text" cssClass="form-control"/>
                    <form:errors path="firstName" cssClass="alert alert-danger" element="div" />

                </div>
            </div>
            <div class="form-group">
                <label for="tcate">Chuyên khoa</label>
                <form:select path="medical" id="med" cssClass="form-control">

                    <c:forEach items="${medicals}" var="med">
                        <option value="${med.id}">${med.name}</option>
                    </c:forEach>
                </form:select>
                <form:errors cssClass="alert alert-danger" path="medical" element="div"/>
            </div>
            <div class=" form-group">
                <label for="title">Ngày sinh</label>   
                <form:input max="09/09/2015" path="birthDate" id="birthDate" name="birthDate" type="date" cssClass="form-control"/>
                <form:errors path="birthDate" cssClass="alert alert-danger" element="div" />
            </div> <!-- form-group end.// -->
            <div class=" form-group">
                <label for="title">SĐT</label>   
                <form:input path="phone" id="phone" name="phone" type="number" cssClass="form-control"/>
                <form:errors path="phone" cssClass="alert alert-danger" element="div" />
            </div> <!-- form-group end.// -->


            <div class=" form-group">
                <label for="title">Email</label>   
                <form:input path="email" id="email" name="email" type="text" cssClass="form-control"/>
                <form:errors path="email" cssClass="alert alert-danger" element="div" />
            </div> <!-- form-group end.// -->
            <div class="form-group">
                Nam:<form:radiobutton path="gender" value="Nam"/>
                Nữ:<form:radiobutton path="gender" value="Nữ"/>
            </div>


            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Thêm y tá</button>
            </div>

        </form:form>
    </article> 

</div>
