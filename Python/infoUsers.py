import os
import platform


def mostrar_informacion():
    print("Información del Sistema Operativo:")
    print("Nombre del SO:", platform.system())
    print("Arquitectura del SO:", platform.architecture())
    print("Nombre del procesador:", platform.processor())


def root():
    if os.getuid() == 0:
        exit(0)


def opcion_1():
    root()
    mostrar_informacion()
    print("Debe ejecutar este programa como root ")


def opcion_3():
    directorio = input("Introduce el nombre del directorio: ")
    if os.path.exists(directorio):
        if os.path.isdir(directorio):
            print("El directorio ya existe.")
        else:
            print("La ruta especificada no es un directorio.")
    else:
        crear_directorio = input("El directorio no existe. ¿Desea crearlo? (s/n): ")
        if crear_directorio.lower() == 's':
            os.makedirs(directorio)
            print("Directorio creado con éxito.")

def opcion_2():
    usuario=input("Dime un usuario ")
    r=open("/etc/passwd", mode="r")
    linea=r.readlines()
    for i in linea:
        if usuario in i:
            enc = True
    if enc==True:
        print("El usuario ya existe")
    else:
        os.system("useradd -m" + usuario)

while True:
    print("\nMenú:")
    print("1. Mostrar información del SO y de la CPU")
    print("2. Mostrar/Crear información de un usuario")
    print("3. Comprobar/Crear directorio")
    print("4. Salir")
    opcion = input("Introduce una opción: ")

    if opcion == '1':
        opcion_1()
    elif opcion == '2':
        opcion_2()
    elif opcion == '3':
        opcion_3()
    elif opcion == '4':
        print("Salir")
        break
    else:
        print("Opción no válida.")