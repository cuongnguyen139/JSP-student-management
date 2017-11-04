<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <TITLE>Member Information</TITLE>
    </HEAD>

    <BODY>
        <H1>Member Information</H1>

        <% 
        		Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection connection = DriverManager.getConnection(
            		"jdbc:mysql://localhost:3306/login", "cuong", "nguyen");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from member") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>ID</TH>
                <TH>City</TH>
                <TH>First Name</TH>
                <TH>Last Name</TH>
                <TH>Email</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>








