
#the following coding generate random string
 require 'securerandom'
 SecureRandom.hex 64
#the following code generate sample string (it's lenght less than 26), and show it by hex 
 ('a'..'z').to_a.sample(6).join 
or
str.each_byte{|byte| puts  "%02X" % byte}
