class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        """ Comments:

            [7,1,5,3,6,4]
             s
             i

            maxprofit = 7
        """

        maxProfit = 0
        startPrice = prices[0]
        for i in range(1, len(prices)):
            if startPrice < prices [i]:
                maxProfit += prices[i] - startPrice
            
            startPrice = prices[i]
            

        return maxProfit
