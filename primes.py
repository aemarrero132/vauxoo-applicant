"""
Clase PrimeClass, con metodo de verificacion de numeros primos.
Vauxoo Aplicant
"""

class PrimeClass(object):
    '''
    Clase PrimeClass
    '''
    def is_prime(self, num_int):
        """
        Método is_prime que recibe un numero entero y devuelve True (si es numero primo) o False (numero compuesto) 
        """
        # your primes code here
        veces=0
        for i in range(2, num_int):
            if num_int % i == 0
                veces=veces+1
        if veces > 1:    
            return False
        else:
            return True
