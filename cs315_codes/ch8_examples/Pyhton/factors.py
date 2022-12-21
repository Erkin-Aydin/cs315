def factors (maxNum):
    for n in range(2, maxNum):
        for x in range(2, n):
            if n % x == 0:
                print( n, 'equals', x, '*', n/x)
                break
        else:
            # loop fell through without finding a factor
            print(n, 'is a prime number')
            
factors(15)
            
            
