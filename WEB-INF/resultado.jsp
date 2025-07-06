<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Resultado</title>
</head>
<body>
  <h2>Resultado del Triángulo</h2>
  <p>Lado: <strong><%= request.getAttribute("lado") %></strong></p>
  <p>Área: <strong><%= request.getAttribute("area") %></strong></p>
  <p>Perímetro: <strong><%= request.getAttribute("perimetro") %></strong></p>

  <a href="index.jsp">Volver</a>
</body>
</html>
