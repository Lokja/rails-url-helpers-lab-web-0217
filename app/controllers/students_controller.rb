class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :activate]

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    if !@student.active
      @student.update(active: true)
    else
      @student.update(active: false)
    end
    redirect_to student_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

end
