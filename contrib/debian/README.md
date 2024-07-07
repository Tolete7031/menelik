
Debian
====================
This directory contains files used to package menelikd/menelik-qt
for Debian-based Linux systems. If you compile menelikd/menelik-qt yourself, there are some useful files here.

## menelik: URI support ##


menelik-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install menelik-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your menelik-qt binary to `/usr/bin`
and the `../../share/pixmaps/menelik128.png` to `/usr/share/pixmaps`

menelik-qt.protocol (KDE)

