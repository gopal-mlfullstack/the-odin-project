# A class can inherit from another class using < 

class Student
  def initialize(name, age, aim)
    @name = name 
    @age = age 
    @aim = aim 
  end

  def student_info
    return "Name: #{@name}\nAge: #{@age}\nAim: #{@aim}"
  end
end

class BIST_Students < Student

  def campus
    return "On campus are available on final year!"
  end
end

gopal = BIST_Students.new("Gopal Mahato", "20", "Software Engineer(remote)")
puts gopal.student_info()  

### Another example 

class Person 
  def initialize(name, age, city, is_married)
    @name = name 
    @age = age 
    @city = city 
    @is_married = is_married 

  
  def person_info
        return "Name: #{@name}\nAge: #{@age}\nCity: #{@city}\nMarriage Status: #{@is_married}"
  end  
  end
end

class Men < Person
  def sperm
    return "Generates 200,000,000 sperm daily"
  end
end

gopalmahato = Men.new("Gopal Mahato", 20, "Purulia", false) 
puts gopalmahato.person_info
puts gopalmahato.sperm 