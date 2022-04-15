# ASSESSMENT 4: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in a number and determines if the number is even or odd. Use the test variables provided.
# Psuedo Code
# I need to make conditional statements for this method, which I'll call even_or_odd
# I'll use string interperlation, .even, and .odd
# I'll also create a new variable to take in all three variables so I can call each one individually

num1 = 7
# Expected output: '7 is odd'
num2 = 42
# Expected output: '42 is even'
num3 = 221
# Expected output: '221 is odd'

stored_nums = num1, num2, num3

def even_or_odd array
    array.select do |value|
        if value.odd?
        puts "#{value.to_s} is odd."
        else
        puts "#{value.to_s} is even."
        end
    end
end
p even_or_odd stored_nums

# Output:7 is odd.
        # 42 is even.
        # 221 is odd.

# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
album3 = 'Abbey Road'
# Expected output: 'bby Rd'

# def delete
#     "#{album1}.delete"
# end
# p delete
# album1.delete! 'a', 'e', 'i', 'o', 'u'
#     p album1

# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.

palindrome_tester1 = 'Racecar'
# Expected output: 'Racecar is a palindrome'
palindrome_tester2 = 'LEARN'
# Expected output: 'LEARN is not a palindrome'
palindrome_tester3 = 'Rotator'
# Expected output: 'Rotator is a palindrome'
