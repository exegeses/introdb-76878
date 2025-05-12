# Iniciar servidor de MySQL

> Una vez que instalamos el servidor de base de datos, de manera predeterminada éste ya está iniciado (modo automático)
> Esta nota es para aprender cómo iniciarlo y detenerlo si es que eso queremos hacer

## Windows  

> Para iniciar el servidor de base de datos de MySQL en Windows 
> debo utilizar el administrador de servicios

1. Presionar la combinación de teclas WIN + R  
2. Esto abrirá la ventana de ejecutar  
3. Ahí vamos a escribir "services.msc" y pulsar entrar
4. Se va a abrir el administrador de servicios
5. Buscar el servicio llamado MySQL8.0
6. Hacer clic derecho sobre el estado y seleccionar "Iniciar"

# Debian

> Para reiniciar el servidor de base de datos de MySQL en debian 
> puedo utilizar una terminal de comandos

1. Abrir la Terminal
2. Ejecutar el siguiente comando:

    systemctl start mysql

> Para detener el servicio MySQL, ejecutar:

    systemctl stop mysql  


> Para verificar el estado del servicio MySQL, ejecutar:

    systemctl status mysql  