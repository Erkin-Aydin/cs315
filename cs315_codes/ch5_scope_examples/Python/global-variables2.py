day = "Monday"
def calendar():
  print ("global day is", day)
  day = "Tuesday"            #day becomes local !!! Error
  print ("local day is", day)

calendar()
print ("global day is", day)
