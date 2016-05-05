load("ex05fonctions.sage")

msg = "Que j'aime à faire connaître un nombre utile aux sages ..."
print "Message original: " + msg
N = int(raw_input("Entrez N: "))
lst = numerise(msg, N)
print "Apres numerise(msg, {}): ".format(N) + str(lst) + "\n\n"
msg_d = alphabetise(lst, N)
print "Apres alphabetise(msg, {}): ".format(N) + str(msg_d)