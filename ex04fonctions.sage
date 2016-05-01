def expon(x,n):
    """Algorithme naif iteratif pour calculer x^n"""
    r = x
    for i in range(1,n):
        r = r*x
    return r

def expon_rec(x,n):
    """Algorithme naif recursif pour calculer x^n"""
    if n == 0:
        return 1
    else:
        return x * expon_rec(x, n-1)

def expon_dich(x, n):
    """Algorithme dichotomique iteratif pour calculer x^n"""
    r = 1
    if n == 0: 
        return 1
    while n > 0:
        if mod(n,2) == 0:
            x = x*x
            n = n/2
        else:
            r = r*x
            x = x*x
            n = (n-1)/2   
    return r

def expon_dich_rec(x, n, y):
    """Algorithme dichotomique recursif pour calculer x^n. Il faut lancer avec y = 1"""
    if n == 0:
        return y
    elif mod(n,2) == 0:
        return expon_dich_rec(x*x, n/2, y)
    else: 
        return expon_dich_rec(x*x, (n-1)/2, y*x)

def expon_mod(x, n, N):
    """Calcule x^n [N]"""
    #Verifier N!=0
    r = 1
    if(n==0) : return 1
    while n > 0:
        if mod(n,2) == 0:
            x = mod(x, N) * mod(x, N)
            n = n/2
        else:
            r = mod(r, N) * mod(x, N)
            x = mod(x, N) * mod(x, N)
            n = (n-1)/2   
    return r

def fibo_mat(n):
    """Calcule F(n) par la methode d'exponentiation matricielle"""
    A = matrix([[1,1],[1,0]])
    return (A**n)[0][1]    



