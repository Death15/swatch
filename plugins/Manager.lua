local function run(msg, matches)
if not is_momod(msg) then
return "For Moderators Only"
end

if msg.to.type == 'channel' then
if matches[1] == 'setname' then
      local new_name = string.gsub(matches[2], '_', ' ')
      data[tostring(msg.to.id)]['settings']['set_name'] = new_name
      save_data(_config.moderation.data, data)
      local channel_name_set = data[tostring(msg.to.id)]['settings']['set_name']
      local to_rename = 'chat#id'..msg.to.id
      rename_channel(to_rename, channel_name_set, ok_cb, false)
      end
      
      if msg.to.type == 'channel' then
      if matches[1] == "setphoto" then
  local data = load_data(_config.moderation.data)
  local receiver = get_receiver(msg)
  if success then
    local file = 'data/photos/chat_photo_'..msg.to.id..'.jpg'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    channel_set_photo (receiver, file, ok_cb, false)
    data[tostring(msg.to.id)]['settings']['set_photo'] = file
    save_data(_config.moderation.data, data)
    data[tostring(msg.to.id)]['settings']['lock_photo'] = 'yes'
    save_data(_config.moderation.data, data)
    send_large_msg(receiver, 'Photo saved!', ok_cb, false)
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end

  local data = load_data(_config.moderation.data)
  local receiver = get_receiver(msg)
   local name_log = user_print_name(msg.from)
  local group = msg.to.id
  if msg.media then
    if msg.media.type == 'photo' and data[tostring(msg.to.id)]['settings']['set_photo'] == 'waiting' and is_chat_msg(msg) and is_momod(msg) then
      load_photo(msg.id, set_channel_photo, msg)
    end
    
if msg.to.type == 'channel' then
if matches[1] == "setabout" then
local Channel = msg.to.id
local about = matches[2]
channel_set_about(channel, about, ok_cb, false)
  end
end
return {
patterns = {
"^/(setname) (.*)$",
"^/(setphoto)$",
"%[(photo)%]",
"^/(setabout) (.*)$",


