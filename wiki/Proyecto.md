# Proyecto Sistema Web IMC

## Propósito general de la aplicación
La aplicación "IMCApp" tiene como propósito permitir a los usuarios registrarse, iniciar sesión, calcular su Índice de Masa Corporal (IMC) y visualizar un historial de sus cálculos. Esta herramienta sirve como guía de salud básica, orientando al usuario según el resultado de su IMC.

---

## Clases que conforman la aplicación
La aplicación está compuesta por las siguientes clases Java:
• Modelo:
• Usuario
• IMCRegistro
• UsuarioDAO
• IMCDAO
• ConexionDB
• Controlador (Servlets):
• LoginServlet
• RegistroServlet
• CalculoIMCServlet
• HistorialServlet
• Vista (JSPs):
• index.jsp
• login.jsp
• registro.jsp
• historial.jsp

En total: 9 clases Java y 4 vistas JSP.

---

## Modelo, Vista, Controlador (MVC)
Modelo:
•	Usuario, IMCRegistro: representan las entidades y atributos del sistema (usuario y cálculo).
•	UsuarioDAO, IMCDAO: contienen la lógica para guardar y recuperar datos de la base de datos.
•	ConexionDB: se encarga de conectar con MySQL.
Vista (JSPs):
•	login.jsp, registro.jsp, historial.jsp, index.jsp: muestran formularios y resultados al usuario.
Controlador (Servlets):
•	Se encargan de manejar las solicitudes del usuario, procesarlas y redirigir a la vista correspondiente.

---

## ¿Qué hace cada clase y cómo se relacionan?
•	Usuario: clase POJO con nombre, edad, sexo, estatura, correo y contraseña.
•	IMCRegistro: representa un registro individual de cálculo de IMC (usuario, masa, resultado y fecha).
•	UsuarioDAO: contiene métodos como registrar() y autenticar() para manejar usuarios.
•	IMCDAO: maneja la inserción y recuperación de registros de IMC.
•	ConexionDB: centraliza la conexión a la base de datos, para evitar duplicar código.
•	RegistroServlet: recibe los datos de registro, los guarda mediante UsuarioDAO y redirige al login.
•	LoginServlet: valida los datos con UsuarioDAO y crea la sesión.
•	CalculoIMCServlet: recibe masa y estatura, calcula el IMC, lo guarda con IMCDAO y muestra el resultado.
•	HistorialServlet: busca los cálculos anteriores del usuario y los envía al historial.jsp.

---

## Relaciones:
• Los Servlets dependen de los DAO.
• Los DAO dependen de ConexionDB.
• Los JSP muestran la información que los Servlets les envían.
