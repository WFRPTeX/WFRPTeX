# WFRPTeX

## Description

This package provides a new LaTeX class useful for creating fan-made WFRP content.
It provides some useful environments and commands for formatting stat blocks,
and sets fonts, page margins, etc. for easy reading.

## Copyright and license

Copyright (c) 2018 Ian Knight.

## Installation

Either clone this repository, or copy the ``.cls`` file, into your TeX root. On my
machine, that's ``/home/me/texmf/tex/latex``.

## Usage

To make use of the class, use ``\documentclass{wfrp}`` at the top of your main
file. Currently, the ``wfrp`` class has no options. The key feature of the class
is a series of ``\statblock`` commands that take varying numbers of arguments. These are
detailed below.

 * ``\statblock``

   This command creates a simple stat block similar to those presented in the Bestiary.
   It takes three arguments: the name of the creature/NPC in the stat block, its
   stats including Movement and Wounds, formatted like a tabular row, and a list of
   creature abilities. Example:

       \statblock{Street Thug}
           {4 & 30 & 30 & 30 & 30 & 30 & 30 & 30 & 30 & 30 & 30 & 12}
           {Armour +1, Weapon +7}
