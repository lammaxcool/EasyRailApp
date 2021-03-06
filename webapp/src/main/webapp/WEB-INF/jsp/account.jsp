<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>EasyRail — профіль </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/resources/css/user_info_style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>EasyRail — профіль</title>
    <!-- <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="${contextPath}/resources/fonts/ionicons.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
</head>

<body>
<sec:authorize access="!isAuthenticated()">
    <% response.sendRedirect("/"); %>
</sec:authorize>
  <header>
    <nav class="navbar navbar-dark navbar-expand-md fixed-top">
        <div class="container-fluid"><a class="navbar-brand" href="/"><img class="train-logo" src="${contextPath}/resources/img/train.png" width="55" height="55">
          <span style="font-size:25px">EasyRail</span>
        </a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse justify-content-end" id="navcol-1">
                <ul class="nav navbar-nav">
                  <li class="nav-item" role="presentation"><a class="nav-link" href="/">Замовити квитки</a></li>
                  <li class="nav-item" role="presentation"><a class="nav-link" href="#">Контакти</a></li>
                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="/login">Увійти</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="/logout">Вийти</a></li>
                </sec:authorize>
                  <li class="nav-item" role="presentation"><a class="nav-link" href="/cart"><i class="icon ion-android-cart"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>
  </header>

  <!-- начало пизженного кода-->
  <main>
  <div class="container bootdey flex-grow-1 container-p-y" id="bootday">
      <div class="card mb-4">
        <div class="card-body d-flex justify-content-between flex-row">
          <div class="left-wrapper d-flex align-items-start flex-column">
            <div class="media align-self-start" id="profile-basic">
              <img src="${contextPath}/resources/img/person-clipart.png" alt="" class="d-block ui-w-100 rounded-circle">
              <div class="media-body ml-4">
                <h4 class="font-weight-bold mb-0">Вітаємо, <span id="name">
                    ${pageContext.request.userPrincipal.name}
                <a href="javascript:void(0)" class="btn btn-default btn-sm icon-btn"><i class="fa fa-mail"></i></a>
              </div>
            </div>

          </div>
          <div class="right-wrapper">
            <table class="table user-view-table" id="initial-table">
              <tbody id="try">
                <tr>
                  <td class = "menu-head"><b>Меню</b></td>
                </tr>
                <tr>
                  <td class = "active-menu-entry">Мої квитки</td>
                </tr>
                <tr>
                  <td>Платіжні засоби</td>
                </tr>
                <tr>
                  <td>Досягнення</td>
                </tr>
                <tr>
                  <td>Змінити особисті дані</td>
                </tr>
                <tr>
                  <td>Вийти</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <hr class="border-light m-0">
        <div class="table-responsive">
          <table class="table card-table m-0">
            <tbody>
              <tr>
                <th>Статус</th>
                <th>Потяг</th>
                <th>Ціна</th>
                <th>Час</th>
              </tr>
              <tr>
                <td><span id="status">status</span></td>
                <td><span id="train">train</span></td>
                <td><span id="price">price</span></td>
                <td><span id="time">time</span></td>
              </tr>

            </tbody>
          </table>
        </div>
      </div>
    </div>
  </main>
          <!--конец пизженного кода -->

          <footer class="fixed-bottom">
           <div class="container-fluid">
              <nav class="navbar navbar-dark navbar-expand-md">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#">
                    <span style="font-size:25px">EasyRail</span>
                    <img class="train-logo" src="${contextPath}/resources/img/train.png" width="55" height="55">
                  </a>
                  <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"></button>
                  <div class="collapse navbar-collapse justify-content-end" id="navcol-1">
                    <ul class="nav navbar-nav">
                      <li class="nav-item" role="presentation"><a class="nav-link" href="#">Про нас</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" href="/">Замовити квитки</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" href="#">Задати питання</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" href="#">Повернення квитків</a></li>
                      <li class="nav-item" role="presentation"><a class="nav-link" href="#">Робота з нами</a></li>
                    </ul>
                  </div>
                </div>
              </nav>
            </div>
            <!-- Copyright -->
            <div class="text-center footer-copyright">
              Copyright ©EasyRail. All rights reserved.
            </div>
            <!-- Copyright -->
          </footer>

<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>


