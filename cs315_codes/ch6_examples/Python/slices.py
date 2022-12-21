vector = [2, 4, 6, 8, 10, 12, 14, 16]
mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print(vector[:3])
print(vector[3:])

vector[3:6] = ['a', 'b']
print(vector)

mat[1] = vector
print(mat)

del mat[1][4]
print(mat)

L = [i * 11 for i in range(10)[1:7:2]]
print(L)

a = [[1, 2, 3], [2, 4, 6, 'a', 'b', 14, 16], [7, 8, 9]]
L = [r[2] for r in a]
print(L)