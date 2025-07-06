# Sistema Web IMC (Indice de Masa Corporal)

Este es un sistema Java EE desarrollado para calcular el IMC de los usuarios, registrar su historial, realizar login y consumo simulado de una API REST. Esta organizado siguiendo el patrOn MVC y conectado a una base de datos MySQL.

---

## TecnologIas utilizadas
- Java EE
- JSP / Servlets
- MySQL
- Maven
- HTML / Bootstrap
- Spring (integrado manualmente)
- Apache Tomcat

---

## Funcionalidades
- Registro de usuarios
- Inicio de sesiOn
- Calculo del IMC
- Historial de registros
- Validacion de edad, estatura y peso
- Consumo de datos simulados desde una API REST

---

## Estructura del proyecto
- **modelo**: Clases `Usuario`, `IMCRegistro`, DAO
- **controlador**: Servlets como `LoginServlet`, `RegistroIMCServlet`
- **vista**: JSPs con formularios y resultados

---

## Base de Datos
La base de datos se llama `imc_app` y contiene las tablas `usuarios` e `imc_registros`.

---

## Instrucciones para correr el proyecto
1. Clonar este repositorio.
2. Importar como proyecto Maven en NetBeans o Eclipse.
3. Crear la base de datos MySQL (`imc_app`) usando el script en `/sql/estructura.sql`.
4. Configurar el `UsuarioDAO` con tus credenciales de conexion.
5. Ejecutar en un servidor Tomcat 10+.
6. Navegar a `http://localhost:8080/imc_app`.

---

## Créditos

Desarrollado por: **David Josué Bobadilla Caballero**  
Lenguaje: Java  
Repositorio: https://github.com/DBobadillaC/mavenproject5-1_0-SNAPSHOT.git

---

## Licencia

Este proyecto está bajo la Licencia MIT.

