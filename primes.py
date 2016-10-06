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
        Método is_prime que recibe un numero entero 
        y devuelve True o False si es numero primo o no 
        """
        veces = True
        for i in range(2, num_int):
            if num_int % i == 0:
                veces = False
                break
        return veces
