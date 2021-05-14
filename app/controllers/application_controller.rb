class ApplicationController < ActionController::Base
  def blank_square_form
    render({:template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    @num = params.fetch("input_number")
    num_to_i = @num.to_i
    @num_squared = num_to_i * num_to_i
    render({:template => "calculation_templates/square_results.html.erb"})
  end

  def blank_square_root_form
    render({:template => "calculation_templates/square_root_form.html.erb" })
  end

  def calculate_square_root
    @num = params.fetch("input_number")
    num_to_f = @num.to_f
    @num_square_root = Math.sqrt(num_to_f)
    render({:template => "calculation_templates/square_root_results.html.erb"})
  end
end
