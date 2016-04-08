def temps_execution(k):
    """Retourne le temps necessaire pour evaluer un nombre de forme 10^10^k"""
    t1 = walltime()
    10**10**k
    t = walltime(t1)
    print 'Le temps de calcul de 10^10^{0} est de : {1:.2f}s'.format(k,t)



def nb_chiffres(n):
    """Retourne le nombre de chiffres de n! en utilisant la formule de Stirling"""
    d = (n*log(n,e) - n + (1/2)*log(n,e) + log(sqrt(2*pi),e) + 1/(12*n))/log(10) + 1 
    return floor(numerical_approx(d))


