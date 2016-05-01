def nombre_fermat(n):
    """Retourne le nieme nombre de Fermat"""
    return 2**2**n + 1

def nombre_mersenne(p):
    """Retourne le nieme nombre de Mersenne"""
    return 2**p - 1

def u(n):  
    """Suite u_n = pi(n)ln(n)/n"""
    return numerical_approx(prime_pi(n)*log(n,e)/n)

def v(n):
    """Suite v_n = n/ln(n)"""
    return numerical_approx(n/log(n,e))