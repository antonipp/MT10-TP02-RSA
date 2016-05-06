load("ex05fonctions.sage")

msg = raw_input("Entrez votre message: ")
N = int(raw_input("Entrez N: "))
lst, L = numerise(msg, N)
print "Apres numerise(msg, {}): ".format(N) + str(lst) + "\n"
msg_d = alphabetise(lst, N, L)
print "Apres alphabetise(lst, {}, {}): ".format(N, L) + str(msg_d)