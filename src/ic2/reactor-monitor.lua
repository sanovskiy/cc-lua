os.loadAPI("/lib/ic2batbox")
os.loadAPI("/lib/ic2reactors")

print("Energy units: "..ic2batbox.getUnitsCount())
print("Stored energy: "..ic2batbox.getTotalEnergy())
print("Total capacity: "..ic2batbox.getTotalCapacity())

print("Reactor units"..ic2reactors.getUnitsCount())
