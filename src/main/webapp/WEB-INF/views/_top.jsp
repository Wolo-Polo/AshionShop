<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><span class="icon_search search-switch"></span></li>
            <li><a href="#"><span class="icon_heart_alt"></span>
                <span class="tip"></span>
            </a></li>
            <li><a href="#"><span class="icon_bag_alt"></span>
                <span class="tip" id="sizecart1">${sizecart}</span>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="${pageContext.request.contextPath}/login">Login</a>
            <a href="${pageContext.request.contextPath}/register">Register</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/shop/category/1">Women’s</a></li>
                            <li><a href="${pageContext.request.contextPath}/shop/category/2">Men’s</a></li>
                            <li><a href="${pageContext.request.contextPath}/shop">Shop</a></li>
                            <li><a href="${pageContext.request.contextPath}/blogs">Blog</a></li>
                            <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">
                        <div class="header__right__auth">
                            <a href="${pageContext.request.contextPath}/login">Login </a>
                            <a href="${pageContext.request.contextPath}/register"> Register</a>
                        </div>
                        <ul class="header__right__widget">
                            <li><span class="icon_search search-switch"></span></li>
                            <li><a href="${pageContext.request.contextPath}/favoriteproduct"><span class="icon_heart_alt"></span>
                                <span class="tip"></span>
                            </a></li>
                            <li><a href="${pageContext.request.contextPath}/cart"><span class="icon_bag_alt"></span>
                                <span class="tip" id="sizecart2">${sessionScope.sizecart}</span>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
