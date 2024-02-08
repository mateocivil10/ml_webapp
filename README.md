## Set up proxy :rocket:
--------------------
* set HTTPS_PROXY=http://es001-surf.zone2.proxy.allianz:8080
* set HTTP_PROXY=http://es001-surf.zone2.proxy.allianz:8080
* set PROXY_USER=eXXXXXX
* set PROXY_PASSWORD=pwd :

## Install environment 
----------------------
* conda env create -p .\venv -f .\bin\local\environment.yml :relaxed: 

## Github 
----------------------
* git checkout name_rama_interes_remoto **Cambia de rama en el repo local**
* git merge name_rama_remoto  **Fusiona la rama remota con la rama local actual**
* git push origin name_rama_actual_local:name_rama_remota **Hace push de la rama local a la rama remota**
* git add file_name **Agregar un fichero específico antes de un commit**
* git add . **Agrega todos los cambios ante de un commit**
* git commit -m "Mensaje descriptivo del commit" **Crea un commit con ese mensaje**
* git fetch origin **Actualiza el repositorio local, pero no actualiza los ficheros automaticamente**
* git push origin name_rama_remota **Actualiza inmediatamente el repo local con la rama especificada**

**Gestión de issues y pull request:**

1. Generar un issue en la página web de github
2. Trabajar los cambios sobre la rama que gestionará el issue
3. Agregar los ficheros modificados con el comando git add
4. Hacer commit pero es muy importante incluir en el comentario el número del issue EX: "Resuleve #10" si el issue es el 10
5. Hacer push sobre tu rama (la rama encargada del issue)
6. Crear la pull request (base: Main) (compare : rama encargada del issue)
7. El revisor se encargará de validar que los cambios propuestos estan ok y entonces aceptará cambio y guardara la pull request.

## SOME COMMENTS FOR DOCKER :package:
------------------------------------
Once you have created the app.py and the dockerfile please run the following commands on the terminal

1. docker build -t my_image . 
* **docker build is a docker command used to create an image**
* **-t is used to assign a name to the image**
* **my_image is the image name**
* **. indicates the file path where is all the information (dockerfile) to build the image**

2. docker run -dp 8081:5004 -ti --name my_cont my_image
* **docker run is a docker command used to create a container**
* **-d means that the container will be run in detach mode (segundo plano)**
* **-p is used to assign a port mapping, the first 8081 will be the local one, the second 5004 will be the cointainer one**
* **-ti let to interact with the container from the terminal**
* **my_cont is the container's name**

## DOCKEFILE :file_folder:
1. CMD ["gunicorn","--bind", "0.0.0.0:5004", "app:app"]
* **Defines that when the container is started, gunicorn will be executed to serve the flask app**
* **gunicorn will listen all net interfaces in the port 5004**

## Developers
----------------------
The developers responsible for the development and maintaining of this project.

* **Julian Caro** - *Author/Maintainer* - [mateocivil10@gmail.com](https://github.developer.allianz.io/jesusmanuel-sono)

