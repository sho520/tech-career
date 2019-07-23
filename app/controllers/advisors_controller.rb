class AdvisorsController < ApplicationController

  def students                   #生徒一覧ページ。CAのみ閲覧可能。CAのヘッダーから移動可能
    @students = Student.all
   
  end

end
