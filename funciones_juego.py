# -*- coding: utf-8 -*-
"""
Created on Thu Nov  9 22:44:18 2017

@author: DRMD
"""
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