class OverlaysController < ApplicationController
  # GET /overlays
  # GET /overlays.json
  def index
    @overlays = Overlay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @overlays }
    end
  end

  # GET /overlays/1
  # GET /overlays/1.json
  def show
    @overlay = Overlay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @overlay }
    end
  end

  # GET /overlays/new
  # GET /overlays/new.json
  def new
    @overlay = Overlay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @overlay }
    end
  end

  # GET /overlays/1/edit
  def edit
    @overlay = Overlay.find(params[:id])
  end

  # POST /overlays
  # POST /overlays.json
  def create
    @overlay = Overlay.new(params[:overlay])
    @overlay.picture = "assets/"+@overlay.subdomain+".jpg"

    respond_to do |format|
      if @overlay.save
        format.html { redirect_to @overlay, notice: 'Overlay was successfully created.' }
        format.json { render json: @overlay, status: :created, location: @overlay }
      else
        format.html { render action: "new" }
        format.json { render json: @overlay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /overlays/1
  # PUT /overlays/1.json
  def update
    @overlay = Overlay.find(params[:id])

    respond_to do |format|
      if @overlay.update_attributes(params[:overlay])
        format.html { redirect_to @overlay, notice: 'Overlay was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @overlay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /overlays/1
  # DELETE /overlays/1.json
  def destroy
    @overlay = Overlay.find(params[:id])
    @overlay.destroy

    respond_to do |format|
      format.html { redirect_to overlays_url }
      format.json { head :ok }
    end
  end
end
