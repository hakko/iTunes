iTunes
======

Applescripts for iTunes artist radio, genre radio, top tracks and related artists, based on your MusicCabinet database.

Setup
-----

This only works on OSX.

* Install the scripts to ~/Library/iTunes/Scripts, using the AppleScript Editor.
* Alter paths to shell scripts and make them executable.
* Configure MusicCabinet to parse your iTunes Music Library.xml and write track ids to table library.musicfile, column externalid.

(There's code in MusicCabinet that does this, but it doesn't run automatically.)
