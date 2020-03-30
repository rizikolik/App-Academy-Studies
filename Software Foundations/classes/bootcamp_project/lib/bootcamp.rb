class Bootcamp
  def  initialize( name, slogan,student_capacity)
@name=name
@slogan=slogan
@student_capacity=student_capacity  
@teachers=[]
@students=[]
@grades=Hash.new { |h,k| h[k] = [] }
@enrolled=0
end
def name
    @name
end
def slogan
    @slogan
end
def student_capacity
    @student_capacity
end
def teachers
    @teachers
end
def students
    @students
end
def hire(teacher)
@teachers<< teacher
end
def enroll(student)
    if @enrolled< student_capacity
@students << student
@enrolled+=1
true
    else 
    false
    end
end
def enrolled?(student)
return true if @students.include?(student)
false
end
def student_to_teacher_ratio
    @students.length/@teachers.length
end
def add_grade(student,grade)
    if @students.include?(student)
        @grades[student]<< grade
        true
    else 
        false
    end

end
def num_grades(student)
    @grades[student].length
end
def average_grade(student)
    if @students.include?(student)&& @grades[student]!=nil
    total=@grades[student].sum
    divide=@grades[student].length
    if divide!=0
        total/divide
    else
        nil
    end
    else  
        nil
    end
end

  
end
