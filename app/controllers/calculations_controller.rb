class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @n = params[:number].to_i
  end

  def square_root
    @n = params[:number].to_i
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @rand = rand(@min..@max)
  end

  def payment
    @yrs = params[:number_of_years].to_i
    @periods = @yrs * 12

    @bps = params[:interest_rate].to_f
    @adjrate = @bps/120000

    @principal = params[:principal_value].to_i

    @payment = (@adjrate * @principal * ((1 + @adjrate) ** @periods)) / (((1 + @adjrate) ** @periods) - 1)
  end
end
