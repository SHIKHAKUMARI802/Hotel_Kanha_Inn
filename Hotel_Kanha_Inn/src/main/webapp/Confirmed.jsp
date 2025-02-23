<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Booking Confirmed</title>
    <Style>
    * {
    padding: 0;
    margin-right: 0;
    cursor: pointer;
    text-decoration: none;
}
.main{
    background-image:url(./image/h2.jpg) ;
    /* background:rgba(128, 121, 121, 0.672); */
    height: 100vh;
    border-radius: 1rem;
    width: 98vw;
    /* box-shadow: 0px 5px 5px 5px rgba(156, 232, 116, 0.428); */
    box-shadow: 0px 5px 12px 5px rgb(40, 0, 0);
}
.box{
    height: 50vh;
    border-radius: 1rem;
    width: 40vw;
    background-image: url(./image/trial.jpg);
    /* box-shadow: 0px 5px 5px 5px rgba(156, 232, 116, 0.428); */
    box-shadow: 0px 5px 12px 5px rgb(40, 0, 0);
    position: relative;
    top: 10rem;
    left: 25rem;

     .btn{
        text-align: center;
        position: relative;
        top:10rem;
        left:1.5rem;
     }
    }
    .cross{
            position: relative;
            left: 21rem;
            top: 21rem;
            border-radius: 100%;
            i{
                position:absolute ;
                color: white;
                padding: 5px;
                font-size: 20px;
                font-weight: 600;
                transform: rotate(30deg);
                background-color: red;
                border-radius: 100%;
                &:hover{
                    background-color: white;
                    color: red;
                    font-size: 25px;
                    font-weight: 900;
                    transition: .5s;
                }
            }
        }
   
    </Style>
</head>
<body>
    <div class="main">
        <div class="box">
        <div class="btn">
            <h1>Booking Successfull!!!</h1>
        </div>
        <div class="cross">
                <a href="./index.jsp"><i class='bx bx-cross'></i></a>
            </div>
    </div>
    </div>
</body>
</html>