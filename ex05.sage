load("ex05fonctions.sage")

#test des fonctions numerise/alphabetise
print "Test de numerise/alphabetise: \n"
msg = raw_input("Entrez votre message: ")
N = int(raw_input("Entrez N: "))
lst, L = numerise(msg, N)
print "Apres numerise(msg, {}): ".format(N) + str(lst) + "\n"
msg_d = alphabetise(lst, N, L)
print "Apres alphabetise(lst, {}, {}): {} \n".format(N, L, msg_d)

#test du protocole 1
print "Test du protocle 1: \n"
Na, ea, da = cleRSA(50) #Alice
Nb, eb, db = cleRSA(50) #Bob

m1 = raw_input("Entrez le message d'Alice: ")
s1 = raw_input("Entrez la signature d'Alice: ")

m2c, s2c, L1, L2 = protocole1_sig(m1, s1, Na, da, Nb, eb)
protocole1_lec(m2c, s2c, Nb, db, Na, ea, L1, L2)

#test du protocole 2
print "Test du protocle 2: \n"
Na, ea, da = cleRSA(40) #Alice
Nb, eb, db = cleRSA(50) #Bob

m1 = raw_input("Entrez le message d'Alice: ")

m3c, L = protocole2_sig(m1, Na, da, Nb, eb)
protocole2_lec(m3c, Nb, db, Na, ea, L)


