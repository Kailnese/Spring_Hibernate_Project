<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <title></title>
  <link rel="stylesheet" href="../css/learning.css">
  <script type="text/javascript" src="../jquery/jquery-3.5.1.min.js"></script>
  <script type="text/javascript">
<%--    have to sleep for secs, or the script will run directly before DOM generated--%>
// after reboot my laptop, seems I dont need sleep anymore. interesting...
//     setTimeout(function(){}, 10000);
    $(function (){
      $(".basicNotes").click(function (){
        var url = this.href;
        $(".content_box").load(url);
        return false;
      })
      $(".animationNotes").click(function (){
        var url = this.href;
        $(".content_box").load(url);
        return false;
      })
    })
  </script>
</head>
<body>
<div class="content_box" id="content_box"></div>
<div class="left_Bar">
  <ul class="left_buttons">
    <li class="active"><a href="">Study List</a></li>
    <li><a href="">JavaScript Note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a href="#">First Mission</a></li>
          <li><a href="#">Second Mission</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">JQuery Note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a href="#">First Mission</a></li>
          <li><a href="#">Second Mission</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">Ajax note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a href="#">First Mission</a></li>
          <li><a href="#">Second Mission</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">CSS note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a name="basicNotes" id="basicNotes" class="basicNotes" href="../html/cssNote/basicNote.html">Basic Notes</a></li>
          <li><a class="animationNotes" href="../html/cssNote/animationNote.html">Animation Notes</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">Spring note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a href="#">First Mission</a></li>
          <li><a href="#">Second Mission</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">SpringMVC note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a href="#">First Mission</a></li>
          <li><a href="#">Second Mission</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">Hibernate note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a href="#">First Mission</a></li>
          <li><a href="#">Second Mission</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">Struts2 note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a href="#">First Mission</a></li>
          <li><a href="#">Second Mission</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">MyBatis note</a>
      <div class="sub-menu-1">
        <ul>
          <li><a href="#">First Mission</a></li>
          <li><a href="#">Second Mission</a></li>
          <li><a href="#">Third Mission</a></li>
        </ul>
      </div>
    </li>
    <li><a href="">TBC</a></li>
    <li><a href="">TBC</a></li>
    <li><a href="">TBC</a></li>
  </ul>
</div>
<div class="backToMain">
  <a href="../admin/backToMain">Back To Main</a>
</div>

</body>
</html>
