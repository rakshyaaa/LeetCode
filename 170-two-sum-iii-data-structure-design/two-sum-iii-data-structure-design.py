class TwoSum(object):

    def __init__(self):
        self.numbers = []

    def add(self, number):
        """
        :type number: int
        :rtype: None
        """
        self.numbers.append(number)

    def find(self, value):
        """
        :type value: int
        :rtype: bool
        """

        seen = set()

        for number in self.numbers:
            difference = value - number

            if difference in seen:
                return True
            else:
                seen.add(number)

        return False

        


# Your TwoSum object will be instantiated and called as such:
# obj = TwoSum()
# obj.add(number)
# param_2 = obj.find(value)