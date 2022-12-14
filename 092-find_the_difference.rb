# 92-find_the_difference.rb

# Leetcode: Find The Difference
# https://leetcode.com/problems/find-the-difference/

# You are given two strings s and t.

# String t is generated by random shuffling string s and then add one more letter at a random position.

# Return the letter that was added to t.

# Example 1:
# Input: s = "abcd", t = "abcde"
# Output: "e"
# Explanation: 'e' is the letter that was added.

# Example 2:
# Input: s = "", t = "y"
# Output: "y"

# p find_the_difference("", "y") == "y"
# p find_the_difference("abcd", "abcde") == "e"
# p find_the_difference("y", "yz") == "z"
# p find_the_difference("abc", "abc") == ""
# p find_the_difference("a", "aa") == "a"

# PEDAC
# Problem:
# - Input: String
# - Output: new String
# - Rules:
#   - Explicit:
#     - method takes one argument, a String
#     - method returns a String
#       - contains the character added to the input String
#       - characters from input String may be shuffled around
#   - Implicit:
#
# Examples:
# - Test Case 1:
#   - Input: "abcd" and "abcde"
#   - Output: "e"
#
# Data Structures:
# - String - input argument 1
# - String - input argument 2
# - String - added character -> return value
# - Hash - to hold each character in String 2 and the count
#
# Algorithm:
# - create a method that takes two arguments, both Strings
#
# - create a Hash to hold each character in String 2 and the count
#
# - iterate through each character in String 1
#   - subtract 1 for the corresponding letter from the count in the Hash 
#     for String 2
# 
# - return the letter with a count of 1 in the Hash for String 2 
# 
# Code:
# - create a method that takes two arguments, both Strings
def find_the_difference(str1, str2)
  # - create a Hash to hold each character in String 2 and the count
  hsh = Hash.new(0)
  str2.chars.each { |curr_char| hsh[curr_char] += 1 }

  # - iterate through each character in String 1
  #   - subtract 1 for the corresponding letter from the count in the Hash 
  #     for String 2
  str1.chars.each { |curr_char| hsh[curr_char] -= 1}

  # - return an empty String if all values are equal to 0
  return "" if hsh.values.all?(0)

  # - return the letter with a count of 1 in the Hash for String 2 
  hsh.each { |key, value| return key if value == 1}
end

p find_the_difference("", "y") == "y"
p find_the_difference("abcd", "abcde") == "e"
p find_the_difference("y", "yz") == "z"
p find_the_difference("abc", "abc") == ""
p find_the_difference("a", "aa") == "a"