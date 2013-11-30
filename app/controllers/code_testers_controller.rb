class CodeTestersController < ApplicationController
  # GET /code_testers
  # GET /code_testers.json
  def index
    @code_testers = CodeTester.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @code_testers }
    end
  end

  # GET /code_testers/1
  # GET /code_testers/1.json
  def show
    @code_tester = CodeTester.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @code_tester }
    end
  end

  # GET /code_testers/new
  # GET /code_testers/new.json
  def new
    @code_tester = CodeTester.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @code_tester }
    end
  end

  # GET /code_testers/1/edit
  def edit
    @code_tester = CodeTester.find(params[:id])
  end

  # POST /code_testers
  # POST /code_testers.json
  def create
    @code_tester = CodeTester.new(params[:code_tester])

    respond_to do |format|
      if @code_tester.save
        format.html { redirect_to @code_tester, notice: 'Code tester was successfully created.' }
        format.json { render json: @code_tester, status: :created, location: @code_tester }
      else
        format.html { render action: "new" }
        format.json { render json: @code_tester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /code_testers/1
  # PUT /code_testers/1.json
  def update
    @code_tester = CodeTester.find(params[:id])

    respond_to do |format|
      if @code_tester.update_attributes(params[:code_tester])
        format.html { redirect_to @code_tester, notice: 'Code tester was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @code_tester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_testers/1
  # DELETE /code_testers/1.json
  def destroy
    @code_tester = CodeTester.find(params[:id])
    @code_tester.destroy

    respond_to do |format|
      format.html { redirect_to code_testers_url }
      format.json { head :no_content }
    end
  end
end
