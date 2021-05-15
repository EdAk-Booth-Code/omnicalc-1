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

  def blank_payment_form
    render({:template =>"calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment 
    @apr = params.fetch("user_apr")
    monthly_apr = @apr.to_f/(100*12)
    @years = params.fetch("user_years")
    years_to_months = @years.to_f*12
    @principal = params.fetch("user_pv")
    principal_float = @principal.to_f
    @payment = (monthly_apr*principal_float)/(1-((1+monthly_apr)**(-years_to_months)))
    
    render({:template => "calculation_templates/payment_results.html.erb"})
  end

  def blank_random_form
    render({:template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    @lower = params.fetch("user_min")
    @upper = params.fetch("user_max")
    @rand = rand(@lower.to_f..@upper.to_f)
    render({:template => "calculation_templates/random_results.html.erb"})
  end
end
