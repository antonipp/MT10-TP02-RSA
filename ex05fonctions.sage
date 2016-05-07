import random

def numerise(msg, N):
    """Renvoie une liste d'entiers entre 0 et N-1 qui representent le message msg en utilisant le codage binaire, ainsi que L, la longueur du message""" 
    msg = BinaryStrings().encoding(msg) #encodage en binaire
    p_len = ceil(log(N,2))-1 #longueur d'un paquet
    L = len(msg) #longueur du message binaire
    return [Integer(str(msg[i:i+p_len]), 2) for i in range(0, len(msg), p_len)], L #division en paquets, conversion en decimal

def alphabetise(lst, N, L):
    """Renvoie le message original apres decodage a partir de la liste des entiers lst, N et la longueur du message L"""
    p_len = ceil(log(N,2))-1 #longueur d'un paquet
    msg_bin = ''.join([bin(i)[2:].zfill(p_len) for i in lst[:-1]]) #conversion en binaire, creation du message
    msg_bin += bin(lst[-1])[2:].zfill(mod(L, p_len)) #ajout du dernier element prefixé de (L mod p_len) zeros
    S = BinaryStrings()
    return S(msg_bin).decoding() #decodage

def cleRSA(m):
    """Renvoie les parametres (N, e, d) avec nombre_de_chiffres(N) > m"""
    
    p = random.randrange(10**floor((m/2 + 1)), 10**floor((m/2 + m/4)))
    q = random.randrange(10**floor((m/2 + 1)), 10**floor((m/2 + m/4)))
        
    while(is_prime(p) == False): p += 1  
    while(is_prime(q) == False): q += 1 
    
    N = p * q
    
    phi = (p-1) * (q-1)

    e = ZZ.random_element(phi)
    while gcd(e, phi) != 1:
        e = ZZ.random_element(phi)
    
    bezout = xgcd(e, phi)
    d = Integer(mod(bezout[1], phi))
    return N, e, d

def chiffrer(lst, e , N):
    """Chiffre la liste lst"""
    return [power_mod(m, e, N) for m in lst]

def dechiffrer(lst, d, N):
    """Dechiffre la liste lst"""
    return [power_mod(m, d, N) for m in lst]

def protocole1_sig(m1, s1, Na, da, Nb, eb):
    """Realise le chiffrement du message m1 et la signature s1 suivant le protocole 1"""
    m1c, L1 = numerise(m1, Na)
    s1c, L2 = numerise(s1, Na)
    m2c = chiffrer(m1c, eb, Nb)
    s2c = chiffrer(s1c, da, Na)
    return m2c, s2c, L1, L2

def protocole1_lec(m2c, s2c, Nb, db, Na, ea, L1, L2):
    """Realise le dechiffrement du message m2c et la signature s2c suivant le protocole 1"""
    print "Lecture..."
    m2 = dechiffrer(m2c, db, Nb)
    s2 = dechiffrer(s2c, ea, Na)
    print "Message: " + alphabetise(m2, Na, L1)
    print "Signature: " + alphabetise(s2, Na, L2) + "\n"

def protocole2_sig(m1, Na, da, Nb, eb):
    """Realise le chiffrement du messsage m1 suivant le protocole 2"""
    m1c, L = numerise(m1, Na)
    if Na > Nb:
        m2c = chiffrer(m1c, eb, Nb)
        m3c = chiffrer(m2c, da, Na)
    else:
        m2c = chiffrer(m1c, da, Na)
        m3c = chiffrer(m2c, eb, Nb)
    return m3c, L

def protocole2_lec(m3c, Nb, db, Na, ea, L):
    """Realise le dechiffrement du message m3c suivant le protocle 2""" 
    print "Lecture..."
    if Na > Nb:
        m2c = dechiffrer(m3c, ea, Na)
        m1c = dechiffrer(m2c, db, Nb)
    else:
        m2c = dechiffrer(m3c, db, Nb)
        m1c = dechiffrer(m2c, ea, Na)
    print "Message: " + alphabetise(m1c, Na, L) + "\n"


def crackRSA(N, e):
    """Trouve la clé privée à partir de la clé publique (~3min pour ~75 chiffres)"""
    t1 = walltime() 
    
    p, q = factor(N)
    p = p[0]
    q = q[0]
    
    phi = (p-1) * (q-1)

    bezout = xgcd(e, phi)
    d = Integer(mod(bezout[1], phi))

    t = walltime(t1)
    print 'La clé de {0} chiffres était cassée en {1:.2f}s'.format(len(str(N)), t)
    return d
