<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<header class="w3-display-container w3-content w3-wide"
        style="max-width: 1500px;" id="home">
    <img class="w3-image" src="../school/w3images/learning.jpg"
         alt="Architecture" width="1500" height="800">
    <div class="w3-display-middle w3-margin-top w3-center">
        <h1 class="w3-xxlarge w3-text-white">
            <span class="w3-padding w3-black w3-opacity-min"><b>JS</b></span> <span
                class="w3-hide-small w3-text-black">School</span>
        </h1>
    </div>

    <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="menu.css" type="text/css">
    <style>
        .selected {
            background-color: red;
        }

        .mystyle {
            width: 100%;
            padding: 25px;
            background-color: coral;
            color: white;
            font-size: 25px;
        }

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            height: 50px;
        }

        th, td:hover {
            background-color: #00cc66;
        }

        #k1 {
            background-color: #00cc66;
        }

        th, td {
            padding: 5px;
            text-align: left;
        }

        /*dropdown*/
        .btn {
            background-color: #2196F3;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
        }

        /* The container <div> - needed to position the dropdown content */
        .dropdown {
            float: left;
            display: inline-block;
        }

        /* Dropdown Content (Hidden by Default) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            z-index: 1;
        }

        /* Links inside the dropdown */
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        /* Change color of dropdown links on hover */
        .dropdown-content a:hover {
            background-color: #ddd
        }

        /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Change the background color of the dropdown button when the dropdown content is shown */
        .btn:hover, .dropdown:hover .btn {
            background-color: #0b7dda;
        }
    </style>
    <script>
        function confirmation(id){
            document.getElementById('prodId').value=id;
            document.getElementById('id01').style.display='block';
        }

        function confirmationYes() {
            var variableTableId = document.getElementById("prodId").value;
            document.getElementById(variableTableId).style.display='none';
            document.getElementById('id01').style.display='none';
        }

        function confirmationNo() {
            document.getElementById('id01').style.display='none';
        }

    </script>
    <SCRIPT type="text/javascript">
        function viewDayOne() {
            var data = new Date();
            var day1 = data.getDay();
            switch (day1) {
                case 0:
                    day1 = "Sunday";
                    break;
                case 1:
                    day1 = "Monday";
                    break;
                case 2:
                    day1 = "Tuesday";
                    break;
                case 3:
                    day1 = "Wednesday";
                    break;
                case 4:
                    day1 = "Thursday";
                    break;
                case 5:
                    day1 = "Friday";
                    break;
                case 6:
                    day1 = "Saturday";
                    break;
            }

            var text = day1;
            text += "<BR>";
            document.getElementById("data1").innerHTML = text;
        }

        function viewDayTwo() {
            var data = new Date();
            var day1 = data.getDay();
            switch (day1) {
                case 6:
                    day1 = "Sunday";
                    break;
                case 0:
                    day1 = "Monday";
                    break;
                case 1:
                    day1 = "Tuesday";
                    break;
                case 2:
                    day1 = "Wednesday";
                    break;
                case 3:
                    day1 = "Thursday";
                    break;
                case 4:
                    day1 = "Friday";
                    break;
                case 5:
                    day1 = "Saturday";
                    break;
            }

            var text = day1;
            text += "<BR>";
            document.getElementById("data2").innerHTML = text;
        }

        function viewDayThree() {
            var data = new Date();
            var day1 = data.getDay();
            switch (day1) {
                case 5:
                    day1 = "Sunday";
                    break;
                case 6:
                    day1 = "Monday";
                    break;
                case 0:
                    day1 = "Tuesday";
                    break;
                case 1:
                    day1 = "Wednesday";
                    break;
                case 2:
                    day1 = "Thursday";
                    break;
                case 3:
                    day1 = "Friday";
                    break;
                case 4:
                    day1 = "Saturday";
                    break;
            }

            var text = day1;
            text += "<BR>";
            document.getElementById("data3").innerHTML = text;
        }

        function viewDayFour() {
            var data = new Date();
            var day1 = data.getDay();
            switch (day1) {
                case 4:
                    day1 = "Sunday";
                    break;
                case 5:
                    day1 = "Monday";
                    break;
                case 6:
                    day1 = "Tuesday";
                    break;
                case 0:
                    day1 = "Wednesday";
                    break;
                case 1:
                    day1 = "Thursday";
                    break;
                case 2:
                    day1 = "Friday";
                    break;
                case 3:
                    day1 = "Saturday";
                    break;
            }

            var text = day1;
            text += "<BR>";
            document.getElementById("data4").innerHTML = text;
        }

        function viewDayFive() {
            var data = new Date();
            var day1 = data.getDay();
            switch (day1) {
                case 3:
                    day1 = "Sunday";
                    break;
                case 4:
                    day1 = "Monday";
                    break;
                case 5:
                    day1 = "Tuesday";
                    break;
                case 6:
                    day1 = "Wednesday";
                    break;
                case 0:
                    day1 = "Thursday";
                    break;
                case 1:
                    day1 = "Friday";
                    break;
                case 2:
                    day1 = "Saturday";
                    break;
            }

            var text = day1;
            text += "<BR>";
            document.getElementById("data5").innerHTML = text;
        }

        function viewDaySix() {
            var data = new Date();
            var day1 = data.getDay();
            switch (day1) {
                case 2:
                    day1 = "Sunday";
                    break;
                case 3:
                    day1 = "Monday";
                    break;
                case 4:
                    day1 = "Tuesday";
                    break;
                case 5:
                    day1 = "Wednesday";
                    break;
                case 6:
                    day1 = "Thursday";
                    break;
                case 0:
                    day1 = "Friday";
                    break;
                case 1:
                    day1 = "Saturday";
                    break;
            }

            var text = day1;
            text += "<BR>";
            document.getElementById("data6").innerHTML = text;
        }

        function viewDaySeven() {
            var data = new Date();
            var day1 = data.getDay();
            switch (day1) {
                case 1:
                    day1 = "Sunday";
                    break;
                case 2:
                    day1 = "Monday";
                    break;
                case 3:
                    day1 = "Tuesday";
                    break;
                case 4:
                    day1 = "Wednesday";
                    break;
                case 5:
                    day1 = "Thursday";
                    break;
                case 6:
                    day1 = "Friday";
                    break;
                case 0:
                    day1 = "Saturday";
                    break;
            }

            var text = day1;
            text += "<BR>";
            document.getElementById("data7").innerHTML = text;
        }


        function addDropdownContent() {
            var thisText = $(this).text();
            var parentText = $(this).parent().prev().text();
            $("#level").val(parentText + ": " + thisText);
        }

        document.addEventListener("DOMContentLoaded", function (event) {
            $("td").click(toggleSelection);
            $(".dropdown-content div").click(addDropdownContent);
        });
    </SCRIPT>

    <script type="text/javascript">
        function redirect() {
            window.location = "/school/menu1"
        }
    </script>
</header>


<body
        onLoad="viewDayTwo(), viewDayOne(), viewDayThree(), viewDayFour(), viewDayFive(), viewDaySix(), viewDaySeven()">

<div class="w3-top">
    <div class="w3-bar w3-white w3-wide w3-padding w3-card">
        <a href="#home" class="w3-bar-item w3-button"><b>JS</b> School</a>

        <div class="w3-right w3-hide-small">
            <a href="#projects" class="w3-bar-item w3-button">Reservation</a> <a
                href="#Level" class="w3-bar-item w3-button">Level</a> <a
                href="#contact" class="w3-bar-item w3-button">Personal details</a>
            <a href="http://localhost:8080/school/course"
               class="w3-bar-item w3-button">Course</a> <a
                href="http://localhost:8080/school/login"
                class=" w3-bar-item w3-button ">Login</a>
        </div>
    </div>
</div>

<div class="w3-content w3-padding" style="max-width: 1564px">

    <div class="w3-container w3-padding-32" id="projects">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Reservation</h3>
    </div>

    <div class="w3-row-padding">
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding"></div>
                <img src="../school/w3images/apple.jpeg" alt="House"
                     style="width: 100%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding"></div>
                <img src="../school/w3images/pensils.jpg" alt="House"
                     style="width: 100%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding"></div>
                <img src="../school/w3images/teach.jpg" alt="House"
                     style="width: 100%">
            </div>
        </div>
        <div class="w3-col l3 m6 w3-margin-bottom">
            <div class="w3-display-container">
                <div class="w3-display-topleft w3-black w3-padding"></div>
                <img src="../school/w3images/book.jpg" alt="House"
                     style="width: 100%">
            </div>
        </div>
    </div>

    <div class="w3-center">
        <div class="w3-bar">

            <div class="w3-dropdown-hover  ">
                <button ID="data1" class=" w3-button w3-black w3-padding-large"></button>
                <ul class="w3-ul w3-card-4">
                    <li id='1.11' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">12-14</li>
                    <li id='1.12' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">14-16</li>
                    <li id='1.13' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">16-18</li>
                    <li id='1.14' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">18-20</li>
                    <li id='1.15' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">20-22</li>
                </ul>
            </div>
            <div class="w3-dropdown-hover ">
                <button ID="data2" class=" w3-button w3-black w3-padding-large"></button>
                <ul class="w3-ul w3-card-4">
                    <li id='2.11' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">12-14</li>
                    <li id='2.12' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">14-16</li>
                    <li id='2.13' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">16-18</li>
                    <li id='2.14' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">18-20</li>
                    <li id='2.15' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">20-22</li>
                </ul>
            </div>
            <div class="w3-dropdown-hover ">
                <button ID="data3" class="w3-button w3-black w3-padding-large"></button>
                <ul class="w3-ul w3-card-4">
                    <li id='3.11' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">12-14</li>
                    <li id='3.12' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">14-16</li>
                    <li id='3.13' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">16-18</li>
                    <li id='3.14' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">18-20</li>
                    <li id='3.15' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">20-22</li>
                </ul>
            </div>
            <div class="w3-dropdown-hover ">
                <button ID="data4" class="w3-button w3-black w3-padding-large"></button>
                <ul class="w3-ul w3-card-4">
                    <li id='4.11' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">12-14</li>
                    <li id='4.12' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">14-16</li>
                    <li id='4.13' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">16-18</li>
                    <li id='4.14' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">18-20</li>
                    <li id='4.15' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">20-22</li>
                </ul>
            </div>
            <div class="w3-dropdown-hover ">
                <button ID="data5" class="w3-button w3-black w3-padding-large"></button>
                <ul class="w3-ul w3-card-4">
                    <li id='5.11' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">12-14</li>
                    <li id='5.12' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">14-16</li>
                    <li id='5.13' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">16-18</li>
                    <li id='5.14' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">18-20</li>
                    <li id='5.15' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">20-22</li>
                </ul>
            </div>
            <div class="w3-dropdown-hover ">
                <button ID="data6" class="w3-button w3-black w3-padding-large"></button>
                <ul class="w3-ul w3-card-4">
                    <li id='6.11' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">12-14</li>
                    <li id='6.12' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">14-16</li>
                    <li id='6.13' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">16-18</li>
                    <li id='6.14' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">18-20</li>
                    <li id='6.15' class=" w3-display-container w3-hover-indigo" onclick="confirmation(this.id)">20-22</li>
                </ul>
            </div>
            <div class="w3-dropdown-hover ">
                <button ID="data7" class="w3-button w3-black w3-padding-large"></button>
                <ul class="w3-ul w3-card-4">
                    <li id='7.11' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">12-14</li>
                    <li id='7.12' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">14-16</li>
                    <li id='7.13' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">16-18</li>
                    <li id='7.14' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">18-20</li>
                    <li id='7.15' class=" w3-display-container w3-hover-aqua" onclick="confirmation(this.id)">20-22</li>
                </ul>
            </div>

        </div>
    </div>

    <input id="prodId" name="prodId" type="hidden" value="0">

    <div id="id01" class="w3-modal">
        <div class="w3-modal-content ">
            <div class="w3-container">
                <div class="w3-center">
                    <div class="w3-bar">
                        <p>
                            You are sure that you are deciding on these activities?</p>
                        <span onclick="confirmationYes(id)" class="w3-button w3-green   w3-display w3-center">TAK</span>
                        <span onclick="confirmationNo()" class="w3-button w3-red w3-display w3-center">NIE</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="w3-container w3-padding-32" id="Level">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Level</h3>

        <h4>CHOOSE LEVEL</h4>

        <div class="btn-group">

            <div class="dropdown ">
                <button class="btn" style="border-left: 1px solid navy">
                    Basic level <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content ">
                    <div>Natural numbers</div>
                    <div>Normal fractions</div>
                    <div>Decimal fractions</div>
                    <div>Integers</div>
                    <div>Negative numbers</div>
                    <div>Percents</div>
                    <div>Algebraic expressions</div>
                    <div>Equations and inequalities</div>
                    <div>Coordinate system</div>
                    <div>Geometry</div>
                    <div>Figures on the plane (at student level 6)</div>
                    <div>Prisms</div>
                </div>
            </div>


            <div class="dropdown">
                <button class="btn" style="border-left: 1px solid navy">
                    Junior high school <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <div>Numbers and actions</div>
                    <div>Actions on fractions</div>
                    <div>Decimals</div>
                    <div>Negative numbers</div>
                    <div>Percents</div>
                    <div>Powers and roots</div>
                    <div>Algebraic expressions</div>
                    <div>Equations and inequalities</div>
                    <div>Equation systems</div>
                    <div>Coordinate System</div>
                    <div>Functions</div>
                    <div>Geometric Figures</div>
                    <div>Circle length. Wheel field</div>
                    <div>Rectangular triangles</div>
                    <div>Theorem of Tales and similarity of figures</div>
                    <div>Solids</div>
                    <div>Solid bodies</div>
                </div>
            </div>


            <div class="dropdown">
                <button class="btn" style="border-left: 1px solid navy">
                    High school <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <div>Elements of mathematical logic</div>
                    <div>Numerical sets. Real numbers</div>
                    <div>Vectors</div>
                    <div>Function and its properties</div>
                    <div>Trigonometric functions</div>
                    <div>Linear function</div>
                    <div>Quadratic function</div>
                    <div>Polynomials of one variable</div>
                    <div>Rational functions</div>
                    <div>Transformations of the plane - analytic interpretation
                    </div>
                    <div>Exponential function</div>
                    <div>Logarithmic function</div>
                    <div>Number sequences</div>
                    <div>Combinatorics</div>
                    <div>Probability calculus</div>
                    <div>Statistics elements</div>
                    <div>Basic properties of geometric figures on a plane</div>
                    <div>Theorems of sines and cosines</div>
                    <div>Figure boxes</div>
                    <div>Straights and planes in space</div>
                    <div>Prisms</div>
                    <div>Pyramids</div>
                    <div>Solid bodies</div>
                </div>
            </div>

            <div class="dropdown">
                <button class="btn" style="border-left: 1px solid navy">
                    Technical <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <div>Elements of mathematical logic</div>
                    <div>Numerical sets. Real numbers</div>
                    <div>Vectors</div>
                    <div>Function and its properties</div>
                    <div>Trigonometric functions</div>
                    <div>Linear function</div>
                    <div>Quadratic function</div>
                    <div>Polynomials of one variable</div>
                    <div>Rational functions</div>
                    <div>Transformations of the plane - analytic interpretation</div>
                    <div>Exponential function</div>
                    <div>Logarithmic function</div>
                    <div>Number sequences</div>
                    <div>Combinatorics</div>
                    <div>Probability calculus</div>
                    <div>Statistics elements</div>
                    <div>Basic properties of geometric figures on a plane</div>
                    <div>Theorems of sines and cosines</div>
                    <div>Figure boxes</div>
                    <div>Straights and planes in space</div>
                    <div>Prisms</div>
                    <div>Pyramids</div>
                    <div>Solid bodies</div>
                </div>
            </div>

            <div class="dropdown">
                <button class="btn" style="border-left: 1px solid navy">
                    Studies <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <div>logic</div>
                    <div>mathematical analysis</div>
                    <div>linear algebra</div>
                    <div>algebra</div>
                    <div>discrete mathematics</div>
                    <div>probability calculus</div>
                    <div>statistics</div>
                    <div>differential equations</div>
                    <div>numerical analysis</div>
                    <div>functional analysis</div>
                    <div>topology</div>
                    <div>stochastic processes</div>
                </div>
            </div>
        </div>

        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16"></h3>

    </div>


    <div class="w3-container w3-padding-32" id="contact">
        <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">Personal
            details</h3>
        <p>Provide your personal details.</p>
        <form action="success" target="_blank" method="post">
            <input class="w3-input" type="hidden" required id="reservation"
                   name="reservation" value=""> <input class="w3-input"
                                                       type="hidden" required id="level" name="level"
                                                       value="Nie wybrano poziomu"> <input class="w3-input"
                                                                                           type="text"
                                                                                           placeholder="Name" required
                                                                                           name="name"> <input
                class="w3-input w3-section" type="text" placeholder="Email"
                required name="email"> <input class="w3-input w3-section"
                                              type="text" placeholder="Phone" required name="numberPhone">
            <input class="w3-input w3-section" type="text" placeholder="Comment"
                   required name="comment"> <input class=" w3-section"
                                                   type="checkbox" required name="mail"> Notifications by
            mail? <br>
            <button class="w3-button w3-black w3-section" type="submit">
                SEND MESSAGE
            </button>
        </form>
    </div>
</div>

<div>
    <iframe
            src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6924.342122868775!2d20.707595937645316!3d52.15024306920391!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471949833bccae33%3A0x1fc34ceda37eb7c9!2sKwiatowa+14%2C+05-840+Brwin%C3%B3w!5e0!3m2!1sen!2spl!4v1521179690404"
            width="100%" height="250" frameborder="0" style="border: 0"
            allowfullscreen></iframe>
</div>

<footer class="w3-center w3-black w3-padding-16">
    <p>
        Author: <a target="_blank" class="w3-text-green">Jan Szelągowski</a>
    </p>
</footer>

</body>
</html>
