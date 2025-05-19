# IaC con Terraform y Ansible sobre libvirtd

Este repositorio contiene la solución a la práctica RA5.2 de **Ciberseguridad en entornos de TI**, donde se han aplicado los principios de **Infraestructura como Código (IaC)** para aprovisionar y configurar una máquina virtual Ubuntu 24.04, usando **Terraform** y **Ansible**, pero con **libvirtd/KVM** en lugar de VirtualBox. 

---

## Introducción

La **Infraestructura como Código (IaC)** permite definir y gestionar entornos de TI de forma reproducible y auditable, eliminando la intervención manual y reduciendo errores humanos.  
- **Terraform** se utiliza para el aprovisionamiento declarativo de recursos (en este caso, una VM Ubuntu 24.04 sobre libvirtd).  
- **Ansible** automatiza la configuración y gestión del sistema operativo y servicios dentro de la VM. 

## Objetivos

- **RA5**: Implantar sistemas seguros de despliegue de software, utilizando herramientas de automatización.  
- **3.1** [Provisionar una VM Ubuntu 24.04.](./main.tf)
| ![provision](./images/1.png) |
  
- **3.2** [Configurar el sistema: `update & upgrade` + instalación de Apache.](./deploy.yml)
| ![apt update y install apache](./images/2.png)|


- **3.3** [Desplegar contenido web (`index.html`) y verificar su acceso.](./web/)
| ![apache funcionant](./images/3.png)|
