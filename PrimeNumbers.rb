#Checking whether a user's input is a prime number
#Numbers that are not prime are a product of 2 other numbers e.g. 3 * 3 = 9, 2 * 4 = 8.
#By using Math.sqrt() we get either one of the two numbers or an approximate one to work in our range.

class Prime_number 

  def check_number 
    print "Enter a number :"
    number = gets.chomp.to_i     
    prime = true           
    
    for counter in 2..(Math.sqrt(number)) do   
        if number % counter == 0               
          prime = false 
        end 
    end 
  
    if prime 
      puts "\n #{number} is Prime" 
    else 
      puts "\n #{number} is not Prime" 
    end 
    
 end 

end
 
Prime_number.new.check_number


#Printing the first 100 prime numbers

x = 2
while x < 100
    prime = true
    for counter in 2..(Math.sqrt(x)) do
         if x % counter == 0
            prime = false
        end
    end
        
    if prime
        puts x
    end
 
 x += 1
    
end