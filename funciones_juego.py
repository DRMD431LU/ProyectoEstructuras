# -*- coding: utf-8 -*-
"""
Created on Thu Nov  9 22:44:18 2017

@author: DRMD
"""
import pygame
from sys import exit

def check_eventos():
    for event in pygame.event.get():
           if event.type == pygame.QUIT:
               exit()