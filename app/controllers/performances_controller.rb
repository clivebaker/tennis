class PerformancesController < ApplicationController
  def index
    
   @lesson = Lesson.find(params[:id])
    
  end

  # GET /performances/new
  # GET /performances/new.json
  def new
    @performance = Performance.new
    @disciplines = Discipline.all
    @lesson=Lesson.find(params[:id])
    @performance.lesson = @lesson
    
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @performance }
    end
  end



  # GET /performances/1/edit
  def edit
    @performance = Performance.find(params[:id])
    @disciplines = Discipline.all

    
  end

  # POST /performance
  # POST /performance.json
  def create
    @performance = Performance.new(params[:performance])
    @disciplines = Discipline.all
     
    respond_to do |format|
      if @performance.save
        format.html { redirect_to performance_lesson_path(@performance.lesson), notice: 'Performance was successfully created.' }
        format.json { render json: @performance, status: :created, location: @performance }
      else
        format.html { render :action=> "new" }
#        format.json { render json: @performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /performances/1
  # PUT /performances/1.json
  def update
    @performance = Performance.find(params[:id])
    @disciplines = Discipline.all

    respond_to do |format|
      if @performance.update_attributes(params[:performance])
        format.html { redirect_to performance_lesson_path(@performance.lesson), notice: 'Performance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performances/1
  # DELETE /performances/1.json
  def destroy
    @performance = Performance.find(params[:id])
    lesson = @performance.lesson
    @performance.destroy

    respond_to do |format|
      format.html { redirect_to performance_lesson_path(lesson) }
      format.json { head :no_content }
    end
  end


  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @performance = Performance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @performance }
    end
  end
end
