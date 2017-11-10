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
                pusheen.rect.centerx += 10
            elif(event.key == pygame.K_LEFT):
                pusheen.rect.centerx-=10