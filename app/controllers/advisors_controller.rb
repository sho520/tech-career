class AdvisorsController < ApplicationController

  def show
    @aaa = "aaa"
  end

  def students
    @students = Student.all
  end


end
