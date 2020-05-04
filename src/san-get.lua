args = {...}
command = args[1]
args[2] = args[2] or "san-get"

if not(fs.exists("/etc")) then
  fs.makeDir("/etc")
end
if not(fs.exists("/lib")) then
  fs.makeDir("/lib")
end

local InitAnnounced = false
if not(fs.exists("san-gh")) then
  if (!InitAnnounced) then
    print("Initial install...")
  end
  print("  Installing san-gh")
  shell.run("pastebin","get uZpSxgqR san-gh")
end

if not(fs.exists("json")) then
  if (!InitAnnounced) then
    print("Initial install...")
  end
  print("  Installing JSON API")
  shell.run("pastebin","get 4nRg9CHU /lib/json")
end


function updateRepo()
	print("Updating repo info")
	shell.run("san-gh","get repo.json /etc/repo.json")
end

if not(fs.exists("etc/repo.json")) then
	updateRepo()
end

