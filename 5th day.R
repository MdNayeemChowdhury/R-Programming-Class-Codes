
#conditional operator
# < less than
# > greater than
# <= less than or equal
# >= greater than or equal
# == adjectly equal
# != not equal

#logical gate
# & and gate
# | or gate
# ! not gate


#contral flow/ function

###if function
x<- 60
if( x > 50){
  print("PASS")
}

#ifelse function

x<- 40
if( x > 50){
  print("PASS")
}else{
  print("FAIL")
}

#nested if function

x<- 50
if( x > 50){
  print("PASS")
} else if(x == 50){
  print("JUST PASSED")
}else{
  print("FAIL")
}

#one line if else()
ifelse(x>50, "PASS", "FAIL")

#loop

#for loop

for(i in 1:10){
  print("R CODING COURSE")
}

#one line for loop
for(i in 1:10) print("R CODING COURSE")


#while loop
x <- 5
while (x < 10) {
  print("R coding")
  x = x+1
}

#break statement
#to stop the loop
for(i in 1:10){
  if(i %% 2 == 0){
    break
  }
  print(i)
}

#next
# to skip a loop
for(i in 1:9){
  if(i %% 5 == 0){
    next
  }
  print(i)
}
