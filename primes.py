"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Class to determinate if a number is prime
    """
    def is_prime(self, num):
        """
        num : Number to evaluated
        Function that calculate if a number is prime.
        Return a boolean True if the number is prime.
        """
        cont = 0
        for ind in range(1, num + 1):
            if num % ind == 0:
                cont = cont + 1
        if cont == 2:
            return True
        return False
