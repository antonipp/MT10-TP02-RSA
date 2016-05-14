load("ex04fonctions.sage")

#Test des fonctions
x = int(raw_input("Entrez x: "))
n = int(raw_input("Entrez n: "))
'''
t1 = walltime()
r1 = x**n
t = walltime(t1)
print 'Temps pris par Sage: {0:.6f}s'.format(t)

t2 = walltime()
r2 = expon(x, n)
t = walltime(t2)
print 'Temps pris par expon: {0:.6f}s'.format(t)

t3 = walltime()
r3 = expon_rec(x, n)
t = walltime(t3)
print 'Temps pris par expon_rec: {0:.6f}s'.format(t)

t4 = walltime()
r4 = expon_dich(x, n)
t = walltime(t4)
print 'Temps pris par expon_dich: {0:.6f}s'.format(t)

t5 = walltime()
r5 = expon_dich_rec(x, n, 1)
t = walltime(t5)
print 'Temps pris par expon_dich_rec: {0:.6f}s'.format(t)
'''
#print "Sage: {4} \nexpon: {0} \nexpon_rec: {1} \nexpon_dich: {2} \nexpon_dich_rec: {3}\n".format(r2, r3, r4, r5, r1) #pour comparer les resultats visuellement

N = int(raw_input("Entrez N: "))

t6 = walltime()
r6 = power_mod(x, n, N)
t = walltime(t6)
print 'Temps pris par Sage: {0:.6f}s'.format(t)

t7 = walltime()
r7 = expon_mod(x, n, N)
t = walltime(t7)
print 'Temps pris par expon_mod: {0:.6f}s'.format(t)

#print "Sage: {0} \nexpon_mod: {1}\n".format(power_mod(x,n,N), expon_mod(x,n,N))

f = int(raw_input("Entrez le nombre de Fibonacci a calculer: "))
print "Sage: {0} \nfibo_mat: {1}".format(fibonacci(f), fibo_mat(f))
