while True:
    a = input("Please input a value: ")
    try:
        num = int(a)
        if num < 0:  
            print("Please input a positive value!")
            continue
        for i in range(1,num+1,1):
            matrix = [i]
            for j in range(2,num+1,1):
                matrix.append(i*j)
            #Just for printing
            for k in range(0,num):
                print(matrix[k], end='\t')
            print("\n")
        Decision = input("Do you want to repeat? ")
        if Decision == 'Y':
            continue
        else:
            break
    except ValueError:
        print("That is not an integer")
