<%-- 
    Document   : add_medical
    Created on : 17 Mar 2023, 15:55:12
    Author     : thien
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/admin/medical-manager/add-medical" var="action"/>
<h2 class="mt-4">Thêm chuyên khoa </h2>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="index.html">admin</a></li>
    <li class="breadcrumb-item active">quanly-chuyenkhoa</li>
</ol>



<div class="Back">
    <a href="<c:url value="/admin/medical-manager"/>">  <i class="fa fa-arrow-left" onclick=""></i></a>
</div>
<div class="card">
    <header class="card-header">

        <h2 class="card-title mt-2">Chuyên khoa</h2>
    </header>
    <article class="card-body">



        <form:form id="medical" action="${action}" modelAttribute="medical" method="post" enctype="multipart/form-data">
            <form:errors path="*" cssClass="alert alert-danger" element="div" />

            <div class="form-group preview text-center">
                <img  src=""id="preview" alt="Preview Image" class="img-fluid"/>
                <div class="browse-button">
                    <i class="fa fa-pencil-alt"></i>
                    <form:input  accept="image/png, image/gif, image/jpeg"  path="file" type="file" requiredname="UploadedFile" id="UploadedFile"/>
                </div>
                <span class="Error"></span>
            </div>
            <div class=" form-group">
                <label for="title">Tên</label>   
                <form:input path="name" id="title" name="title" type="text" cssClass="form-control"/>
                <form:errors path="name" cssClass="alert alert-danger" element="div" />
            </div> <!-- form-group end.// -->
            <div class=" form-group">

                <label for="lastName">Description</label>
                <form:textarea path="description" id="title" name="title" type="text" cssClass="form-control"/>
                <form:errors path="description" cssClass="alert alert-danger" element="div" />

            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Tạo Chuyên khoa</button>
            </div>

        </form:form>
    </article> 

</div>

