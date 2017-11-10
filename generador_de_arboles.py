import random
class Nodo:
    def __init__(self):
        self.dato_de_nodo=None
        self.ptr_der=None
        self.ptr_izq=None
        self.altura_de_arbol=0
    def Insertar_nodo(self,dt_para_nodo):
        if (self.dato_de_nodo==None):
            self.dato_de_nodo=dt_para_nodo
            self.ptr_izq=Nodo()
            self.ptr_der=Nodo()
        elif dt_para_nodo<dato_de_nodo:
            self.ptr_izq.Insertar_nodo(dt_para_nodo)
        elif (dt_para_nodo>dato_de_nodo):
            self.ptr_der.Insertar_nodo(dt_para_nodo)
        else:
            print("El número es duplicado o no es valido")
    def Mostrar_nodos(self):
        if self.dato_de_nodo is None:
            return ;
        self.ptr_izq.Mostrar_nodos()
        print(self.dato_de_nodo)
        self.ptr_der.Mostrar_nodos()
def crear_arbol():
    raiz_de_arbol=Nodo()
    lista=[]
    for i in range(1,11):
        lista.append(random.randint(1,10))
    for numero in lista:
        raiz_de_arbol.Insertar_nodo(numero)
        raiz_de_arbol.Insertar_nodo(numero)
    raiz_de_arbol.Mostrar_nodos()
