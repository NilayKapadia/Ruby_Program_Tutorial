#part 1
#we are using prime in twin prime and date for class Student
require 'prime'
require 'date'

#to find the average of the array elements
def average(a)
  sum=0 # a variable to store the sum of array
  a=a.sort #sorting- not to count lowest and highest
  if a.length<=2 #if only two elements
    return 0
  end
  for i in 1..a.length-2 do #except 0 and length-1
    sum=sum+a[i]
  end
  sum=sum/(a.length-2) # average
  return sum
end

#given two primes: difference is 2
def twin_prime?(a,b)
  #continue if both are prime
  if Prime.prime?(a)==false || Prime.prime?(b)==false
    return false
  end
  #if difference is 2
  if (b-a).abs==2
    return true
  else
    return false
  end
end

#to check if product of any three elements in array equal to n
def check_product?(array, n)
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

#part 2
#to count distinct vowels in string
def count_vowels(s)
  #a variable count to store the count of distinct vowels
  count=0;
  #checking presence of all vowels in string
  if /[aA]/ =~ s
    count += 1
  end
  if /[eE]/ =~ s
    count += 1
  end
  if /[iI]/ =~ s
    count += 1
  end
  if /[oO]/ =~ s
    count += 1
  end
  if /[uU]/ =~ s
    count += 1
  end
  return count
end

#valid parantheses
def valid_parentheses?(s)
  #stack to store ({[
  stack = []
  #looping through the string
  for i in 0..s.length-1
    c = s[i]
    if /[\{\(\[]/ =~ c
      stack << c
    else
      top= stack.pop
      if c=='}' and top=='{'
        next
      end
      if c==')' and top=='('
        next
      end
      if c==']' and top=='['
        next
      end
      return false
    end
  end
  #return true if stack is empty
  return stack.empty?
end

def longest_common_prefix(s)
  # if string is empty return nothing
  if s.empty?
    return ''
  end
  string1 = s.min #stores minimum length string in string1
  string2 = s.max #stores maximum length string in string2
  string1.each_char.with_index do |character, index|
    #parsing each character in string1 at index
    if character != string2[index]
      #when a difference is met return matched part
      return string2[0...index]
    end
  end
  #complete prefix matched so return string with min length
  return string1
end

# Part 3
#student class
class Student
  #two variables
  attr_reader :name, :enrollment_date

  #setter of name
  def name=(n)
    @name=n
  end

  #setter of enrollment_date
  def enrollment_date=(ed)
    @enrollment_date=ed
  end
=begin
  #getter of name
  def name
    @name
  end

  #getter of enrollment_date
  def enrollment_date
    @enrollment_date
  end
=end

  #constructor
  def initialize(name, enrollment_date)
    #checking name
    if name=="" || name==nil
      raise ArgumentError, "No success"
    end
    self.name=name
    #validating date
    raise ArgumentError, "No success" unless (/\d{2}-\d{2}-\d{4}$/=~enrollment_date)==0
    self.enrollment_date=enrollment_date
  end

  #got_enrolled_on method
  def got_enrolled_on
    readable = Date.strptime(self.enrollment_date,'%m-%d-%Y') rescue false
    if readable==false
      return "Invalid Date"
    end
    #validating enrollment_date
    if Date.valid_date?(readable.strftime('%Y').to_i,readable.strftime('%m').to_i,readable.strftime('%d').to_i)==true && readable.between?(Date.strptime('1970-01-01'),Date.strptime('2020-12-31'))==true

      return self.name+" - "+readable.strftime('%B')+" "+readable.strftime('%d')+" "+readable.strftime('%Y')
    else
      return "Invalid Date"
    end
  end
end