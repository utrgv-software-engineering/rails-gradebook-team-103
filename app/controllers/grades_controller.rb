class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  # GET /grades
  def index
    if !user_signed_in?
      redirect_to user_session_path
    else 
        if params[:ascending] == 'true'
          @grades = Grade.order('student_grade')
        elsif params[:descending] == 'true'
          @grades = Grade.order('student_grade DESC')
        else
          @grades = Grade.all
        end 
    end
  end

  # GET /grades/1
  def show
    if !user_signed_in?
      redirect_to new_user_session_path
    else
    end
  end

  # GET /grades/new
  def new
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      @grade = Grade.new
    end
  end
  # GET /grades/1/edit
  def edit
    if !user_signed_in?
      redirect_to new_user_session_path
    else
    end
  end

  # POST /grades
  def create
    if !user_signed_in?
      redirect_to new_user_session_path
    else
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to @grade, notice: 'Grade was successfully created.'
    else
      render :new
    end
    end
  end

  # PATCH/PUT /grades/1
  def update
    if !user_signed_in?
      redirect_to new_user_session_path
    
    else
   
      if @grade.update(grade_params)
        redirect_to @grade, notice: 'Grade was successfully updated.'
      else
        render :edit
      end
    end
  end


  # DELETE /grades/1
  def destroy
    if !user_signed_in?
      redirect_to new_user_session_path
    elsif current_user.account_id == 0
      redirect_to root_path, notice: "You are not allowed to delete grades."
    else
    @grade.destroy
    redirect_to grades_url, notice: 'Grade was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade
      @grade = Grade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_params
      params.require(:grade).permit(:student_id, :student_name, :student_grade)
    end
end
