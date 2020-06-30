print("Please enter your turtles name:")
local tName=io.read()

-- Install github using Eric-wieser's bootstrap method
shell.run("pastebin run p8PJVxC4")

-- Build github command to clone Repository
cont=true
while cont do
  if shell.run("github clone ejayjock/turtle-"..tName) then
    if fs.exists("/startup.lua") then
      shell.run("rm /startup.lua")
    end
    shell.run("mv turtle-"..tName.."/startup.lua /startup.lua")
    cont=false
  else
    term.clear()
    print("Turtle name '"..tName.."' cannot be found.")
    print("Please re-enter your turtle name:")
    tName=io.read()
  end
end

-- Switch into turtle directory
shell.run("cd /turtle-"..tName)

-- Clear screen and print welcome message:
term.clear()
print("Hello, "..tName.." the turtle at your service!")
print(" ")
print("Type refresh anytime to sync me with gitHub.")
