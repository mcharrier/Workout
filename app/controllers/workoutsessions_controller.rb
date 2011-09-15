class WorkoutsessionsController < ApplicationController
  # GET /workoutsessions
  # GET /workoutsessions.xml
  def index
    @workoutsessions = Workoutsession.all
    @calories = 0
    @workoutsessions.each do |ws|
      @calories += WorkoutType.find(ws.workout_type_id).cpm * ws.duration
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @workoutsessions }
    end
  end

  # GET /workoutsessions/1
  # GET /workoutsessions/1.xml
  def show
    @workoutsession = Workoutsession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @workoutsession }
    end
  end

  # GET /workoutsessions/new
  # GET /workoutsessions/new.xml
  def new
    @workoutsession = Workoutsession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @workoutsession }
    end
  end

  # GET /workoutsessions/1/edit
  def edit
    @workoutsession = Workoutsession.find(params[:id])
  end

  # POST /workoutsessions
  # POST /workoutsessions.xml
  def create
    wt = params[:workoutsession].delete(:workout_type)
    @workoutsession = Workoutsession.new(params[:workoutsession])
    @workoutsession.workout_type_id = wt

    respond_to do |format|
      if @workoutsession.save
        format.html { redirect_to(@workoutsession, :notice => 'Workoutsession was successfully created.') }
        format.xml  { render :xml => @workoutsession, :status => :created, :location => @workoutsession }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @workoutsession.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /workoutsessions/1
  # PUT /workoutsessions/1.xml
  def update
    @workoutsession = Workoutsession.find(params[:id])

    respond_to do |format|
      wt = params[:workoutsession].delete(:workout_type)
      if @workoutsession.update_attributes(params[:workoutsession])
        @workoutsession.workout_type_id = wt
        @workoutsession.save
        format.html { redirect_to(@workoutsession, :notice => 'Workoutsession was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @workoutsession.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /workoutsessions/1
  # DELETE /workoutsessions/1.xml
  def destroy
    @workoutsession = Workoutsession.find(params[:id])
    @workoutsession.destroy

    respond_to do |format|
      format.html { redirect_to(workoutsessions_url) }
      format.xml  { head :ok }
    end
  end
end
