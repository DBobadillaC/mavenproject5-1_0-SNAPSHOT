<%@ page import="java.util.List" %>
<%@ page import="modelo.IMCRegistro" %>
<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<IMCRegistro> historial = (List<IMCRegistro>) session.getAttribute("historial");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Historial de IMC</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #e9ecef;
            padding: 40px;
        }

        .container {
            max-width: 800px;
            margin: auto;
            background: #ffffff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        table th {
            background-color: #343a40;
            color: white;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Historial de IMC</h2>

    <%
        if (historial != null && !historial.isEmpty()) {
    %>
    <table>
        <tr>
            <th>#</th>
            <th>Masa (kg)</th>
            <th>IMC</th>
            <th>Fecha</th>
        </tr>
        <%
            int i = 1;
            for (IMCRegistro reg : historial) {
        %>
        <tr>
            <td><%= i++ %></td>
            <td><%= reg.getMasa() %></td>
            <td><%= String.format("%.2f", reg.getImc()) %></td>
            <td><%= reg.getFecha() %></td>
        </tr>
        <% } %>
    </table>
    <% } else { %>
    <p>No hay registros aún.</p>
    <% } %>

    <a href="imc.jsp">← Volver al cálculo de IMC</a>
</div>
</body>
</html>
