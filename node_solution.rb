require 'pry'

class Solution
  def initialize
    @a = {"B"=>"D","D"=>"E","A"=>"B","C"=>"F", "E"=>"G","A"=>"C"}
  end

  def express
    letter_array = @a.flatten.sort.uniq
    @a.count(letter_array[0])
    node_one_value = @a[letter_array[0]]
    node_one_key = letter_array[0]
  end

end

test = Solution.new
test.express

# In order to translate the sample input into the lexicographically smallest representation, the computer must
# create and a multi level hash structure that assigns each letter of the alphabet as a key to another hash of 
# alphabet letters that have a value of the numerical representation of the node and its level in the tree. For
# example. If A has the node child, B, then the hash would have have a key of A with  value of a hash that has the number
# `2` as the value of the A key. The number `2` could then represent the actual node whose parent is the letter A and 
# whose child is the 2nd letter in the alphabet. When this hash is put to the screen it will represent the tree.
# Then the tree must be translated into the lexicographically smallest representation. That could be done by replacing 
# the numbers which represent the nodes between the parent/child alphabetical letters, with a parenthesis.