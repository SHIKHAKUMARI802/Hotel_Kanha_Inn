<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/room.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="icon" type="image/x-icon" href="./image/Kanha Inn2.png">
    <title>BookRoom</title>
</head>

<body>

    <div class="main">
        
        <div class="nav">
            <a href="./index.jsp">Home</a>
            <a href="./gallery.jsp">Gallery</a>
            <a href="./about.jsp">AboutUs</a>
            <a href="./ContactUs.jsp">Contact</a>
        </div>

        <div class="roombox">
             <div class="box1">
                
                <div class="box"> 
                   <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPs9zFiyd1WmLEUfsvkooFKTywfs5ihS-0nw&s" alt="imageBox1">                 
                    <div class="btn">
                        <div class="content"> <br>Single Room
                        <br>Comfortable Single Bed,Air Conditioning,Smart Tv with 24/7 
                        wifi access, Complimentary Breakfast. 
                       <br>    <b><mark><%= (session.getAttribute("singleRoom") != null && (int) session.getAttribute("singleRoom") > 0) ? "Room-Available" : "Room-UnAvailable" %></mark></b>
                        </div> 
                       <% if (session.getAttribute("singleRoom")!=null && (int)session.getAttribute("singleRoom") > 0) { %>
                       <%
                            String debugRoomType = (String) session.getAttribute("room_type");
                            System.out.println("Debug (room.jsp): Session room_type = " + debugRoomType);
                        %>
                         <form action="RoomSelectionServlet" method="post">
              
                         <input type="hidden" name="roomType" value="Single">
                            <button type="submit">Book Now</button>
                          </form>
                    <% } else { %>
                        <button disabled>UnAvailable</button>
                    <% }
                    %>
                    </div>
                </div>
                <div class="box">               
                    <img src="https://media.istockphoto.com/id/2163985013/photo/travel.webp?a=1&b=1&s=612x612&w=0&k=20&c=JfQ89Q-xL8behyJ0ikUSkD67iKlfxuMpwvMrinyVdz0=" alt="imageBox1">
                    <div class="btn">
                    <div class="content"><br> Twin Room
                    <br> Two Single Bed,Air Conditioning,Smart Tv with 24/7 wifi access,Complimentary Breakfast.
                    <br>    <b><mark><%= (session.getAttribute("twinRoom") != null && (int) session.getAttribute("twinRoom") > 0) ? "Room-Available" : "Room-UnAvailable" %></mark></b>
                     
                    </div>
                       <% if (session.getAttribute("twinRoom") != null && (int) session.getAttribute("twinRoom") > 0)  { %>
                       <%
                            String debugRoomType = (String) session.getAttribute("room_type");
                            System.out.println("Debug (room.jsp): Session room_type = " + debugRoomType);
                        %>
                       <form action="RoomSelectionServlet" method="post">
                        <input type="hidden" name="roomType" value="Twin">
                            <button type="submit">Book Now</button>
                            </form>
                    <% } else { %>
                        <button disabled>UnAvailable</button>
                    <% } %>
                   </div>
                </div>
                <div class="box">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0JxgI2qCHTsxA7QPfdfjYhu9rf6CT_-1mAA&s" alt="imageBox1">
                    <div class="btn">
                        <div class="content"><br>Double Room
                        <br>One double Bed,Air Conditioning,Smart Tv with 24/7 wifi access,Complimentary Breakfast.
                         <br> <b> <mark><%= (session.getAttribute("doubleRoom") != null && (int) session.getAttribute("doubleRoom") > 0)  ? "Room-Available" : "Room-UnAvailable" %></b>
                        </div>
                    <% if (session.getAttribute("doubleRoom") != null && (int) session.getAttribute("doubleRoom") > 0)  { %>
                    <%
                            String debugRoomType = (String) session.getAttribute("room_type");
                            System.out.println("Debug (room.jsp): Session room_type = " + debugRoomType);
                        %>
                    <form action="RoomSelectionServlet" method="post">
                       <input type="hidden" name="roomType" value="Double">
                            <button type="submit">Book Now</button>
                            </form>
                    <% } else { %>
                        <button disabled>UnAvailable</button>
                    <% } %>
                        <!-- <a href="./SignUp.jsp"><button>Book Now</button></a> -->
                    </div>
                </div>
              </div>
            <div class="box2">

                <div class="box">
                    <img src="https://plus.unsplash.com/premium_photo-1661914368757-a57361d31b45?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWF
                              yY2h8OXx8ZGVsdXhlJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D" alt="image4">
                    
                    <div class="btn">
                        <div class="content1"><br>Deluxe Room
                        <br>One Queen-Sized Bed,Air Conditioning,Smart Tv with Premium, 24/7 wifi access,Mini fridge,Complimetary breakfast & snacks.
                    <br> <b> <mark><%= (session.getAttribute("deluxeRoom") != null && (int) session.getAttribute("deluxeRoom") > 0)  ? "Room-Available" : "Room-UnAvailable" %></b>
                        </div>
                    <% if (session.getAttribute("deluxeRoom") != null && (int) session.getAttribute("deluxeRoom") > 0)  { %>
                    <%
                            String debugRoomType = (String) session.getAttribute("room_type");
                            System.out.println("Debug (room.jsp): Session room_type = " + debugRoomType);
                        %>
                    <form action="RoomSelectionServlet" method="post">
                       <input type="hidden" name="roomType" value="Deluxe">
                            <button type="submit">Book Now</button>
                            </form>
                    <% } else { %>
                        <button disabled>UnAvailable</button>
                    <% } %>
                        <!-- <a href="./SignUp.jsp"><button>Book Now</button></a> -->
                    </div>
                </div>

                <div class="box">
                    <img src="https://plus.unsplash.com/premium_photo-1661963239507-7bdf41a5e66b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h
                            8MTN8fGRlbHV4ZSUyMHJvb218ZW58MHx8MHx8fDA%3D" alt="image4">
                    <div class="btn">
                        <div class="content1"><br>Suite  Room
                        <br>Separate living area & bedroom,Smart Tv with Premium channels, 24/7 wifi access,Mini Bar,Mini fridge, Coffee Maker,complimentary dinner.
                        <br>  <b><mark><%= (session.getAttribute("suiteRoom") != null && (int) session.getAttribute("suiteRoom") > 0) ? "Room-Available" : "Room-UnAvailable" %></b>
                        </div>
                    <% if (session.getAttribute("suiteRoom") != null && (int) session.getAttribute("suiteRoom") > 0)  { %>
                    <%
                            String debugRoomType = (String) session.getAttribute("room_type");
                            System.out.println("Debug (room.jsp): Session room_type = " + debugRoomType);
                        %>
                    <form action="RoomSelectionServlet" method="post">
                       <input type="hidden" name="roomType" value="Suite">
                            <button type="submit">Book Now</button>
                            </form>
                    <% } else { %>
                        <button disabled>UnAvailable</button>
                    <% } %>
                        
                       <!--   <a href="./SignUp.jsp"><button>Book Now</button></a>-->
                    </div>
                </div>

                <div class="box">
                    <img src="https://img.freepik.com/premium-photo/modern-bedroom-with-city-skyline-view_14117-880022.jpg" alt="image4">
                    <div class="btn">
                        <div class="content1"><br>Business Class
                        <br>King-Sized Bed, Work desk & ergonomic chair,
                        Mini fridge & coffee machine,Complimentary business lounge.
                            <br> <b> <mark><%= (session.getAttribute("businessClass") != null && (int) session.getAttribute("businessClass") > 0) ? "Room-Available" : "Room-UnAvailable" %></b>
                        </div>
                    <% if (session.getAttribute("businessClass") != null && (int) session.getAttribute("businessClass") > 0)  { %>
                    <%
                            String debugRoomType = (String) session.getAttribute("room_type");
                            System.out.println("Debug (room.jsp): Session room_type = " + debugRoomType);
                        %>
                    <form action="RoomSelectionServlet" method="post">
                        <input type="hidden" name="roomType" value="Business">
                            <button type="submit">Book Now</button>
                            </form>
                    <% } else { %>
                        <button disabled>UnAvailable</button>
                    <% } %>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="lastcontainer">

        <div class="container">
            <h1>About us</h1>
            <h4>Hotel kanha Inn, Best Hotels in Jayanagar Bangalore Welcome to Hotel Kanha Inn Jayangar Bangalore
                where comfort and commodity will certainly be found in a quality accommodation.</h4>
        </div>

        <div class="container">
            <h1>Navigation</h1>
            <div class="firstlist">

                <ul>
                    <li>Home</li>
                    <li>Rooms</li>
                    <li>From the Griddle</li>
                    <li>Location</li>
                    <li>Contact</li>
                    <li>Terms and Condition</li>
                </ul>

                <ul>
                    <li>Abouts</li>
                    <li>Resturant</li>
                    <li>Amenities</li>
                    <li>Gallery</li>
                    <li>offers</li>
                    <li>Careers</li>
                </ul>

            </div>
        </div>

        <div class="container">
            <h1>Lets Connect</h1>
            <div class="lastbox">
                <div class="symbol">
                    <i class='bx bxs-location-plus'></i>
                    <P>1353 South End Main Road 9th Block,
                        Jayanagar Near Ragigudda Temple Arch,
                        Bengaluru, Karnataka 560069</P>
                </div>

                <div class="symbol">
                    <i class='bx bx-envelope'></i>
                    <P>shikhakhus123@gmail.com</P>
                </div>

                <div class="symbol">
                    <i class='bx bxs-phone'></i>
                    <P>7004557538</P>
                </div>

                <div class="symbol">
                    <i class='bx bxs-phone'></i>
                    <P>6209118286</P>
                </div>

            </div>
        </div>

    </div>
</body>

</html>
