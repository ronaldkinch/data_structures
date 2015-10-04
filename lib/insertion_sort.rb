class Array
  def insertion_sort
    Array.new(self).insertion_sort!
  end

  def insertion_sort!
    if length > 1
      0.upto(length - 2) do |n|
        value = self[n + 1]
        i = n
        while i >= 0
          if self[i] > value
            # puts "n #{n} #{value} i #{i} #{self[i]}"
            self[i + 1] = self[i]
            self[i] = value
            i -= 1
          else
            self[i + 1] = value
            i = -1
          end
        end
      end
    end
    self
  end
end
