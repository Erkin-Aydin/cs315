day = "Monday"
def calendar():
  global day          #day is defined as global
  print("global day is", day)
  day = "Tuesday"     # this day is global
  print("global day is", day)

def c():
  print("day in c is", day)

calendar()
c()
