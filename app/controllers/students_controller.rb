class StudentsController < ApplicationController
  #this ensures set_student is rendered before all of the functions
  before_action :set_student, only: %i[ show edit update destroy ]

  #gets all students from the database
  def get_all_students
    @students = Student.all
  end

  #this function is necessary for one of the views that displays data in the application
  def show
  end

  # this function is necessary for one of the views that displays data in the applications
  def new
    @student = Student.new
  end

  #this function is necessary for one of the views that displays data in the application
  def edit
  end

  #this function uses the rails function .new to add a new student to the database
  def add_new_student
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to student_url(@student), notice: "Student was successfully created." }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # this function uses the rails .update function to update a student in the database
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to student_url(@student), notice: "Student was successfully updated." }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # this function uses the rails .destroy function to destroy a student in the database
  def destroy
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url, notice: "Student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # this function identifies the particular student by student id. This renders before all of the functions
    def set_student
      @student = Student.find(params[:id])
    end

    # grabs all the parameters from the response
    def student_params
      params.require(:student).permit(:student_id, :first_name, :last_name, :email, :enrollment_date)
    end
end
