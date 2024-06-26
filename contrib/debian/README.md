
Debian
====================
This directory contains files used to package jossd/joss-qt
for Debian-based Linux systems. If you compile jossd/joss-qt yourself, there are some useful files here.

## joss: URI support ##


joss-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install joss-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your joss-qt binary to `/usr/bin`
and the `../../share/pixmaps/joss128.png` to `/usr/share/pixmaps`

joss-qt.protocol (KDE)

