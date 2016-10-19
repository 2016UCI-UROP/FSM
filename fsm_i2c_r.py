class Manager:
    s_modName = ""
    dic_inputVal = {}
    li_states = []
    li_trans = []

class State:
    s_name = ""

class Transition:
    src = 0
    dest = 0
    li_cond = []


if __name__ == "__main__":
    rf = open("dontcare.vcd", "r")
    wf = open("output.v", "w")
    fsm = Manager()

    lines = rf.readlines()
    lines = lines[10:]
    fsm.setFSM(lines)
    print("FSM created\n")
