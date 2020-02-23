class Manager

    attr_accessor
    attr_reader :name, :department, :age

    @@all = []

    def self.all
        @@all
    end

    def self.all_departments
        @@all.map { |man| man.department }
    end

    def self.average_age
        ages = @@all.map { |man| man.age }
        1.0 * ages.sum / ages.length
    end

    def initialize(name, department, age = 40)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.find_all { |emp| emp.manager == self }
    end

    def hire_employee(name, salary, id_known = false)
        if id_known
            emp = Employee.all.find { |emp| emp.name == name && emp.salary == salary}
            emp.manager = self
        else
            Employee.new(name, salary, self)
        end
    end

end