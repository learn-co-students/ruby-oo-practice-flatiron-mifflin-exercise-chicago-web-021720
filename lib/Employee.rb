class Employee
    attr_accessor :manager
    attr_reader :name, :salary
    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def tax_bracket
        self.class.all.select {|employee| employee.salary < (self.salary + 1000) && employee.salary > (self.salary - 1000)}
    end

    def self.all
        @@all
    end

    def self.paid_over(salary_amount)
        self.all.select {|employee| employee.salary > salary_amount}
    end

    def self.find_by_department(deparment_name)
        self.all.select {|employee| employee.department == deparment_name}
    end
end
