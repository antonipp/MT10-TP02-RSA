def numerise(msg, N):
    """Renvoie une liste d'entiers entre 0 et N-1 qui representent le message msg en utilisant le codage binaire""" 
    msg = BinaryStrings().encoding(msg) #encodage en binaire
    p_len = ceil(log(N,2)) #longueur d'un paquet
    return [int(str(msg[i:i+p_len]),2) for i in range(0, len(msg), p_len)] #division en paquets, conversion en decimal

def alphabetise(lst, N):
    """Renvoie le message original apres decodage a partir de la liste des entiers lst et N"""
    msg_bin = ''
    p_len = ceil(log(N,2)) #longueur d'un paquet
    msg_bin = msg_bin.join([bin(i)[2:].zfill(p_len) for i in lst[:-1]]) #conversion en binaire, creation du message
    msg_bin += bin(lst[-1])[2:] #ajout du dernier element qui n'a pas besoin de zeros supplementaires
    S = BinaryStrings()
    return S(msg_bin).decoding() #decodage

def cleRSA(m):
    """Renvoie les parametres (N, e, d) avec nombre_de_chiffres(N) > m"""
    #Generer p et q!!
    p = 2**31 - 1
    q = 2**61 - 1
    N = p * q
    phi = (p-1) * (q-1)

    e = ZZ.random_element(phi)
    while gcd(e, phi) != 1:
        e = ZZ.random_element(phi)
    
    bezout = xgcd(e, phi)
    d = Integer(mod(bezout[1], phi))
    return (N, e, d) 

def chiffrer(lst, e , N):
    """Chiffre la liste lst"""
    return [power_mod(m, e, N) for m in lst]

def dechiffrer(lst, d, N):
    """Dechiffre la liste lst"""
    return [power_mod(m, d, N) for m in lst]