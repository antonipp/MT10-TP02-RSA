def nombre_fermat(n):
    """Retourne le nieme nombre de Fermat"""
    return 2**2**n + 1

def nombre_mersenne(p):
    """Retourne le nieme nombre de Mersenne"""
    return 2**p - 1

def u(n):
    """Retourne les n premiers termes de la suite u_n = pi(n)ln(n)/n""" 
    for i in range(n): 
        print(numerical_approx(prime_pi(i+1)*log(i+1,e)/(i+1)))
