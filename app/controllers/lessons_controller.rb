class LessonsController < ApplicationController
  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.where("player_id IN (?)",Player.find_all_by_user_id(current_user).collect{|a|a.id})
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lessons }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.json
  def new
    @lesson = Lesson.new
    
    @coaches=Coach.find_all_by_user_id(current_user.id)
    @players=Player.find_all_by_user_id(current_user.id)
    @locations=Location.find_all_by_user_id(current_user.id)
    @types=Type.find_all_by_user_id(current_user.id)
    
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/1/edit
  def edit
    @lesson = Lesson.find(params[:id])
    @coaches=Coach.find_all_by_user_id(current_user.id)
    @players=Player.find_all_by_user_id(current_user.id)
    @locations=Location.find_all_by_user_id(current_user.id)
    @types=Type.find_all_by_user_id(current_user.id)
    
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(params[:lesson])
    @coaches=Coach.find_all_by_user_id(current_user.id)
    @players=Player.find_all_by_user_id(current_user.id)
    @locations=Location.find_all_by_user_id(current_user.id)
    @types=Type.find_all_by_user_id(current_user.id)
    
    respond_to do |format|
      if @lesson.save
        format.html { redirect_to lessons_path, notice: 'Lesson was successfully created.' }
        format.json { render json: @lesson, status: :created, location: @lesson }
      else
        format.html { render action: "new" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.json
  def update
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        format.html { redirect_to lessons_path, notice: 'Lesson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to lessons_url }
      format.json { head :no_content }
    end
  end
end
