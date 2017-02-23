class Array
  def two_sum
    array = []

    self.length.times do |i1|
      self.length.times do |i2|
        if i2 > i1 && self[i2] + self[i1] == 0
          array << [i1, i2]
        end
      end
    end
    array
  end
end
p [-1, 0, 2, -2, 1].two_sum == [[0, 4], [2, 3]]

class Array
  def my_transpose
    arr = []
    self[0].length.times do |idx1|
      sub_arr = []
      self.length.times do |idx2|
        sub_arr << self[idx2][idx1]
      end
      arr << sub_arr
    end
    arr
  end
end

p [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ].my_transpose == [[0, 3, 6], [1, 4, 7], [2, 5, 8]]

class Array
  def my_each(&prc)
   self.length.times do |i|
     prc.call(self[i])
   end

   self
 end

  def my_map(&prc)
    array = []
    self.my_each do |el|
      array << prc.call(el)
    end
    p array
  end
end

[1,2,3,4].my_map do |el|
  el * 2
end

def range(start_num, end_num)
  return [] if end_num - start_num < 2

  range(start_num, end_num - 1) << end_num - 1
end

p range(10, 15)
