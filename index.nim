import passCheck
import progress, os

var bar = newProgressBar()
bar.start()

for i in 1..100:
  sleep(10)
  bar.increment()

bar.finish()

echo "What is your password? "
let 
    password = readLine(stdin)
    passRes = passCheck(password)

if passRes == "weakPass":
    echo "You should use a password with at least 8 charecters"
elif passRes == "veryStrongPass":
    echo "You have a very strong password, with a mix of capital letters, lowercase letters, numbers, and symbols"
elif passRes == "strongPassWithNoSymbols":
    echo "You have a decently strong password, but it could be stronger if you add some symbols"
elif passRes == "strongPassWithNoNumbers":
    echo "You have a decently strong password, but it could be stronger if you add some numbers"
else:
    quit(1)



