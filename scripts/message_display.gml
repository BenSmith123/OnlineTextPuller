///message_display(string)

// create a new message and move the view down
global.message = argument0

obj = instance_create(x,y2,obj_message)
obj.text = global.message

y2 += 20
if y2 > room_height {view_yview[0] += 20}

