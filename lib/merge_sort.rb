class Array
  def merge_sort
    return self if length <= 1
    mid = length / 2.floor
    left = slice(0, mid)
    right = slice(mid, length - 1)
    left = left.merge_sort
    right = right.merge_sort
    Array.merge(left, right)
  end

  def self.merge(left, right)
    return left + right if left.last <= right.first
    merge = []
    left_eye = 0
    right_eye = 0
    while merge.length < left.length + right.length
      return merge + left.drop(left_eye) if right_eye >= right.length
      return merge + right.drop(right_eye) if left_eye >= left.length
      if left[left_eye] <= right[right_eye]
        left_eye += 1
        merge << left[left_eye - 1]
      else
        right_eye += 1
        merge << right[right_eye - 1]
      end
    end
  end
end
