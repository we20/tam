do

function run(msg, matches)

local fuse = '#DearAdmin now i have recived new #Feedback😝 \n\nid : ' .. msg.from.id .. '\n\nName : ' .. msg.from.print_name ..'\n\nLetters :\n\n\n' .. matches[1] 
local fuses = '!printf user#id' .. msg.from.id


 local text = matches[1]

 local sends = send_msg('chat#id..82481072', fuse, ok_cb, false)

 return 'Your masage whas succesfully recived🙈!!'

 

end

end

return {
 
 description = "Feedback",

 usage = "!feedback message",
 patterns = {
 "^![Ff]eedback (.*)$"

 },
 run = run
}
