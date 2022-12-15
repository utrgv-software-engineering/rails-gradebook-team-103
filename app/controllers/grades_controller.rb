class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  # GET /grades
  def index
    if !user_signed_in?
      redirect_to user_session_path
    end
  end

  # GET /grades/1
  def show
    if !user_signed_in?
      redirect_to user_session_path
  end
end


  # GET /grades/new
  def new
    @grade = Grade.new
  end
end

  # GET /grades/1/edit
  def edit
    if !user_signed_in?
      redirect_to user_session_path
  end
end

  # POST /grades
  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to @grade, notice: 'Grade was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grades/1
  def update
    if !user_signed_in?
      redirect_to user_session_path
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
      redirect_to user_session_path
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

