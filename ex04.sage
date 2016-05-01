load("ex04fonctions.sage")

#Test des fonctions
x = int(raw_input("Entrez x: "))
n = int(raw_input("Entrez n: "))
print "Sage: {4} \nexpon: {0} \nexpon_rec: {1} \nexpon_dich: {2} \nexpon_dich_rec: {3}\n".format(expon(x,n), expon_rec(x,n), expon_dich(x,n), expon_dich_rec(x,n,1), x**n)

N = int(raw_input("Entrez N: "))
print "Sage: {0} \nexpon_mod: {1}\n".format(power_mod(x,n,N), expon_mod(x,n,N))

f = int(raw_input("Entrez le nombre de Fibonacci a calculer: "))
print "Sage: {0} \nfibo_mat: {1}".format(fibonacci(f), fibo_mat(f))