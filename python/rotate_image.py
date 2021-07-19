# # You are given an n x n 2D matrix representing an image,
# # rotate the image by 90 degrees (clockwise).

# # You have to rotate the image in-place,
# # which means you have to modify the input 2D matrix directly.
# # DO NOT allocate another 2D matrix and do the rotation.

# class Solution(object):
#     def rotate(self, matrix):
#         counter = 0
#         matrix_length = len(matrix[0])
#         matrix_size = matrix_length - 1
#         new_matrix = matrix
#         for side in matrix:
#             side_counter = 0
#             if len(side) > 1:
#                 for num in side:
#                     new_matrix[side_counter][counter] = matrix[matrix_size][counter]
#                     import pdb
#                     pdb.set_trace()
#             else:
#                 return matrix
#             side_counter += 1
#             matrix_size -= 1
#         return new_matrix
# # 4
# # Input: matrix = [[1,2],[3,4]]
# # Output: [[3,1],[4,2]]

# # 3
# # Input: matrix = [[1]]
# # Output: [[1]]


# method = Solution()
# # one = method.rotate([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
# # two = method.rotate([[5, 1, 9, 11], [2, 4, 8, 10], [
# #                     13, 3, 6, 7], [15, 14, 12, 16]])
# # three = method.rotate([[1]])
# four = method.rotate([[1, 2], [3, 4]])

# # 1
# # Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
# # Output: [[7,4,1],[8,5,2],[9,6,3]]

# # 2
# # Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
# # Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]


# # print(three)
# print(four)

