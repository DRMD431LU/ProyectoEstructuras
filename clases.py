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