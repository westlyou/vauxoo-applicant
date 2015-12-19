"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Class to calculate the sum to elements of a list
    """

    def sum(self, num_list):
        """
        num_list : List of number
        Return the sum of the elements in the list
        """
        if not isinstance(num_list, list):
            num_list = [num_list]
        sum_calc = 0
        for count in num_list:
            sum_calc = sum_calc + count
        return sum_calc
