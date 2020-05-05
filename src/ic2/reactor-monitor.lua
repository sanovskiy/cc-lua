os.loadAPI("/lib/ic2batbox")
os.loadAPI("/lib/ic2reactors")

print("Energy storage devices: "..ic2batbox.getDevicesCount())
print("Stored energy: "..ic2batbox.getTotalStoredEnergy())
print("Total capacity: "..ic2batbox.getTotalCapacity())

print("Reactor units"..ic2reactors.getDevicesCount())
