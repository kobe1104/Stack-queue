
# O(n^2)
def my_min(arr)

  arr.each do |e|
    min = true
    arr.each do |f|
      if e > f
        min = !min
        break
      end
    end
    return e if min
  end
end

# p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])
#O(n)
def my_min_2(arr)
  min = arr.first
  arr.each do |num|
    min = num if min > num
  end
  min
end

# p my_min_2([ 0, 3, 5, 4, -5, 10, 1, 90 ])

def my_sum(arr)
  sum = arr.size
  (0..sum).to_a.inject(:+)
end

# p my_sum([1, 2, 3])
# p my_sum([1, 2, 3, 4])


def l_c_s(arr)
  collection = [] #O(n!)

  arr.each_with_index do |e, i|
    arr.each_with_index do |e2, i2|
      next if i > i2
      collection << arr[i..i2]
    end
  end
  max = collection.first.inject(:+)
  collection.each do |subarr| #O(n* n!)
    sum = subarr.inject(:+)
    max  = sum if sum > max
  end
  max
end

#O(n^3 + n^2) => O(n^3)
#

def lcs(arr)
  max = nil
  sum = 0
  arr.each_with_index do |e, i|
    sum += e
    if max.nil? || sum > max
      max = sum
    end
    if sum < 0
      sum = 0
    end
  end
  max
end
p lcs([2, 3, -6, 7, -6, 7])
p lcs([-5, -1, -3])
