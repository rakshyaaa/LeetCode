class Solution(object):
    def dailyTemperatures(self, temperatures):
        """
        :type temperatures: List[int]
        :rtype: List[int]
        """
        """
        temperatures = [73,74,75,71,69,72,76,73]

        answer = [1,1,4,2,1,1,0,0] such that answer[i]  number of days you have to wait after the ith day to get warmer temp

        [73,74,75,71,69,72,76,73]
         1  1   4  2  1 1   0  0

        how do we solve this problem??

        -- I Have to start looking at future values and how far they are??

        --- can we use stack?
        for i in temp:
            for i+1 to temp:
                O(n*n) , O(n)

        Monotonic Stack: Monotonic decreasing order, the stack is in decreasing order, not strictly 

        """
        output = [0] * len(temperatures) 

        tempStack = []  # add two values to this stack temp and its index as [temp, index]

        for index, temp in enumerate(temperatures):  #enumerate to get the index and values at the same time

            while tempStack and temp > tempStack[-1][0]:
                tempStackT, tempStackInd = tempStack.pop()
                output[tempStackInd] = index - tempStackInd
        
            tempStack.append([temp, index])
            
        return output




