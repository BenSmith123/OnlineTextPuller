
// You can store any variables you want!

/****************************
TEMPLATE: set the ini file variables

global.ini_section = "UPDATE" // section name
global.message_id = 16543 // use to identify different messages
global.message_date = "3 May 2017" // "3/05/2017"
global.message_version = 2.1 // if message version is > current version, display this
global.message = "there is a new update!#this is my message, read this blabla"
global.message_show_once = false // write code to handle this
global.message_url = "www.blabla.com"
global.message_has_url = true // write code to get the url if it has one (make it take you to the link)
global.message_appear_offline = false // message comes up even if offline
*************************/

// Here's an example of what I stored

section = "UPDATE"

message_id = ini_read_real(section,"message_id",0)
message_date = ini_read_string(section,"message_date","")
message_version = ini_read_real(section,"message_version",0)
message = ini_read_string(section,"message","")
message_show_once = ini_read_real(section,"message_show_once",false)
message_url = ini_read_string(section,"message_url","")
message_has_url = ini_read_real(section,"message_has_url",false)
message_appear_offline = ini_read_real(section,"message_appear_offline",false)

/**** examples of how I could use the information ******

add new sprites or game content
auto-download the new version of the game
allow access to debug code or cheats
disable the game if there's a new version out

if message_version > global.game_version
{
    display_message("A new version of the game is available!")
}

if message_has_url
{
    // click here to go to message_url
}


*******************************************/
message_display("") // add a space
message_display("---- FILE CONTENT ----")
message_display("message ID: " +string(message_id))
message_display("date: " +message_date)
message_display("msg version: " +string(message_version))
message_display("msg show-once: " +string(message_show_once))
message_display("msg link: " +message_url)
message_display("msg url: " +string(message_has_url))
message_display("msg appear-offline: " +string(message_appear_offline))
message_display("message:#"+message)


// delete the file after getting the information from it
if file_exists(working_directory + "save.txt") 
{
    file_delete(working_directory + "save.txt")
}

ini_close()


