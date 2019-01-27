
  load 'ruby_intro_19spring.rb'

  def scores
    correct = 0
    wrong = 0
    full = 100

    # Q1
    begin
      average([10, 20, 30, 40]) == 25 ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q2
    begin
      twin_prime?(7,11)  == false ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q3
    begin
      check_product?([1,2,3],6) == true ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q4
    begin
      count_vowels("Home") == 2 ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q5
    begin
      valid_parentheses?("()[]{}") == true  ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # Q6
    begin
      longest_common_prefix(["a","aa","abc"]) == "a" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    #Q7
    begin
      b2 = Student.new("Kevin", "02-29-2019")
    rescue
      b2 = nil
    end

    #Q7
    begin
      b3 = Student.new("Kevin", "01-18-2019")
    rescue
      b3 = nil
    end

    begin
      b2.got_enrolled_on=="Invalid Date" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    begin
      b3.got_enrolled_on=="Kevin - January 18 2019" ? correct+=1 : wrong+=1
    rescue
      wrong+=1
    end

    # puts correct+wrong
    puts correct, wrong, correct+wrong
    return ( (correct * full).to_f / (wrong + correct) ).round(2)

  end
  puts scores