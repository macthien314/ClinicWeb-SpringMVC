<%-- 
    Document   : login
    Created on : 17 Mar 2023, 17:23:41
    Author     : thien
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/login" var="action"/>

<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2">Đăng Nhập</h2>
                <ol>
                    <li><a href="http://localhost:8080/WebPhongKham/">Trang chủ</a></li>
                    <li>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">

                        <a href="<c:url value="/login"/>"><i class="fa fa-user mr-1"></i>Đăng nhập</a>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">

                        <a href="<c:url value="/login"/>"><i class="fa fa-user"></i> ${pageContext.request.userPrincipal.name}</a>
                    </c:if>
                    </li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">

        <div class="main">
            <div class="container-fluid">
                <div class="row no-gutter">
                    <!-- The image half -->
                    <div class="col-md-6 d-none d-md-flex bg-image"></div>


                    <!-- The content half -->
                    <div class="col-md-6 bg-light">
                        <div class="login d-flex align-items-center py-5">

                            <!-- Demo content-->
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-10 col-xl-7 mx-auto">
                                        <h3 class="">Đăng nhập</h3>

                                        <c:if test="${param.error != null}">
                                            <div class="alert alert-danger">
                                                có lỗi
                                            </div>
                                        </c:if>
                                        <c:if test="${param.accessDinied != null}">
                                            <div class ="alert alert-danger">
                                                Bạn không có quyền truy cập
                                            </div>
                                        </c:if>


                                        <form method="post" action="${action}">
                                            <div class="form-group mb-3">
                                                <input id="username" type="text" name ="username" placeholder="Tên đăng nhập" required="" autofocus="" class="form-control rounded-pill border-0 shadow-sm px-4">
                                            </div>
                                            <div class="form-group mb-3">
                                                <input id="password" type="password" name="password" placeholder="Mật khẩu" required="" class="form-control rounded-pill border-0 shadow-sm px-4 text-primary">
                                            </div>
                                            <div class="custom-control custom-checkbox mb-3">
                                                <input id="customCheck1" type="checkbox" checked class="custom-control-input">
                                                <label for="customCheck1" class="custom-control-label">Lưu mật khẩu</label>
                                            </div>
                                            <button type="submit" class="btn btn-primary btn-block text-uppercase mb-2 rounded-pill shadow-sm">Đăng nhập</button>
                                            <div class="divider"><span>hoặc</span></div>
                                            <a href="<c:url value="/register"/>"><button type="button" class="btn btn-primary btn-block text-uppercase mb-2 rounded-pill shadow-sm btn-info">Đăng Ký</button></a>

                                        </form>
                                    </div>
                                </div>
                            </div><!-- End -->

                        </div>
                    </div><!-- End -->

                </div>
            </div>    


        </div>


    </section>

</main>
