import pygame
import funciones_juego as fj
from clases import *

def pantalla_de_juego():
    pygame.init()
    screen = pygame.display.set_mode((1200, 800))
    pygame.display.set_caption("Arboles en 2D")
    pusheen = Pusheen(screen)
    bg_color = (230, 255, 200)
    while True:
        screen.fill(bg_color)
        pusheen.blitme()
        fj.check_eventos()
        pygame.display.flip()

