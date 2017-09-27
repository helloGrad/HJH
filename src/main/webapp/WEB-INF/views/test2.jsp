<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>하이그래드넷</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="css/higrad-signup.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert@2.0.3/src/sweetalert.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert@2.0.3/dist/sweetalert.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <style>

        @media screen and (max-width: 768px) {
            .major-nav-box {
            }
        }

        @media screen and (min-width: 768px) {

        }

        .jumbotron {
            position: relative;
            z-index: 1;
            height: 25em;
            margin-bottom: 0.1em;
            text-align: center;
            background-size: cover;
        }
        /*전공 네비게이션 박스*/
        .navbar-left {
            font-weight: 400;
            padding-top: 15px;
            padding-bottom: 15px;
            border: 0;
            border-radius: 0;
            margin-bottom: 0;
            font-size: 14px;
            letter-spacing: 5px;
        }

        .navbar-nav li a:hover {
            color: #1abc9c !important;
            background-color: white;
        }

        .jumbotron {
            height: 15em;
            margin-bottom: 1em;
        }

        .user-info-box {
            background : rgba(78,18,201,0.8);
            height : 20em;
        }
        .user-info {
            color : #FFFFFF;
            padding-top: 4em;
        }
        .user-info-list{
            float: left;
            margin-left: 1em;
            color : #FFFFFF;
            font-size: 1.2em;
            list-style-type : none;
        }
        .user-info-weight {
            font-weight: 100;
            margin-left: 0.5em;
        }
        .user-info-list-box {
            border: 1px solid #f0f0f0;
            width: 100%;
             height: 100%;
        }

    </style>

</head>
<body>

  <button class="delete-photo" data-photo-id="56">Delete photo</button>
  
  <script>
  $('button.delete-photo').click(function() {
    var photoId = $(this).attr("data-photo-id");
    deletePhoto(photoId);
  });

  function deletePhoto(photoId) {
    swal({
      title: "Are you sure?", 
      text: "Are you sure that you want to delete this photo?", 
      type: "warning",
      showCancelButton: true,
      closeOnConfirm: false,
      confirmButtonText: "Yes, delete it!",
      confirmButtonColor: "#ec6c62"
    }, function() {
      $.ajax({
        url: "/api/photos/" + photoId,
        type: "DELETE"
      })
      .done(function(data) {
        swal("Deleted!", "Your file was successfully deleted!", "success");
      })
      .error(function(data) {
        swal("Oops", "We couldn't connect to the server!", "error");
      });
    });
  }
  </script>

</body>
</html>