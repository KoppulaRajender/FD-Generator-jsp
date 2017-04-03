<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C:\Users\koppula\Downloads\fd_jsp</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
</head>

<body>

    <%
        String gen=request.getParameter("gendersec");
        String country=request.getParameter("countrysec");
        String age=request.getParameter("agesec");
        String s1="limit1";
        String s2="limit2";
        int a;
        int b;
        if (age.equals(s1)) {
            a=19;
            b=40;
        }
        if (age.equals(s2)){
            a=40;
            b=70;
        }
        else{
            a=19;
            b=70;
        }
        try{
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/fakedb";
        String username="root";
        String password="Raju@007";
        Connection conn=DriverManager.getConnection(url, username, password);
        String query="select * from fakenames where gender='"+gen+"' AND nameset='"+country+"' AND age BETWEEN '"+a+"' AND '"+b+"' ORDER BY RAND() limit 1 ";
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery(query);
        //out.println("done");
        while(rs.next())
        {
    %>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand text-uppercase navbar-right navbar-link" href="#"><img src="assets/img/logo.jpg" id="logo"> <span>fd generator</span></a>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active" role="presentation"><a href="#">Help </a></li>
                    <li role="presentation"><a href="#">About </a></li>
                    <li role="presentation"><a href="#">Donate </a></li>
                </ul>
            </div>
        </div>
    </nav>
    <h1 class="text-nowrap text-center text-warning bg-warning">Generated Details </h1>
    <div class="container">
        <div class="row">
            <div class="col-xs-3"><img src="assets/img/Login-Icon.png" id="login-icon"></div>
            <div class="col-xs-9">
                <h5 class="text-nowrap text-left">NAME: &nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;<%=rs.getString("givenname") %>&emsp;<%=rs.getString("surname") %> </h5></div>
            <div class="col-xs-9">
                <h5 class="text-nowrap text-left">COUNTRY:&emsp;&emsp;<%=rs.getString("nameset") %> </h5></div>
            <div class="col-xs-9">
                <h5 class="text-nowrap text-left">AGE:&emsp;&emsp;&emsp;&emsp;&emsp;<%=rs.getString("age") %> </h5></div>
        </div>
    </div>
    <div class="container" id="container-block">
        <div class="table-responsive">
            <table class="table">
            <thead>
                <tr>
                    <th>PROFILE</th>
                </tr>
            </thead>
                <tbody>
                    <tr>
                        <td>NAME</td>
                        <td><%=rs.getString("givenname") %></td>
                    </tr>
                    <tr>
                        <td>SURNAME</td>
                        <td><%=rs.getString("surname") %></td>
                    </tr>
                    <tr>
                        <td>GENDER</td>
                        <td><%=rs.getString("gender") %></td>
                    </tr>
                    <tr>
                        <td>D.O.B</td>
                        <td><%=rs.getString("birthday") %></td>
                    </tr>
                    <tr>
                        <td>OCCUPATION</td>
                        <td><%=rs.getString("occupation") %></td>
                    </tr>
                    <tr>
                        <td>COMPANY</td>
                        <td><%=rs.getString("company") %></td>
                    </tr>
                    <tr>
                        <td>EMAIL ID</td>
                        <td><%=rs.getString("emailaddress") %></td>
                    </tr>
                    <tr>
                        <td>TELEPHONE</td>
                        <td><%=rs.getString("telephonenumber") %></td>
                    </tr>
                    <tr>
                        <td>AGE</td>
                        <td><%=rs.getString("age") %></td>
                    </tr>
                    <tr>
                        <td>TROPICAL ZODIAC</td>
                        <td><%=rs.getString("tropicalzodiac") %></td>
                    </tr>
                    <tr>
                        <td>BLOOD GROUP</td>
                        <td><%=rs.getString("bloodtype") %></td>
                    </tr>
            </tbody>
            </table>
        </div>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>ADDRESS</th>
                    </tr>
                </thead>
            <tbody>
                    <tr>
                        <td>STREET NAME</td>
                        <td><%=rs.getString("streetaddress") %></td>
                    </tr>
                    <tr>
                        <td>CITY</td>
                        <td><%=rs.getString("city") %></td>
                    </tr>
                    <tr>
                        <td>STATE</td>
                        <td><%=rs.getString("statefull") %></td>
                    </tr>
                    <tr>
                        <td>ZIPCODE</td>
                        <td><%=rs.getString("zipcode") %></td>
                    </tr>
                    <tr>
                        <td>COUNTRY</td>
                        <td><%=rs.getString("countryfull") %></td>
                    </tr>
                </tbody>
            </table>
        </div>



        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>CARD DETAILS</th>
                    </tr>
                </thead>
            <tbody>
                    <tr>
                        <td>CCTYPE</td>
                        <td><%=rs.getString("cctype") %></td>
                    </tr>
                    <tr>
                        <td>CCNUMBER</td>
                        <td><%=rs.getString("ccnumber") %></td>
                    </tr>
                    <tr>
                        <td>CVV2</td>
                        <td><%=rs.getString("CVV2") %></td>
                    </tr>
                    <tr>
                        <td>CC EXPIRES</td>
                        <td><%=rs.getString("ccexpires") %></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
<%
        }

%>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
<%
    rs.close();
    stmt.close();
    conn.close();
}

catch(Exception e) 
    {
       e.printStackTrace();
       out.println("<h1> error: "+ e.getMessage()+"</h1>");
    }

%>
</body>

</html>