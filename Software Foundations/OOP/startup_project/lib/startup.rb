require "employee"

class Startup
    attr_reader :name, :funding, :salaries, :employees
    def initialize(name,funding,salaries)
        @name=name
        @funding=funding
        @salaries=salaries
        @employees=[]
    end
    def valid_title?(title)
    @salaries.has_key?(title)
    end
    def >(startup2)
        return true if startup2.funding < self.funding
        false
    end
    def hire(name,title)
        if valid_title?(title)
            @employees << Employee.new(name,title)
        else  
        raise "there is an error"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        salary=@salaries[employee.title]
        if @funding > salary
            employee.pay(salary)
            @funding-=salary
        else
            raise "There is an error"
        end
    end
    def payday 
        @employees.each{|ele| self.pay_employee(ele)}
    end
    def average_salary
            sum=0
            @employees.each{|key| sum+=salaries[key.title]}
            if @employees.length!=0
                return sum/@employees.length
            end
    end
    
    def close
        @employees=[]
        @funding=0
    end
    def acquire(startup)
        @funding += startup.funding

        startup.salaries.each do |title, amount|
          if !@salaries.has_key?(title)
            @salaries[title] = amount
          end
        end
    
        @employees = @employees + startup.employees
        startup.close()
    end


    
    

end
