load("ex01fonctions.sage")

#test des temps d'execution
temps_execution(8)
temps_execution(9)

#nombre de chiffres
print 'Le nombre de chiffres de 12^34 est : {}'.format(len(str(12**34)))
print 'Le nombre de chiffres de 100! est : {}'.format(len(str(factorial(100))))
print 'Le nombre de chiffres de 100!! est : {}'.format(nb_chiffres(factorial(100)))

