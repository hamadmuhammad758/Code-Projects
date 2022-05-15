import numpy as np
from numpy.linalg import inv
def extended_gcd(aa, bb):
    lastremainder, remainder = abs(aa), abs(bb)
    x, lastx, y, lasty = 0, 1, 1, 0
    while remainder:
        lastremainder, (quotient, remainder) = remainder, divmod(lastremainder, remainder)
        x, lastx = lastx - quotient*x, x
        y, lasty = lasty - quotient*y, y
    return lastremainder, lastx * (-1 if aa < 0 else 1), lasty * (-1 if bb < 0 else 1)

def modinv(a, m):
	g, x, y = extended_gcd(a, m)
	if g != 1:
		raise ValueError
	return x % m
    

print("Enter 2x2 key matrix")
key=input()
key=np.array(key)
#print(type(key))
print("Enter text to encrypt/decrypt")
text=input()
print("Input 1 to ecrypt and any other number to decrypt")
x=input()

print("Your Key")
print(key)
print("Your text")
print(text)

length=len(text)
cipher=""
if(x==1):
    for i in range(length/2):
        textblocksMatrix=[[ord(text[i*2])-97],[ord(text[i*2+1])-97]]
        textblocksMatrix=np.array(textblocksMatrix);
        print("Multiplying this block of text with key")
        print(textblocksMatrix)
        result=np.matmul(key,textblocksMatrix)
        print("Result After multiplying above block of text with key");
        print(result)
        print("Result converted to alphabet");
        print(chr((result[0]%26)+97))
        print(chr((result[1]%26+97)))
        cipher=cipher+chr((result[0]%26)+97)+chr((result[1]%26)+97)
    print("Cipher text")
    print(cipher)
else:
    print("Decrypting\n")
    print("For decryption multiply inverse of key with blocks of cipher text\n")
    print("To get key inverse multiply inverse of determinant of key with adjoint of key: So let's find out\n")
    detKey=np.linalg.det(key)
    print("Determinant of key")
    print(detKey)  
    print("Determinant of key modulus 26")
    aa=detKey%26
    print(aa)
    #neechay valee line mein modinv ka pehla argument ye uper vala variable aa
    #rakhna hay magar ye function value error keh deta hy ye 7.0 ko khatam kar k
    #aa set kara dey
    aa = round(aa, 2)
    modularInverse=modinv(aa, 26)
    
    print("Inverse of determinant")
    print("modularInverse")
    adjoint=[[key[1][1],-key[0][1]],[-key[1][0],key[0][0]]]
    print("adjoint of key")
    print(adjoint)
    print("INVERSE OF KEY\n")
    InverseOfKey=modularInverse*np.array(adjoint)
    for i in range(2):
        for j in range(2):
           InverseOfKey[i][j]=InverseOfKey[i][j]%26
    print(InverseOfKey)

    for i in range(length/2):
        textblocksMatrix=[[ord(text[i*2])-97],[ord(text[i*2+1])-97]]
        textblocksMatrix=np.array(textblocksMatrix);
        result=np.matmul(InverseOfKey,textblocksMatrix)
        cipher=cipher+chr((result[0]%26)+97)+chr((result[1]%26)+97)
    print("Original text")
    print(cipher)


#[[5, 17],[ 4, 15]]
#"thegoldisburiedinorono"
#"gzscxnvcdjzxeovcrclsrc"

#[[7, 8],[ 11, 11]]
#"shortexample"
#apadjtftwlfj
