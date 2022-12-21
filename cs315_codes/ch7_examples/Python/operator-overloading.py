class Data:
    id = 0
    record = ''

    def __init__(self, i, s):  # Constructor
        self.id = i
        self.record = s

    def __ne__(self, other):   # Not Equal operator, !=
        # return true if different types
        if type(other) != type(self):
            return True
        if self.record != other.record:
            return True
        else:
            return False


d1 = Data(1, 'Java')
d2 = Data(2, 'Java')
d3 = Data(3, 'Python')

print(d1 != d2)
print(d2 != d3)
