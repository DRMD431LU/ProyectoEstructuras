#Se importan las librerias para iniciar la pantalla
import pygame,sys,time
#se define la funcion pantalla de juego
def pantalla_de_juego():
#se inicia la pantalla con un tamaño de 1024 y 900 pixeles
#se pausa la pantalla por 50 segundos mientras no tiene comportamiento

    fr_marco_juego=pygame.display.set_mode((1024,900))
    pygame.display.set_caption("Arboles en 2D")
    time.sleep(50)
#variables que no tienen un uso actual
fps_Control=pygame.time.Clock();
