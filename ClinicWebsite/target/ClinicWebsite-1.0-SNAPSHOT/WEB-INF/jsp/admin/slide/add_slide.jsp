<%-- 
    Document   : add_slide
    Created on : 17 Mar 2023, 16:14:08
    Author     : thien
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:url value="/admin/quanly-slide/them-slide" var="action"/>
<h2 class="mt-4">Chi tiết Slide</h2>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="index.html">admin</a></li>
    <li class="breadcrumb-item active">quan-ly-slide</li>
</ol>



<div class="Back">
    <a href="<c:url value="/admin/quanly-slide"/>">  <i class="fa fa-arrow-left" onclick=""></i></a>
</div>
<div class="card">
    <header class="card-header">

        <h2 class="card-title mt-2">Tạo slide</h2>
    </header>
    <article class="card-body">



        <form:form id="slide" action="${action}" modelAttribute="slide" method="post" enctype="multipart/form-data">
            <form:errors path="*" cssClass="alert alert-danger" element="div" />

            <div class="form-group preview text-center">
                <img class="" src=""id="preview" alt="Preview Image" width="50%" height="20%"/>
                <div class="browse-button">
                    <i class="fa fa-pencil-alt"></i>
                    <form:input accept="image/png, image/gif, image/jpeg" path="file" type="file" requiredname="UploadedFile" id="UploadedFile"/>
                </div>
                <span class="Error"></span>
            </div>
            <div class=" form-group">
                <label for="title">Tiêu đề</label>   
                <form:input path="title" id="title" name="title" type="text" class="form-control"/>

            </div> <!-- form-group end.// -->
            <div class=" form-group">

                <label for="lastName">Description</label>
                <form:input path="description" id="title" name="title" type="text" cssClass="form-control"/>


            </div>
            <div class="form-group">
                <label class="form-check-inline">
                    <form:checkbox path="active" name="active" value="true" />
                    <span class="checkbox-inline ml-1"> Status </span>
                </label>


            </div>          
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Tạo slide </button>
            </div>

        </form:form>
    </article> 

</div>
