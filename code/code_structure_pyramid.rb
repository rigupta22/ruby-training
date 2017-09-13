# structure for pyramid pattern
class Pyramid
  def initialize(r)
    # initialize row
    @row = r
  end

  # args : @row
  # return left alligned pyramid
  def left
    # code to return left pyramid
    s = ''
    (1..@row).each do |i|
      s += '*' * i + "\n"
    end
    s
  end

  # args : @row
  # return right alligned pyramid
  def right
    # code to print right alligned pyramid
    s = ''
    (1..@row).each do |i|
      j = @row - 1
      while j >= i
        s += ' '
        j -= 1
      end
      s += '*' * i + '\n'
    end
    s
  end

  # args : @row
  # return center alligned pyramid

  def center
    # return center alligned pyramid
    s = ''
    (1..@row).each do |i|
      j = @row - 1
      while j >= i
        s += ' '
        j -= 1
      end
      s += '* ' * i + '\n'
    end
    s
  end
end
