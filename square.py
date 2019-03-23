import sys

def draw():
    sys.stdout.write('.')

def space():
    sys.stdout.write(' ')

def newln():
    print('')
    
def Valuecheck_Newline():
    if x == 11:
        newln()
    else:
        Valuecheck_expr1()

def Valuecheck_expr1():
    if y == 10:
        draw()
    else:
        Valuecheck_expr2()

def Valuecheck_expr2():
    if x == 10:
        draw()
    else:
        Valuecheck_expr3()

def Valuecheck_expr3():
    if y == 0:
        draw()
    else:
        Valuecheck_expr4()

def Valuecheck_expr4():
    if x == 0:
        draw()
    else:
        space()
    




global y




def main():
    global x
    for x in range(0, 12):
#        print(f"x={x}")
        Valuecheck_Newline()


for y in range(0, 11):
#    print(f"y={y}")
    main()


        


