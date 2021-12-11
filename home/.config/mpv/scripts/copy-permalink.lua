-- Author: Ole Jørgen Brønner (olejorgenb@yahoo.no)
-- Requirement: xclip
-- Source: https://gist.github.com/olejorgenb/a5194d9bc183dbe0bfb02aac18fe37f9#gistcomment-3150724
-- Installation:
-- 'mkdir -p ~/.config/mpv/scripts && cp -i copy-permalink.lua ~/.config/mpv/scripts'

function copyPermalink()
  local pos = mp.get_property_number("time-pos")
  local uri = mp.get_property("path")
  -- %q might not be fully robust
  local bookmark = string.format("mpv --start=%s %q", pos, uri)
  local pipe = io.popen("xclip -silent -in -selection clipboard", "w")
  pipe:write(bookmark)
  pipe:close()
  mp.osd_message("Link to position copied to clipboard")
end

function sharePermalink()
  local pos = mp.get_property_number("time-pos")
  local uri = mp.get_property("path")
  -- %q might not be fully robust
  -- local bookmark = string.format("mpv --start=%s %q", pos, uri)
  local bookmark = string.format("%s&t=%i", uri, pos)
  local pipe = io.popen("xclip -silent -in -selection clipboard", "w")
  pipe:write(bookmark)
  pipe:close()
  mp.osd_message("Shareable link with position copied to clipboard")
end

-- mp.register_script_message("copy-permalink", copyPermalink)
mp.add_key_binding("ctrl+SPACE", "copy-permalink", copyPermalink)
mp.add_key_binding("shift+SPACE", "share-permalink", sharePermalink)
