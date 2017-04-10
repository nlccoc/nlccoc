def solution(a)
  # write your code in Ruby 2.2
  leftsum=0
  rightsum=0
  (0...a.length).each do |i|
    leftsum=0
    rightsum=0
    
    (0...i).each do |j|
      puts a[j]
      leftsum = leftsum + a[j]
    end
    
    (i+1...a.length).each do|j|
      rightsum = rightsum + a[j]
    end
    
    puts i
    puts leftsum
    puts rightsum
    puts '########'
    if leftsum == rightsum
      return i
    end
    
  end  
  return -1
end

t = [-1, 3, -4, 5, 1, -6, 2, 1]
solution(t)