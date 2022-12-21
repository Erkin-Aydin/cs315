day = "Monday"
def calendar():
  day = "Newday"
  global day          #day is defined as global
  print ("global day is", day)

calendar()
print ("global day is", day)
