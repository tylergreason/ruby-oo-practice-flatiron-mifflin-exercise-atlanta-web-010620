class Employee
    attr_accessor :name, :salary, :manager
    @@all = []
    # instance methods 
    def initialize(name, salary, manager) 
        @name = name 
        @salary = salary 
        @manager = manager
        @@all << self 
    end 
    
    def tax_bracket 
        Employee.all.select{|emp| emp.salary < @salary+1000 && emp.salary > @salary-1000}
    end


    # class methods 
    def self.all 
        @@all 
    end 
    def self.paid_over(amount)
        @@all.select{|emp| emp.salary > amount}
    end 

    def self.find_by_department (department) 
        # find first manager with this department
        manager = Manager.all.find{|manager| manager.department == department}
        # find their first employee 
        manager.employees[0]
    end 


end