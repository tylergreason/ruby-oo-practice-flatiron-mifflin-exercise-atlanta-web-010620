require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

michael = Manager.new('Michael','sales',40)
scott = Manager.new('Scott','marketing',30)
michelle = Manager.new('Michelle','warehouse',450)

michael.hire_employee('Dwight',40000)
michael.hire_employee('David',50000)
michael.hire_employee('Dene',60000)

scott.hire_employee('Adam',10000)
scott.hire_employee('Ada',10500)
scott.hire_employee('Andy',9500)

michelle.hire_employee('Dino',40000)
michelle.hire_employee('Dene',50000)
michelle.hire_employee('Drake',60000)

binding.pry
puts "done"
