class CasesController < ApplicationController
  def index
    @cases = Case.all
    # @cases = Case.for(current_user)
  end

  def show
    # files = @case.files
  end

  def new
    @case = Case.new
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

    def case_params
      # params.require(:case).permit(:field1, field2)
    end

end
