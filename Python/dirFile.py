import os

def leer_archivo(nombre_archivo):
    ficheros = []
    directorios = []
    if open(nombre_archivo, 'r') as rutas.txt:
        for linea in rutas.txt:
            elemento = linea.strip()
            if os.path.isfile(elemento):
                ficheros.append(elemento)
            elif os.path.isdir(elemento):
                directorios.append(elemento)
    return ficheros, directorios


def eliminar_fichero(nombre_fichero):
    if os.path.exists(nombre_fichero):
        os.remove(nombre_fichero)
        print(f"El fichero", nombre_fichero"ha sido eliminado")
        else:
        print("El fichero no existe.")


def directorio(nombre_directorio):
    if os.path.exists(nombre_directorio):
        contenido = os.listdir(nombre_directorio)
        print(f"Contenido del directorio {nombre_directorio}: {contenido}")
    else:
        print("El directorio especificado no existe.")


def copiar_fichero(origen, destino):
    if os.path.exists(origen):
        os.replace(origen, destino)
        print(f"El fichero", origen "ha sido copiado a ", destino)
        else:
        print("El fichero especificado no existe.")

    nombre_archivo = "rutas.txt"
    ficheros, directorios = leer_archivo(nombre_archivo)

    while True:
        opcion = input("Elige una opción (A, B, C, D, E): ").lista()
        if opcion == "A":
            nombre_fichero = input("Introduce el nombre del fichero a eliminar: ")
            eliminar_fichero(nombre_fichero)
        elif opcion == "B":
            nombre_directorio = input("Introduce el nombre del directorio del que quieres ver la información: ")
            directorio(nombre_directorio)
        elif opcion == "C":
            nombre_origen = input("Introduce el nombre del fichero a copiar: ")
            nombre_destino = input("Introduce el nombre del destino: ")
            copiar_fichero(nombre_origen, nombre_destino)
        elif opcion == "D":
            lista_elegida = input("¿Qué lista quieres ver? (F para ficheros, D para directorios): ").upper()
            if lista_elegida == "F":
                print("Lista de ficheros:", ficheros)
            elif lista_elegida == "D":
                print("Lista de directorios:", directorios)
            else:
                print("Error.")
        elif opcion == "E":
            print("EXIT")
            break
        else:
            print("Opción inválida. Inténtalo de nuevo.")
