class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show

  end

  def create
    @department = Department.find(params[:department_id])
    @employee = @department.employees.create(department_params)
    redirect_to department_path(@article)
  end

  def update

  end

  def destroy
    @department = Department.find(params[:department_id])
    @employee = @department.employees.find(params[:id])
    redirect_to department_path(@department)
  end

  private
    def employee_params
      params.require(:employee).permit(:firstname, :lastname)
    end
end
