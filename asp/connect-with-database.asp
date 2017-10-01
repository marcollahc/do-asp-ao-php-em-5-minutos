<%

Set conn = Server.CreateObject("ADODB.Connection")
conn.open "DRIVER={MySQL ODBC 5.3 ANSI Driver}; SERVER=host; PORT=3306; DATABASE=database; USER=user; PASSWORD=password; OPTION=3;"

conn.close
Set conn = Nothing 

%>