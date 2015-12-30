do

function run(msg, matches)
  local url = matches[1]
  local receiver = get_receiver(msg)
  send_photo_from_url(receiver, url)
end

return {
  description = "When user sends image URL (ends with png, jpg, jpeg) download and send it to origin.", 
  usage = "وقتی شخصی لینکی را میدهد که دارای عمس است ربات آنرا دانلود و در گروه پس میدهد . از فرمت های (ends with png, jpg, jpeg) پشتیبانی میکند ",
  patterns = {
    "(https?://[%w-_%.%?%.:/%+=&]+%.png)$",
    "(https?://[%w-_%.%?%.:/%+=&]+%.jpg)$",
    "(https?://[%w-_%.%?%.:/%+=&]+%.jpeg)$",
  }, 
  run = run 
}

end
