# dnd-music-player
Player for ambient music for D&amp;D sessions.

# Setup
To setup after the first commit, create the following folders in the music directory:
- ambient
- battle
- creepy
- tavern
- temple
- town

This will enable the player to automatically take any music files from these folders (only place valid music files like mp3 in these folders).

When a selection of music files is saved into the subfolders, run one of the scripts to create a list of music files (<i>music/get_music_list.bat</i> on Windows or <i>music/get_music_list.sh</i> on Linux).

After this, open <i>dnd_player.html</i> in a web browser (preferably firefox).