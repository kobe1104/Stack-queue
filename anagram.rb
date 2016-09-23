

require 'byebug'
#O(n!)
def first_anagram?(str1, str2)
  letters = str1.chars
  letters.permutation(str1.length).include? (str2.chars)
end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true
#O(n^2)
def second_anagram?(str1, str2)
  char1 = str1.chars
  char2 = str2.chars

  until char1.size == 0
    letter = char1.shift
    if char2.include?(letter)
      idx = char2.index(letter)
      char2.delete_at(idx)
    end
  end

  return true if char1.empty?  && char2.empty?
  false
end


# p second_anagram?("elvis", "lives")
# p second_anagram?("gizmo", "sally")
#O(n * log n)
def third_anagram?(str1, str2)
  arr = str1.chars.sort!
  arr2 = str2.chars.sort!
  arr == arr2 ? true : false
end
# p third_anagram?("elvis", "lives")
# p third_anagram?("gizmo", "sally")

#O(n)
def fourth_anagram?(str1,str2)
  a = Hash.new(0)
  b = Hash.new(0)
  str1.chars.each do |c|
    a[c]+=1
  end

  str2.chars.each do |c|
    b[c]+=1
  end

  a == b ? true : false
end

# p fourth_anagram?("elvis", "lives")
# p fourth_anagram?("gizmo", "sally")
