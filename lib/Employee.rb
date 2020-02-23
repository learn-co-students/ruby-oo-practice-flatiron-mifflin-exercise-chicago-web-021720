class Employee

    attr_accessor :manager, :salary
    attr_reader :name, :id

    @@all = []
    @@id = 0

    def self.all
        @@all
    end

    def self.paid_over(sal)
        @@all.find_all { |emp| emp.salary > sal }
    end

    def self.find_by_department(dep)
        @@all.find_all { |emp| emp.manager.department == dep }
    end

    def initialize(name, salary, manager = nil)
        @name = name
        @salary = salary
        @manager = manager
        @id = @@id
        @@id += 1
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def department_name
        self.manager.department
    end    

    def tax_bracket
        @@all.find_all { |emp| (emp.salary - self.salary).abs <= 1000 }
    end

end