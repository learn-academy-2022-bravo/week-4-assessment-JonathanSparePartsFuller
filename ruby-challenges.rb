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
# p even_or_odd stored_nums

# Output:7 is odd.
        # 42 is even.
        # 221 is odd.

# -------------------2) Create a method that takes in a string and removes all the vowels from the string. Use the test variables provided. HINT: Check out this resource: https://ruby-doc.org/core-2.6/String.html#method-i-delete

# PsuedoCode:
# Create a method called no_vowels with string as the param
# Using the .delete method, I'll assign all vowels in both upper and lower case in a single string so each variables vowel will get delted wether it's upper or lowercased vowel
# Then print each variable outside the method for the argument

album1 = 'Rubber Soul'
# Expected output: 'Rbbr Sl'
album2 = 'Sgt Pepper'
# Expected output: 'Sgt Pppr'
album3 = 'Abbey Road'
# Expected output: 'bby Rd'

def no_vowels(string)
    string.delete('aeiouAEIOU')
  end
  
  p no_vowels(album1)
  p no_vowels(album2)
  p no_vowels(album3)


# Output: "Rbbr Sl"
# "Sgt Pppr"
# "bby Rd"

# -------------------3) Create a method that takes in a string and checks if the string is a palindrome. A palindrome is the same word spelled forward or backward. Use the test variables provided.
# PsuedoCode:
# Create a method called palindrome_check with string as a param
# I'll create a conditional method using .downcase and .reverse which will ensure that the variables strings are equal to each other when they are reversed 
# If the variable is a palindrome, have a string saying so. Else have a string saying it's not a palindrome
# Print each variable for the argument

palindrome_tester1 = 'Racecar'
# Expected output: 'Racecar is a palindrome'
palindrome_tester2 = 'LEARN'
# Expected output: 'LEARN is not a palindrome'
palindrome_tester3 = 'Rotator'
# Expected output: 'Rotator is a palindrome'

# all_palindromes = palindrome_tester1, palindrome_tester2, palindrome_tester3(Unnecessary)

def palindrome_check string
    if string.downcase == string.downcase.reverse
        "#{string} is a palindrome"
    else
        "#{string} is not a palindrome"
    end
end
p palindrome_check(palindrome_tester1)
p palindrome_check(palindrome_tester2)
p palindrome_check(palindrome_tester3)

# Output:
# "Racecar is a palindrome"
# "LEARN is not a palindrome"
# "Rotator is a palindrome"


# Didn't work
# def palindrome_check pali
#     if pali == pali.reverse
#          "#{pali.to_s} is a palindrome"
#     else
#          "#{pali.to_s} is not a palindrome"
#     end
# end

# p palindrome_check(all_palindromes)

