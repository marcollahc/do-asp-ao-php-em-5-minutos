<%

Set rs = Server.CreateObject("ADODB.Recordset")
rs.open "SELECT column FROM table WHERE column = '"& variable &"'", conn, 1, 3

If Not rs.eof Or Not rs.bof Then
  While Not rs.eof
  %>
    <div><%=rs("column")%></div>
  <%
  rs.movenext
  Wend
Else
  Response.Write "Not Available"
End If

rs.close
Set rs = Nothing 

%>