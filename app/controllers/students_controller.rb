class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy,:assign_course,:confirm_assign]
  before_action :set_courses , only: [:assign_course]


  def index
    @students = Student.all
  end


  def show
  end

  def new
    @student = Student.new
  end

  def assign_course
  end

  def confirm_assign
    course = Course.find(params[:id_course])
    course.classrooms.create(student: @student)

    redirect_to students_path
  end

  def edit
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to student_path(@student), notice: 'Student was successfully created.'
    else
      render :new
    end
  end


  def update
    if @student.update(student_params)
      redirect_to student_path(@student), notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end


  def destroy
    @student.destroy

    redirect_to students_path, notice: 'Student was successfully destroyed.'
  end

  private

    def set_courses
      @courses = Course.all
    end

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :register_number, :status)
    end
end
