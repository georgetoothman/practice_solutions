require 'pry'
# a = [1,2,3,5,7,10]

# # sort the array
# # divide index 0 against every other index
#   # store the difference in a hash with the key as the index 0 and the values an array of the two numbers
# # sort the results

# puts a.each_with_index.to_a

# need the value of the highest key
# if the value of the next highest key is lower than the value of the highest key
# search for the next smallest keys


class Solution
  def initialize
    @a = [2,3,4,7,8,1,29]
    @index_hash = {}
    @lowest_key = []
    @highest_key = []
    @lowest_allowable_key = []
    @index_hash = self.index_array
  end
    
  def index_array
    empty_hash = Hash.new
    @a.each_with_index do |item, index|
      empty_hash[item] = index
    end
    @highest_key << empty_hash.keys.sort.pop
    @lowest_key << empty_hash.keys.sort.reverse.pop
    @index_hash = empty_hash
  end

  def find_diff
    @index_hash.each do |k, v|
      if @index_hash[@lowest_key[0]] > @index_hash[@highest_key[0]]
        bad_options = []
        bad_options << @lowest_key[0]
      elsif @index_hash[@lowest_key[0]] <= @index_hash[@highest_key[0]]
        @lowest_allowable_key = @lowest_key[0] 
      else
        @lowest_allowable_key << @index_hash.keys.sort.reverse[@a.length - 2]
      end
    end
  end

  def answer
    puts @highest_key[0] - @lowest_allowable_key[0]
  end
end

# if the value of the next lowest key is less than the value of the highest key
# it is the lowest_allowable_key

solution = Solution.new
solution.index_array
solution.find_diff
solution.answer