class WorkoutTypesController < ApplicationController
  # GET /workout_types
  # GET /workout_types.xml
  def index
    @workout_types = WorkoutType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workout_types }
    end
  end

  # GET /workout_types/1
  # GET /workout_types/1.xml
  def show
    @workout_type = WorkoutType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workout_type }
    end
  end

  # GET /workout_types/new
  # GET /workout_types/new.xml
  def new
    @workout_type = WorkoutType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workout_type }
    end
  end

  # GET /workout_types/1/edit
  def edit
    @workout_type = WorkoutType.find(params[:id])
  end

  # POST /workout_types
  # POST /workout_types.xml
  def create
    @workout_type = WorkoutType.new(params[:workout_type])

    respond_to do |format|
      if @workout_type.save
        format.html { redirect_to(@workout_type, :notice => 'Workout type was successfully created.') }
        format.xml  { render :xml => @workout_type, :status => :created, :location => @workout_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workout_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workout_types/1
  # PUT /workout_types/1.xml
  def update
    @workout_type = WorkoutType.find(params[:id])

    respond_to do |format|
      if @workout_type.update_attributes(params[:workout_type])
        format.html { redirect_to(@workout_type, :notice => 'Workout type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workout_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_types/1
  # DELETE /workout_types/1.xml
  def destroy
    @workout_type = WorkoutType.find(params[:id])
    @workout_type.destroy

    respond_to do |format|
      format.html { redirect_to(workout_types_url) }
      format.xml  { head :ok }
    end
  end
end
