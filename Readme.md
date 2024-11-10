# TutoC-: Aplicación ASP.NET Core

Este proyecto consiste en una aplicación sencilla desarrollada con ASP.NET Core, que muestra un mensaje de "Hello World" en el navegador.

<p align="center">
  ![Captura de pantalla de la aplicación mostrando el mensaje "Hello World" en el navegador](049F6D5C-1F32-4135-B19B-18EAAE6DA536.png)
</p>

## Requisitos del sistema

- .NET SDK 8.0 o superior.
- Docker (opcional, para despliegue en contenedores).

## Guía de instalación y uso

### Instalación local

1. Clona el repositorio:

    ```bash
    git clone https://github.com/Jonablo/tutoC-
    ```

2. Accede al directorio del proyecto:

    ```bash
    cd tutoC-
    ```

3. Ejecuta la aplicación:

    ```bash
    dotnet run
    ```

4. Accede a la aplicación a través de `http://localhost:8080` en tu navegador.

### Uso con Docker

Si prefieres usar la imagen de Docker ya disponible, sigue estos pasos:

1. Descarga la imagen desde Docker Hub:

    ```bash
    docker pull jonablo/tutoc-app
    ```

2. Ejecuta la imagen:

    ```bash
    docker run -p 8080:80 jonablo/tutoc-app
    ```

3. Accede a la aplicación en `http://localhost:8080`.

## Licencia

Este proyecto está licenciado bajo la licencia MIT.
