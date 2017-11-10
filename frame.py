import pygame,time
from sys import *
def pantalla_de_juego():
    pygame.init()
    screen = pygame.display.set_mode((1200, 800))
    pygame.display.set_caption("Arboles en 2D")
    pusheen = Pusheen(screen)
    bg_color = (230, 255, 200)
    while True:
        screen.fill(bg_color)
        pusheen.blitme()
        for event in pygame.event.get():
           # if event.type == pygame.QUIT:  
            #    quit()
            pass
        pygame.display.flip()

class Pusheen():
    def __init__(self, screen):
        self.screen = screen
        self.image = pygame.image.load('imagenes/pusheen.bmp')
        self.rect = self.image.get_rect()
        self.screen_rect = screen.get_rect()
        self.rect.centerx = self.screen_rect.centerx
        self.rect.bottom = self.screen_rect.bottom
    def blitme(self):
        self.screen.blit(self.image, self.rect)