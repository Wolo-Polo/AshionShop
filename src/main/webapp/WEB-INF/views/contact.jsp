<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vie">

<jsp:include page="_head.jsp"></jsp:include>

<body>
    <jsp:include page="_top.jsp"></jsp:include>
    
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${pageContext.request.contextPath}/home"><i class="fa fa-home"></i> Home</a>
                        <span>Contact</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
					<div class="contact__content">
                        <div class="contact__address">
                            <h5>Contact info</h5>
                            <ul>
                                <li>
                                    <h6><i class="fa fa-map-marker"></i> Address</h6>
                                    <p>147 Phố Mai Dịch, Mai Dịch, Cầu Giấy, Hà Nội</p>
                                </li>
                                <li>
                                    <h6><i class="fa fa-phone"></i> Phone</h6>
                                    <p><span>+84985950895</span></p>
                                </li>
                                <li>
                                    <h6><i class="fa fa-headphones"></i> Support</h6>
                                    <p>devpro@gmail.com</p>
                                </li>
                            </ul>
                        </div>
                        <div class="contact__form">
							<c:if test="${not empty message}">
								<div class="alert alert-primary" role="alert">
									<c:out value="${message }"></c:out>
								</div>
							</c:if>
							<h5>SEND MESSAGE</h5>
                            <form action="${pageContext.request.contextPath}/contact" method="post">
                                <input type="text" placeholder="Name" name="hoten">
                                <input type="text" placeholder="Email" name="email">
                                <input type="text" placeholder="Website" name="website">
                                <textarea placeholder="Message" name="message"></textarea>
                                <button type="submit" class="site-btn">Send Message</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact__map">
                        <iframe
                        src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJv7NPU7VUNDERlPpJEwcb13A&key=AIzaSyAKeMfM_pRICyQWjJosfkyFvXxSRE-gCvA"
                        height="780" style="border:0" >
                    </iframe>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact Section End -->

<jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>