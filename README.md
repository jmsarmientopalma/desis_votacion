# Desis Votación Form

Este formulario ha sido desarrollado como test técnico del proceso de selección para *Programadores Web con experiencia*.
A continuación se indican las versiones relavantes de software para la ejecución del formulario Web:

- PHP 7.4
- MariaDB 10.6.12 (InnoDb storage engine)
- Javascript (ES6)
- jQuery 3.7

## Instalación de la Base de Datos

Para ejecutar correctamente la aplicación, se debe proceder con la creación de la base de datos **desi_vote** junto con sus objetos.
La manera más simple, es utilizando el *Dump* de la base de datos provisto para ser cargado.

`Todos los objetos de la base de datos están en la carpeta` **sql**. `Para este apartado, dicha carpeta se debe tomar como ruta base para los archivos`.


### Instalación usando el Dump (Backuṕ)

1. Crear la base de datos `desis_vote`
2. En la base de datos recién creada cargar el archivo `bkp/dump-desis_vote.sql`. Esto se recomienda realizarlo por medio de un software para administración de BD, aunque también puede ser realizado por medio del terminal de comandos:

```
mysql -u %user% -p %to-database% < bkp/dump-desis_vote.sql
```

3. Luego de cargar el backup, ejecutar el archivo SQL `script/credentials.sql`. Este archivo creará el usuario y sus credenciales para acceder desde la aplicación a la BD.

### Instalación usando los scripts SQL

También es posible generar la BD creando todos los objetos y su contenido de forma individual.

1. Crear la base de datos `desis_vote`
2. Ejecutar uno a uno todos los script sql de la carpeta `script`. Esto creará las tablas y su contenido si corresponde.
3. Ejecutar uno a uno todos los script sql de la carpeta `stored_procedure`. Esto creará todos los procedimientos almacenados necesarios para la aplicación.



`Nota : Si tiene errores en la creación de los procedimientos almacenados, verifique el caracter de término que tiene seteado en el server al momento de la ejecución. Puede que deba setear temporalmente un caracter distinto, como //`


## Instalación de la aplicación

Para bajar la aplicación a su entorno local, puede clonar este repositorio:

```
git clone https://github.com/jmsarmientopalma/desis_votacion.git
```

Esto bajará los archivos a su estructura local de directorios. Una vez teniendo la aplicación localmente, deberá configurarla para ser servida por su contenedor HTTP de preferencia. En mi caso, usé Apache2.
Por ejemplo, para Apache2, debe crear los archivos *.conf* con las configuraciones de *VirtualHost* en *ruta_base_de_Apache2/sites-available/* y posteriormente habilitar el sitio con el comando **a2ensite**.

**Nota :** Si no utiliza el comando *git clone* también existe la opción de bajar el código comprimido en Zip desde el botón *Código* de la página del proyecto en GitHub.



## Nota de Seguridad

Hay muchas mejoras a nivel de validaciones de datos y seguridad que podrían implementarse sobre las ya existentes en la aplicación. El diseño y estructura de código está pensado para mostrar la base de una aplicación eficaz, eficiente y siguiendo principios básicos de Clean Code.
De todos modos, se han implementado sanitizaciones de código en frontend y validaciones básicas en backend.



## Nota de estructura de directorios

Debe aclararse que **NUNCA** se debiera incluir el modelo de datos como parte del repositorio de código de una aplicación, a menos que sea con fines didácticos, pedagógicos o de demostración profesional, como lo es en este último caso.