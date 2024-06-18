# Este Dockerfile utiliza la imagen base `maven:3-alpine`
FROM maven:3-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /appmavenjenkins

# Copia el contenido del directorio actual (donde está ubicado el Dockerfile) al directorio `/appmavenjenkins` dentro del contenedor
ADD . /appmavenjenkins

# Expone el puerto 3000 del contenedor para que pueda ser accesible desde fuera
EXPOSE 3000

# Comando por defecto que se ejecutará al iniciar el contenedor
CMD jenkins/scripts/deliver.sh