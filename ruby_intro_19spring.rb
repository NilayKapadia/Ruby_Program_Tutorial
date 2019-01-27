require 'prime'
  # Part 1

  def average(a)
    # ADD YOUR CODE HERE
    sum=0
    a=a.sort
    if a.length<=2
      return 0
    end
    for i in 1..a.length-2 do
      sum=sum+a[i]
    end
    sum=sum/(a.length-2)
    return sum

  end

  def twin_prime?(a,b)
    # ADD YOUR CODE HERE
    if Prime.prime?(a)==false || Prime.prime?(b)==false
      return false
    end



    if (b-a).abs==2
      return true
    else
      return false
    end

  end

  def check_product?(array, n)
    # ADD YOUR CODE HERE
    for i in 0..array.length-3 do
      for j in 1..array.length-2 do
        for k in 2..array.length-1 do
          if (array[i]*array[j]*array[k])==n
            return true
          end
        end
      end
    end
    return false
  end

# Part 2

  def count_vowels(s)
    # ADD YOUR CODE HERE
  end

  def valid_paretheses?(s)
    # ADD YOUR CODE HERE
  end

  def longest_common_prefix(s)
    # ADD YOUR CODE HERE
  end

# Part 3

  class Student
    # ADD YOUR CODE HERE
  end
