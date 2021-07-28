# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# Implement the MinStack class:

# MinStack() initializes the stack object.
# void push(val) pushes the element val onto the stack.
# void pop() removes the element on the top of the stack.
# int top() gets the top element of the stack.
# int getMin() retrieves the minimum element in the stack.


# Example 1:

# Input
# ["MinStack","push","push","push","getMin","pop","top","getMin"]
# [[],[-2],[0],[-3],[],[],[],[]]

# Output
# [null,null,null,null,-3,null,0,-2]

# Explanation
# MinStack minStack = new MinStack();
# minStack.push(-2);
# minStack.push(0);
# minStack.push(-3);
# minStack.getMin(); // return -3
# minStack.pop();
# minStack.top();    // return 0
# minStack.getMin(); // return -2

class MinStack

 # =begin
     # initialize your data structure here.
 # =end
    def initialize()
        @stack = Array.new
    end


 # =begin
 #     :type val: Integer
 #     :rtype: Void
 # =end
    def push(val)
        @stack.push(val)
    end


 # =begin
 #     :rtype: Void
 # =end
     def pop()
         @stack.pop
     end


 # =begin
 #     :rtype: Integer
 # =end
     def top()
         @stack[-1]
     end


 # =begin
 #     :rtype: Integer
 # =end
     def get_min()
         @stack.min
     end
nd
