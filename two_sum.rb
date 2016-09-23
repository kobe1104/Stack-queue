
# O(n^2). Checking for repeated pairs or returning early doesn't matter
# because it could be at the end.
def bad_two_sum?(arr, target)
  found = false
  arr.each_with_index do |a, l|
    arr.each_with_index do |b, n|
      next if l == n
      found = true if arr[l] + arr[n] == target
    end
  end
  found
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10)
#O(n)
def okay_two_sum?(arr, target)
  return false if arr.size < 2
  sum = arr.first + arr.last
  if sum > target
    arr.pop
    okay_two_sum?(arr, target)
  elsif sum < target
    arr.shift
    okay_two_sum?(arr, target)
  else
    true
  end
end

# arr1 = [2, 3, 4, 9, 199, 222]
# p okay_two_sum?(arr, 6)
# p okay_two_sum?(arr1, 10)
#O(n)
def hash_map_sum(arr, target)
  a = Hash.new
  arr.each do |el|
    a[el] = target - el
  end

  arr.each do |el|
    value = a[el]
    return true unless a[value].nil?
    # return true if a.values.include?(el)
  end
  false
end

arr1 = [2, 3, 4, 9, 199, 222]
p hash_map_sum(arr, 6)
p hash_map_sum(arr1, 10)
