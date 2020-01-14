class Manager
    attr_accessor :name, :department, :age
    @@all = [] 
    # class methods 
    def initialize(name, department, age)
        @name = name 
        @department = department
        @age = age 
        @@all << self 
    end

    def hire_employee(name,salary)
        Employee.new(name,salary,self)
    end 
    
    def employees 
        Employee.all.select{|employee| employee.manager == self}
    end 
    # class methods 
    def self.all 
        @@all 
    end 

    def self.average_age 
        age_array = @@all.map{|manager|manager.age}
        (age_array.sum / age_array.length).to_f
    end 

    def self.all_departments 
        @@all.map{|manager| manager.department}
    end 

end
