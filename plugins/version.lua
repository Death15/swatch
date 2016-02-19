do

function run(msg, matches)
  return 'SuperSwatch version 3.0  [[ 
  For More Info : @ArashSwatch
  Creator : @ArashSwatch
  Our Channel : @SWATCHTEAM
  -----------------------------
  Our Support : @SwatchSupport
  GNU GPL v3 license.]]
end

return {
  description = "Shows bot version", 
  usage = "/version: Shows bot version",
  patterns = {
    "^[!/](version)$"
  }, 
  run = run 
}

end
