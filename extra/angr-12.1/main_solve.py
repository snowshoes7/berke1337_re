import angr

# Load program into angr
proj = angr.Project('./a.out')

# Get the state at which we start the program
entry = proj.factory.entry_state()

# Get angr's simulation manager
sim = proj.factory.simgr(entry)

# Symbolically execute and try to get it to go to 0x4011f3
sim.explore(find = 0x4011f3)

if sim.found:
    # Dump the program inputs that cause it to go to 0x4011f3
    print(sim.found[0].posix.dumps(0))
