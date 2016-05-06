load("ex05fonctions.sage")

#test du protocole 1
Na, ea, da = cleRSA(30) #Alice
Nb, eb, db = cleRSA(30) #Bob

m1 = raw_input("Entrez le message d'Alice: ")
s1 = raw_input("Entrez la signature d'Alice: ")

m2c, s2c, L1, L2 = protocole1_sig(m1, s1, Na, da, Nb, eb)
protocole1_lec(m2c, s2c, Nb, db, Na, ea, L1, L2)


msg = raw_input("Entrez votre message: ")
N = int(raw_input("Entrez N: "))
lst, L = numerise(msg, N)
print "Apres numerise(msg, {}): ".format(N) + str(lst) + "\n"
msg_d = alphabetise(lst, N, L)
print "Apres alphabetise(lst, {}, {}): ".format(N, L) + str(msg_d)

