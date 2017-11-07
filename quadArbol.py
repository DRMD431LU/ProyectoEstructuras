Class Nodo:
  Raiz=0
  def __init__(self, padre, quad):
    self.padre=padre
    self.hijos = [None,None,None,None]
        if padre == None:
            self.prof = 0
        else:
            self.prof = padre.prof + 1
        self.quad = quad
        x0,z0,x1,z1 = quad
        
