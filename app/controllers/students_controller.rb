class StudentsController < ApplicationController
  
  def show
    @students = Student.all
  end

end
