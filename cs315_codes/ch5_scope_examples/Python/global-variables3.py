day = "Monday"
def calendar():
  global day          #day is defined as global
  print ("global day is", day)
  day = "Tuesday"     # this day is global

calendar()
print ("global day is", day)
