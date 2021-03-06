class TestsController < ApplicationController
  before_action :set_test, only: [:show, :update, :destroy]

  # GET /tests
  def index
    @tests = Test.all

    render json: @tests,
      :include => { 
        :questions => { 
          :include => :answers
        }
      }
  end

  # GET /tests/1
  def show
    render json: @test,
    :include => { 
      :questions => { 
        :include => :answers
      }
    }
  end

  # POST /tests
  def create
    @test = Test.new(test_params)

    if @test.save
      render json: @test, status: :created, location: @test
    else
      render json: @test.errors, status: :unprocessable_entity
    end

    
    # @test.reload

    # @test.questions.create(test_params['questions'])

    # @test.questions.save

    # @test.questions.each_index do |index|
    #   @test.questions[index].answers.create(test_params['questions'][index])
    # end

    
  end

  # PATCH/PUT /tests/1
  def update
    if @test.update(test_params)
      render json: @test
    else
      render json: @test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tests/1
  def destroy
    @test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_params
      params.require(:test).permit(:title)
    end
end
