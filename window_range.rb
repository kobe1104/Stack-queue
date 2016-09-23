

# O(n^2)
def windowed_max_range(arr, size)
  current_max_range = nil
  arr.each_with_index do |e, i|
    # debugger
    break if i + size > arr.size
    min_max = arr[i...(i+size)].minmax
    diff = min_max.last - min_max.first
    if current_max_range.nil? || diff > current_max_range
      current_max_range = diff
    end
  end
  current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
