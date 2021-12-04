def bubble(array)
  count = array.count
  count.times do |i|
    (count - i - 1).times do |j|
      array[j] > array[j + 1] && (array[j], array[j + 1] = array[j + 1], array[j])
    end
  end
  array
end