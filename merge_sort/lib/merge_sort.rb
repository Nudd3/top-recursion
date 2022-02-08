# frozen_string_literal: false

def merge_sort(array)
  if array.length < 2
    array
  else
    left = merge_sort(array[0...array.length / 2])
    right = merge_sort(array[(array.length / 2)..-1])
    merge(left, right)
  end
end

def merge(left, right)
  array = []

  array << ((left[0] <=> right[0]) == -1 ? left.shift : right.shift) until left.empty? || right.empty?
  array + left + right
end

array = [2, 5, 3, 1, 9, 5]
puts merge_sort(array)
