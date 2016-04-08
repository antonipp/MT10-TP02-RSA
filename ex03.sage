load("ex03fonctions.sage")

#Test de la conjecture de Fermat
n = 1
F = nombre_fermat(n)
while is_prime(F):
    n += 1
    F = nombre_fermat(n)

print "Le nombre de Fermat F{0} = {1} n'est pas premier".format(n,F)

#Test des nombres de Mersenne
p = prime_range(257)
print "Il y a {} nombres premiers inferieurs a 257".format(len(p))
m = map(nombre_mersenne,p) #Liste des nombres de Mersenne
m_premiers = map(is_prime,m) #On teste chaque nombre de la liste

for i,j in zip(m_premiers,p): #Affichage
	if i:
		print "Le nombre de Mersenne M{0} est premier".format(j)

print 'Les facteurs premiers de M41 sont: {}'.format(str(prime_factors(nombre_mersenne(41))).strip('[]'))
print 'Les facteurs premiers de M47 sont: {}'.format(str(prime_factors(nombre_mersenne(47))).strip('[]'))