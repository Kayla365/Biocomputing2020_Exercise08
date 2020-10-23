#Kayla Wood Biocomuting Excercise 8
#set working directory to Biocomputing Excercise 8 
setwd("/Users/kaylawood/Desktop/R/Biocomputing2020_Exercise08")
##Problem 1
#generate graph 
# read the UWvMSU_1-22-13.txt file 
UWvMSU<- read.table("UWvMSU_1-22-13.txt", header = TRUE)
#add cummulative score column to the data frame
UWvMSU$CummulScore = 0
#seperate scores by team then add tcummulative scores to each teams dataframe
MSU<- UWvMSU[which(UWvMSU$team == "MSU"), ]
MSU$CummulScore = cumsum(MSU$score)
UW<- UWvMSU[which(UWvMSU$team == "UW"), ]
UW$CummulScore = cumsum(UW$score)
#plot cumulative score on y axis and time on x axis with MSU in black and UW in red
CummulativeScore <- MSU$CummulScore
time <- MSU$time 
plot(time, CummulativeScore, type = "l")
lines(UW[ ,1], UW[ ,4], col="red")



##Problem 2
guessingGame <- function() {
#guess the number game 
print("I am thinking of a number 1-100")
#randomly pick a random number between 1 and 100
number <- sample(1:100,size=1)
#prompt the user to guess a number
Guess <- readline("Guess a number: ")
#create loop to determine if your number you guessed is correct
# if guessed number is equal to the random selected number print correct
#if guessed number is greater than random selected number print higher
#if guessed number is less than random selected number print lower 
maxGuesses <-10
for(i in 1: maxGuesses) {
  if(i==maxGuesses){
    print("incorrect you ran out of guesses")
  }else{
if (Guess < number){
    print("higher")
  Guess <- readline("Guess a number: ")
}else if (Guess == number){
    print ("Correct")
}else{
  (Guess > number)
    print("Lower")
    Guess <- readline("Guess a number: ")
      }
    }
  }
}

