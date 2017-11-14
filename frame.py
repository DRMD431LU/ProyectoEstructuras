import pygame
import funciones_juego as fj
from clases import *
from settings import Settings

def pantalla_de_juego():
    pygame.init()
    ai_settings=Settings()
    screen = pygame.display.set_mode((ai_settings.screen_width,ai_settings.screen_height))
    pygame.display.set_caption("Arboles en 2D")
    pusheen = Pusheen(screen)
    while True:     
        fj.check_eventos(pusheen)
        pusheen.update()
        fj.act_screen(ai_settings,screen,pusheen)
        

