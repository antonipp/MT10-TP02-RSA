load("ex01fonctions.sage")

#test des temps d'execution
#temps_execution(8)
#temps_execution(9)

#nombre de chiffres
print 'Le nombre de chiffres de 12^34 est : {}'.format(len(str(12**34)))
print 'Le nombre de chiffres de (12^34)^3 est : {}'.format(len(str((12**34)**3)))
print 'Le nombre de chiffres de 12^34^3 est : {}'.format(len(str(12**34**3)))
print 'Le nombre de chiffres de 100! est : {}'.format(len(str(factorial(100))))
print 'Le nombre de chiffres de 1000! est : {}'.format(len(str(factorial(1000))))
print 'Le nombre de chiffres de 10000! est : {}'.format(len(str(factorial(10000))))
print 'Le nombre de chiffres de 100000! est : {}'.format(len(str(factorial(100000))))
print 'Le nombre de chiffres de 6!! est : {}'.format(len(str(factorial(factorial(6)))))
print 'Le nombre de chiffres de 7!! est : {}'.format(len(str(factorial(factorial(7)))))
print 'Le nombre de chiffres de 10!! est : {}'.format(len(str(factorial(factorial(10)))))

print 'Le nombre de chiffres de 100!! est : {}'.format(nb_chiffres(factorial(100)))

