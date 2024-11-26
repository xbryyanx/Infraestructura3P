# Examen Parcial: Despliegue de Infraestructura con Terraform
> [!NOTE]
Este proyecto despliega una infraestructura de nube utilizando Terraform. La infraestructura incluye una máquina virtual que, cuando se crea, instala Docker y ejecuta un archivo docker-compose.yml para obtener varios servicios. La implementación y destrucción de la infraestructura se gestiona a través de GitHub Actions, y el estado de Terraform se almacena en un contenedor de almacenamiento de Azure.


## Contenidos del repositorio:

•	Archivo main.tf donde se define la infraestructura Terraform

•	El docker-compose.yml donde está la configuración de los contenedores.

•	Y  el  .github/workflows/deploy.yml donde se configuraron los Github Actions para automatizar el despliegue y destrucción de la infraestructura 

## Arquitectura de la solución:
> [!IMPORTANT]
> ### 1.	Terraform:
> 
> •	Crea una máquina virtual en la nube que se configura automáticamente con Docker instalado.
> 
> •	Se utiliza un backend de almacenamiento Azure para almacenar el estado de Terraform, lo que garantiza un almacenamiento remoto y seguro.
>
> ### 2.	Servicios de Docker:
> 
> •	Nginx: actúa como proxy inverso para gestionar el tráfico.
>
> •	Let's Encrypt: automatiza la obtención y renovación de certificados SSL.
> 
> •	API MonoMap: se ejecuta mediante una imagen disponible en Docker Hub.
>
> •	MongoDB: base de datos que almacena los datos de la aplicación.
>
> ### 3.	Acciones de GitHub:
>•	Despliegue automático: al empujar en la rama principal, GitHub Actions ejecuta el flujo de trabajo para desplegar la infraestructura en la nube.
>
>•	Despliegue manual: usando workflow_dispatch, la infraestructura puede destruirse manualmente desde GitHub.

## Descripción del flujo de trabajo de Github Actions.
### 1.	Despliegue:
   
•	Cuando se realiza un push en la rama principal, se activa un flujo de trabajo que ejecuta Terraform para crear la infraestructura y desplegar los contenedores utilizando Docker Compose.

### 2.	Destrucción:
   
•	Se ha configurado una acción manual (workflow_dispatch) que permite destruir la infraestructura a través de un flujo de trabajo de acciones GitHub.

## Despliegue
> [!WARNING]
> Para desplegar la infraestructura:
> 1.	Clonar este repositorio.
> 2.	Configurar las credenciales de Azure en tu entorno local.
> 3.	Hacer push a la rama principal del repositorio para que GitHub Actions despliegue automáticamente la infraestructura.

## Destrucción
> [!CAUTION]
> Para destruir la infraestructura:
> 1.	Ir a la pestaña Acciones de GitHub.
> 2.	Seleccionar el flujo de trabajo de destrucción (Destruir infraestructura) y ejecutarlo manualmente.


