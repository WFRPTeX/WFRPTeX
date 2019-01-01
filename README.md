# WFRPTeX

## Description

This repository provides two new LaTeX classes for creating WFRP-style documents,
along with a package giving some useful environments.

## Copyright and license

Copyright (c) 2018--2019 Ian Knight.

## Installation

Both class files and the package file should be placed somewhere in your TeX root. For me,
that's in ``/home/wfrptex/texmf/tex/latex``. You can either clone the reposository into
that directory, or download the files directly and copy them there.

## Usage

The two classes provided by this repository are ``wfrp-long`` and ``wfrp-short``.
The first is meant to resemble something more like the Core Rulebook; the second is
more suitable for documents like standalone adventures. Neither class currently
accepts any options. These classes automatically include the ``wfrp`` package, so
there's no need to include it separately---it's provided for anyone wanting to make
documents with different styles.

The following different callouts are provided by the ``wfrp`` package, which are
automatically available in both of the two document classes.

### Player callouts

Often, it is useful to mark a paragraph as intended for reading out to the players
(e.g., descriptions of important NPCs). To make these, simply use the ``callout``
environment. By default, the callout will be shaded light grey, and the text will be
made italic.

    \begin{callout}
    This paragraph is meant to be read out to players, as description.
    \end{callout}

### Notes for the GM

In places, it may be helpful to add extra notes for the GM describing optional
changes they might like to make to an adventure, such as contingencies for if players
make ridiculous choices and kill the antagonist before the adventure's even begun.
To mark these out, use the ``gmnote`` environment. This environment is a float, and
takes one argument, which is the title of the note.

    \begin{gmnote}{Sample note}
    In case the players have already killed Graf Sebastian, go straight to the
    conclusion of the adventure.
    \end{gmnote}

### Stat blocks

The key feature of WFRPTeX is its ``statblock`` command, which allows for the
automatic layout of stat blocks for NPCs. Its general usage is shown below, and
then explained in detail:

    \statblock[pos]{Character name}
        {Characteristics}
        {Abilities}
        {Skills}
        {Talents}
        {Spells}
        {Blessings & miracles}
        {Trappings}

Note that the indentation here is arbitrary, and just makes the example easier to read.
The different sections are interpreted as follows:

* ``pos`` is a positioning modifier, using the same syntax as other float
  environments; it may be omitted, in which case the default is ``ht``
* ``Character name`` is self-explanatory
* ``Characteristics`` is a series of 12 numbers, separated by & characters,
  that will form the character's profile
* ``Abilities`` lists the character's abilities (i.e., the rules found in the
  Bestiary in the BRB)
* ``Skills`` lists the character's skills; it is recommended that you use a
  non-breaking space (i.e., ``~``) between the last word of the skill name and
  the skill value (e.g., ``Lore (Local)~+5``)
* ``Talents`` lists the character's talents
* ``Spells`` lists any spells the character knows
* ``Blessings & miracles`` lists any blessings or miracles the character is
  able to perform
* ``Trappings`` lists what equipment the character is carrying

Any of these arguments may be left blank with the exception of the Characteristics.
You still need to provide an empty pair of curly braces, but if you don't enter
any text, the typesetter won't provide that row in the final stat block. For
example, here's the stat block for an important NPC with no spells or miracles:

    \statblock{Lukas Volf, Inquisitor}
        {4 & 36 & 40 & 32 & 47 & 29 & 34 & 37 & 30 & 44 & 42 & 15}
        {}
        {Charm~+5, Consume Alcohol~+10, Cool~+10, Gossip~+10, Heal~+5,
            Intimidate~+10, Intuition~+10, Leadership~+5, Lore (Chaos)~+10,
            Lore (Torture)~+5, Lore (Witches)~+10, Melee (Brawling)~+5,
            Perception~+5, Ranged (Crossbow)~+10, Ride (Horse)~+10}
        {Menacing, Read/Write, Seasoned Traveller}
        {}
        {}
        {Crossbow pistol (24 bolts), Daggers (4), Leaden charm, Riding horse,
            Saddle \& tack, Silvered sword, Torture instruments}