<%-- 
    Document   : organizationchart
    Created on : 17 Mar 2023, 17:05:15
    Author     : thien
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/organizationchart" var="action"/>
<div class="container gioithieumo">
    <section style="margin-top: -50px; margin-bottom: -30px;" class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2 style=" font-weight: bold;">Sơ đồ tổ chức</h2>
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
    </section>

    <div class=" col-md-12 col-sm-12 col-xs-12 pd5 h1lienhe">



        <div class="info-description-article clearfix">
            <p style="text-align: center;">&nbsp;</p>

            <p style="text-align: center;"><img alt="" src="https://res.cloudinary.com/ikj/image/upload/v1632564270/sdtc_rzpomr.png" style="width: 100%;"></p>

            <p style="text-align: center;">&nbsp;</p>

            <p style="text-align: center;">&nbsp;</p>

            <div style="margin:0 auto; width:100% ; ">
                <p style="text-align: center;"><span style="font-size:26px;"><span style="color:#FF0000;"><strong>BAN LÃNH ĐẠO</strong></span></span></p>

                <p style="text-align: center;">&nbsp;</p>

                <table border="1" cellpadding="0" cellspacing="0" style="border: LightGray;">
                    <tbody>
                        <tr>
                            <td style="width:260px;">
                                <p align="center"><img src="https://res.cloudinary.com/ikj/image/upload/v1632564324/BSLAM_gsgeav.jpg" style="width: 137px; height: 190px;"></p>

                                <p align="center">&nbsp;</p>

                                <p align="center">BÁC SĨ CHUYÊN KHOA I</p>

                                <p align="center"><strong>NGUYỄN THANH LÂM</strong></p>

                                <p align="center">(GIÁM ĐỐC)</p>
                            </td>
                            <td style=" padding-left:20px;">
                                <p>&nbsp;</p>

                                <p><strong>CHUYÊN MÔN:</strong></p>

                                <p>-Tốt nghiệp Đại Học Y Dược Tp. Hồ Chí Minh</p>

                                <p>-Tốt nghiệp Chuyên Khoa I Lão Khoa</p>

                                <p>-Tốt nghiệp Chuyên Khoa I Niệu Khoa</p>

                                <p>-Tốt nghiệp Chuyên Khoa Y Học Gia Đình ( Nội, Ngoại, Sản, Nhi )</p>

                                <p>&nbsp;</p>

                                <p><strong><u>CHỨNG CHỈ:</u></strong></p>

                                <p>- Kỹ thuật Tiêm Điều trị Viêm Gân</p>

                                <p>- Kỹ thuật Tiêm Điều trị Viêm Khớp</p>

                                <p>- Siêu âm Tổng Quát</p>

                                <p>- Nội soi Dạ Dày - Nội Soi Đại Tràng</p>

                                <p>- Phẫu thuật nội soi ổ bụng nâng cao</p>

                                <p>- Nội soi tán sỏi Niệu quản ngược dòng</p>

                                <p>- Phẫu thuật cắt đốt nội soi tiền liệt tuyến - Bướu Bàng Quang</p>

                                <p>&nbsp;</p>

                                <p><strong><u>QUÁ TRÌNH CÔNG TÁC:</u></strong></p>

                                <p>- 1994 -1996 Công tác tại Bệnh Viện Nhân Dân Gia Định</p>

                                <p>- 1997 - 2011 Công tác tại Bệnh Viện Đa Khoa Sài Gòn</p>

                                <p>- Hiện là Giám Đốc tại Phòng Khám Đa Khoa Tâm An</p>

                                <p>&nbsp;</p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:260px;">
                                <p align="center"><img src="https://res.cloudinary.com/ikj/image/upload/v1632564324/BSHOP_vfpqqo.jpg" style="width: 137px; height: 206px;"></p>

                                <p align="center">&nbsp;</p>

                                <p align="center">THẠC SĨ BÁC SĨ</p>

                                <p align="center"><strong>NGUYỄN BÁ HỢP</strong></p>

                                <p align="center">(Phó Giám Đốc Chuyên Môn)</p>
                            </td>
                            <td style="padding-left:20px;">
                                <p>&nbsp;</p>

                                <p><strong><u>CHUYÊN MÔN:</u></strong></p>

                                <p>- Tốt nghiệp Đai học Y Dược Tp. Hồ Chí Minh</p>

                                <p>- Tốt nghiệp Thạc sĩ Chuyên ngành Bác Sĩ Gia Đình ( Nội, Ngoại, Sản, Nhi ) tại Đại học LIÈGE Vương Quốc Bỉ.</p>

                                <p>&nbsp;</p>

                                <p><strong><u>QUÁ TRÌNH CÔNG TÁC:</u></strong></p>

                                <p>- Năm 1994 - 2008 Công tác tại&nbsp; Bệnh Viện Nguyễn Trãi</p>

                                <p>- Hiện là giảng viên Bộ môn Y Học Gia Đình trường Đại Học Y Khoa Phạm Ngọc Thạch</p>

                                <p>- Phó Giám Đốc chuyên môn tại Phòng Khám Đa Khoa Tâm An</p>

                                <p>&nbsp;</p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:260px;">
                                <p align="center"><img src="https://res.cloudinary.com/ikj/image/upload/v1632564325/YSHONGVAN_qyfunp.jpg" style="width: 137px; height: 206px;"></p>

                                <p align="center">&nbsp;</p>

                                <p align="center">Y SĨ</p>

                                <p align="center"><strong>NGUYỄN THỊ HỒNG VÂN</strong></p>

                                <p align="center">(Phó Giám Đốc Thường Trực)</p>

                                <p align="center">&nbsp;</p>

                                <p align="center">&nbsp;</p>
                            </td>
                            <td style="padding-left:20px;">
                                <p>&nbsp;</p>

                                <p><strong><u>CHUYÊN MÔN:</u></strong></p>

                                <p>- Tốt Nghiệp Y Sĩ&nbsp; Đa khoa Trường Trung học Quân Y II- QK7</p>

                                <p>- Hoàn thành Khóa huấn luyện: CHIEF PEOPLE OFFICER(CPO) của Viện Kế Toán và Quản Trị Doanh Nghiệp.</p>

                                <p>- Hoàn thành khóa huấn luyện CEO in Action của ActionCOACH.</p>

                                <p>&nbsp;</p>

                                <p><strong><u>QUÁ TRÌNH CÔNG TÁC:</u></strong></p>

                                <p>- 1993 - 2000: Công tác tại khoa Hồi Sức cấp cứu Bệnh Viện Thống nhất TPHCM</p>

                                <p>- 2001 - 2002: Công tác tại Trung Tâm Y tế&nbsp; huyện Nhà Bè, TPHCM</p>

                                <p>- 2002 - 2016: Quản lý điều hành Phòng Khám chuyên khoa Tâm An</p>

                                <p>- 2016 - Đến nay : Phó Giám Đốc thường trực Phòng khám đa khoa Tâm An</p>

                                <p>&nbsp;</p>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <p>&nbsp;</p>
            </div>
        </div>

    </div>

