
class Person

  attr_reader :name

  def initialize(name)
      @name = name
  end

  def full_name
    puts "#{@first_name} #{@last_name}"
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end
end

class Student < Person

  def learn
    puts "I get it!"
  end
end


class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

chris.greeting
cristina.greeting

chris.teach
cristina.learn

# cristina.teach
# undefined method because there is no teach method for students
