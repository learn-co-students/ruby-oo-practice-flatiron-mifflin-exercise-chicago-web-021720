class Manager
    attr_reader :name, :age, :department
    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        new_employee = Employee.new(name, salary)
        new_employee.manager = self
    end

    def self.all
        @@all
    end

    def self.all_departments
        self.all.collect {|manager| manager.department}
    end

    def self.average_age
        manager_ages = self.all.collect {|manager| manager.age}
        manager_ages.sum / manager_ages.length.to_f
    end
end
