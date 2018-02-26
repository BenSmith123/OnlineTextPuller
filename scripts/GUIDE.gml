/*****************************************
REQUIRES NO SERVER, NO WEBHOST, NO WEB PROGRAMMING

How to make your apps / games show a news message, information or update etc

You can use any host or website as long as the link is a direct file link or an auto-download link
Examples: 
youtube.com/index.html
http://download1073.mediafire.com/3ibd18xnw0eg/nv9yqtzptt0qyqy/onlineTextExample.txt

Remember: The working directory is not always where a file is saved once downloaded, in windows it is often in
%LOCALAPPDATA%/YOUR_GAME_NAME/


This program:
    - hardcode a mediafire url (which can be edited) - global.updater_url 
    - specifically reads ini files but can be modified to process any file
    - can download any file type
    - the downloaded file will automatically be saved as save.txt, feel free to change this (obj_controller > event_user0)
    - the game will then display what you have put in your ini file :)
    
you can use this to post game updates, download new content, show messages etc

When using mediafire, do NOT change the file link 
(you can change or edit or replace the file but make sure you keep the origonal link)
******************************************/
