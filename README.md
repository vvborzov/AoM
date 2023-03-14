# AoM
Utilities for Age of Magic officer jobs

How to use:

To get hero powers:

1. Store the screenshots of main player screen and his/her heroes in some folder. You can find the examples of images in "examples" folder.
  a) your screenshots should be in alphabetical order of file names (player1 main screen - player 1 hero screens - player 2 main screen - player 2 her screens - ... - player N main screen - player N hero screens)
  b) script uses file size to distinguish screenshots of main screen from hero screens. I used 4.5 mb threshold (my iphone 12 screenshots) for this. Screenshots made on other devices may require different criterion for this task (search for "change the criterion" in file to find where to fix). 
3. Set DIR_PATH variable in Recognise_hero_power.ipynb notebook to this folder
4. Run cells up to "Raid results" markdown cell
5. You may find parsed results in player_hero.xlsx

After the aforementioned steps I typically loaded the results to sql database, enriched data with estimation of each hero power ("update power.sql") and used another script to get power of the required squads of each player.
