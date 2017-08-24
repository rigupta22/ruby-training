class Pyramid

  def initialize(r)
	# initialize row 
    @row = r
  end
   
   # args : @row
   # return left alligned pyramid
   
   def left
    # code to return left pyramid
    s=""
  for i in 1..@row
    s+="*"*i +"\n"
  end
  return s
   end

   # args : @row
   # return right alligned pyramid
   
   def right
	# code to return right pyramid
  # code to print right alligned pyramid
    s=""
    for i in 1..@row
      j=@row-1
        while j>=i do
          s+=" "
          j-=1
        end
      s+="*"*i
      s+="\n"
    end
  return s
   end

   # args : @row
   # return center alligned pyramid
   
  def center
    # return center alligned pyramid
    s=""
    for i in 1..@row
      j=@row-1
        while j>=i do
          s+=" "
          j-=1
        end
      s+="* "*i
      s+="\n"
    end
  return s
  end
end
