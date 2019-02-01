require 'prime'
require 'date'
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
    attr_reader :name, :enrollment_date

    def initialize(name, enrollment_date)

      if name=="" || name==nil
        raise ArgumentError, "No success"
      end
      self.name=name




      raise ArgumentError, "No success" unless (/\d{2}-\d{2}-\d{4}$/=~enrollment_date)==0
      #puts "OK"

      self.enrollment_date=enrollment_date

    end


    def name=(n)
      @name=n
    end

    def enrollment_date=(ed)
      @enrollment_date=ed
    end

    def got_enrolled_on
      readable = Date.strptime(self.enrollment_date,'%m-%d-%Y') rescue false
      if readable==false
        return "Invalid Date"
      end

      if Date.valid_date?(readable.strftime('%Y').to_i,readable.strftime('%m').to_i,readable.strftime('%d').to_i)==true && readable.between?(Date.strptime('1970-01-01'),Date.strptime('2020-12-31'))==true

        return self.name+" - "+readable.strftime('%B')+" "+readable.strftime('%d')+" "+readable.strftime('%Y')
      else

        return "Invalid Date"
      end
    end
  end
