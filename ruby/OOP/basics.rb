=begin 
class Dog

    #constructor
    def initialize(name, age, breed, foods)
        
        # instance variables
        @name = name 
        @age = age 
        @breed = breed 
        @favorite_foods = foods 
    end        


    # method that make do bark
    # instance method
    def bark
        puts "#{@name}(#{@breed}) is barking right now...." 
    end
    
    # dog info
    def info
        puts "----Dog Information----"
        puts "Name: #{@name}\nAge: #{@age}\nBreed: #{@breed}\nFavorite Foods: #{@favorite_foods}"
        puts "----_-_-_-_-_-_-_-_----"
    end

    

end

dog_1 = Dog.new("Setu", 6, "Desi Dog", ["Curd", "Rice", "Kichidi", "Roti"])
# puts dog_1.class
dog_1.info
=end 



##### Let writing a simple class on my own 
## car class 
=begin 
class Car 

    def initialize(brand, model, year_sales, price)
        @brand = brand
        @model = model 
        @year_sales = year_sales
        @price = price 
    end
    
    def car_info
        puts "----Car Information----"
        puts "Brand: #{@brand}\nModel: #{@model}\nTotal sales(2026): #{@year_sales}\nPrice: #{@price}$"
        puts "----_-_-_-_-_-_-_-_----"
    end
end 

gopal_car = Car.new("Tesla", "model S(2026)", 12000, 100000 )
# puts gopal_car.class
puts gopal_car.car_info

=end 

######  Instance variables and accessors 
## Instance variables (@var) store state: use attr_accessor, attr_reader, attr_writer for easy access 

=begin 
class Person 
  attr_accessor :name, :age # reader + writer 
  attr_reader :user_id # only reader 
  
  def initialize(name, age)
    @name = name 
    @age = age 
    @user_id = rand(111..1000)
  end

end

gopal = Person.new("Gopal Mahato", 20) 
gopal.name = "Gopal" # name is mutable 
puts gopal.name 
gopal.age = 20.6 # age is mutable
puts gopal.age 

# gopal.user_id = 456 # user_id immutable
puts gopal.user_id
=end 

### Trying another example  
##    
class Student 
  attr_accessor :name, :age, :dept, :lang
  attr_reader :roll_no

  def initialize(name, age, dept, lang, roll_no)
    @name = name 
    @age = age 
    @dept = dept 
    @lang = lang 
    @roll_no = roll_no

  end
end
ujjal = Student.new("Ujjal Das", 20, "BCA", "JavaScript", 11)

ujjal.age = 21
ujjal.lang = "Python"
# ujjal.roll_no = 12 only reader

puts ujjal.name 
puts ujjal.age 
puts ujjal.dept 
puts ujjal.lang 
puts ujjal.roll_no 
