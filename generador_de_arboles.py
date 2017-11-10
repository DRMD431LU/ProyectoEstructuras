import random
#**************************************************************#
class Nodo:
    RAIZ=0
    RAMA= 1
    HOJA= 2
    tam_min= 1
#*************************************************************#    
    def __init__(self,padre,rect):
        self.padre=padre
        self.dato_de_nodo=None
        self.hijos=[None,None,None,None]
        self.altura_de_arbol=0
        if (padre==None):
            self.altura_de_arbol=0;
        else:
            self.altura_de_arbol=padre.altura_de_arbol +1
        self.rect = rect
        x0,z0,x1,z1 = rect
        
        if self.padre == None:
            self.tipo = Nodo.RAIZ
        elif ((x1 - x0) <= Nodo.tam_min):
            self.tipo = Nodo.HOJA
        else:
            self.tipo = Nodo.RAMA
            
#*************************************************************#            
    def subdivision(self):
        if self.tIPO == Nodo.HOJA:
            return ;
        x0,z0,x1,z1 = self.rect
        h = (x1 - x0)/2
        rects = []
        rects.append( (x0, z0, x0 + h, z0 + h) )
        rects.append( (x0, z0 + h, x0 + h, z1) )
        rects.append( (x0 + h, z0 + h, x1, z1) )
        rects.append( (x0 + h, z0, x1, z0 + h) )
        for n in range(len(rects)):
            span = self.spans_feature(rects[n])
            if span == True:
                self.hijos[n] = self.get_es_instancia(rects[n])
                self.hijos[n].subdivision() # << recursion
#*************************************************************#    
    def get_es_instancia(self,rect):
        return Nodo(self,rect) 
#**************************************************************#    
    def Mostrar_nodos(self):
        if self.dato_de_nodo is None:
            return ;
        self.ptr_izq.Mostrar_nodos()
        print(self.dato_de_nodo)
        self.ptr_der.Mostrar_nodos()
#**************************************************************#
def crear_arbol():
    raiz_de_arbol=Nodo()
    lista=[]
    for i in range(1,11):
        lista.append(random.randint(1,10))
    for numero in lista:
        raiz_de_arbol.Insertar_nodo(numero)
        raiz_de_arbol.Insertar_nodo(numero)
    raiz_de_arbol.Mostrar_nodos()
