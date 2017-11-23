# -*- coding: utf-8 -*-
"""
Created on Thu Nov  9 22:50:27 2017

@author: DRMD
"""
import pygame

class Pusheen():
    def __init__(self, screen):
        self.screen = screen
        self.image = pygame.image.load('imagenes/pusheen.bmp')
        self.rect = self.image.get_rect()
        self.screen_rect = screen.get_rect()
        self.rect.centerx = self.screen_rect.centerx
        self.rect.bottom = self.screen_rect.bottom
        self.moving_right=False
        self.moving_left=False
        self.moving_up=False
        self.moving_down=False
    def blitme(self):
        self.screen.blit(self.image, self.rect)
    def update(self):
        if self.moving_right:
            self.rect.centerx+=1
        elif self.moving_left:
            self.rect.centerx-=1
        elif self.moving_up:
            self.rect.centery-=1
        elif self.moving_down:
            self.rect.centery+=1
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

import pygame
from sys import exit

def check_eventos(pusheen):
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            exit()
        elif (event.type == pygame.KEYDOWN):
            if event.key == pygame.K_RIGHT:
                pusheen.moving_right=True
            elif(event.key == pygame.K_LEFT):
                pusheen.moving_left=True
            elif(event.key == pygame.K_UP):
                pusheen.moving_up=True
            elif(event.key == pygame.K_DOWN):
                pusheen.moving_down=True
        elif (event.type==pygame.KEYUP):
            if event.key== pygame.K_RIGHT:
                pusheen.moving_right=False
            elif(event.key == pygame.K_LEFT):
                pusheen.moving_left=False
            elif(event.key == pygame.K_UP):
                pusheen.moving_up=False
            elif(event.key == pygame.K_DOWN):
                pusheen.moving_down=False

def act_screen(ai_settings, screen, pusheen):
    screen.fill(ai_settings.bg_color)
    pusheen.blitme()
    pygame.display.flip()

class Settings():
    def __init__(self):
        self.screen_width=720
        self.screen_height=480
        self.bg_color=(230, 255, 200)
        
import frame
#import generador_de_arboles
if __name__ == '__main__':
    #main()
    frame.pantalla_de_juego()
    #generador_de_arboles.crear_arbol()
