import UIKit

// Un pirata de la tripulación se da cuenta de que no necesita tanto oro porque no tiene tiempo a gastarlo. Por lo que lo que decide hacer es repartir parte de su oro en varios cofres a partes iguales y esconde cada cofre en un lugar diferente del mundo. Inspirado por el capitán, el pirata decide almacenar cada mapa de cada cofre en una botella diferente, y cada llave de cada cofre también en otra botellas. De esta forma, cada persona que encuentre una botella con un mapa tendrá que encontrar la llave del cofre que almacena ese mapa. Pero este pirata decide poner el reto todavía más complicado, para que sus cofres guarden su leyenda años y años. Decide que cada cofre la escribirá en los mensajes de las botellas como un número decimal, pero en el primer cofre el número se debe introducir en notación binaria, en el segundo cofre el número debe introducirse en notación octal y en el tercer cofre en hexadecimal.

// Aleatoriamente, decide tres números: 691, 354, 33b. El programa le da como resultado las claves 1010110011, 531, 2087. ¿Cuál es el programa en swift que contiene la máquina?

let n1 = 691
let n2 = 345
let n3 = 827

let p1 = String(n1, radix: 2)
let p2 = String(n2, radix: 8)
let p3 = String(n3, radix: 16)

print("Claves de los cofres:\n")
print("Cofre 1: \(p1)\n")
print("Cofre 2: \(p2)\n")
print("Cofre 3: \(p3)\n")


