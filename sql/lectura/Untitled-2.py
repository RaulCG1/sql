def recursividad(val):
    if val <=0:
        print(val)
        return 0
    else:
        print(val)
        recursividad(val-1)

recursividad(100)