# R techniques, Charles Becker, 2020
# an investigation of various techniques in R

# I dislike modifying source code to provide parameters to a script.
# I also try to avoid getting user input from a terminal environment.
# To get user input for a running script without modifying the source code
# I will use a text file that the user can modify (the data may get mangled but the code won't)

# To use this method:
# 1. open the response file('response.txt')
# 2. edit the response file
# 3. save the response file
# 4. run the script

Input1 <- read.table("response.txt", header = TRUE, colClasses = c('character', 'character'), sep = '=')
Input1
cat("Eye color = ", Input1$Value[which(Input1$Variable=='Eyes')])
cat("Footedness = ", Input1$Value[which(Input1$Variable=='Footed')])

# Needs error checking to improve the robustness of this script
# But there's the functionality