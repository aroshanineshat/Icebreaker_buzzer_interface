NoteDictionary = {'C': 'C_m', 'D':'D_m', 'E':'E_m', 'F':'F_m', 'G':'G_m', 'A':'A_m', 'B':'B_m', '%': 'S_m'}
def process():
    file_ = open("Notes.txt", "r")
    second_devision = int(file_.readline())
    line = file_.readline().split(" ")
    file_.close()

    output = open ("Notes.output", "w")

    index = 0
    for item in line:
        print (item)
        c = int(item[1])
        for i in range (0, c):
            output.write ('\'d' + str(index) + ": NS_r <= " + NoteDictionary[item[0].replace('\n','')] + "; \n" )
            index = index + 1
        if (item[0] != '%'):
            for i in range (0, second_devision - (second_devision % c)):
                output.write ('\'d' + str(index) + ": NS_r <= " + NoteDictionary['%'] + "; \n" )
                index = index + 1

    output.close()

if __name__ == "__main__":
     process()