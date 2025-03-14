class CalculationsController < ApplicationController
  def square_form
    render "square_form"
  end

  def square_results
    @number = params[:number].to_f
    @result = @number**2
    render "square_results"
  end

  def square_root_form
    render "square_root_form"
  end

  def square_root_results
    @num = params[:number].to_f
    @result = Math.sqrt(@num)
    render "square_root_results"
  end

  def payment_form
    render "payment_form"
  end

  def payment_results
    @apr = params[:apr].to_f / 100 / 12
    @years = params[:years].to_f * 12
    @principal = params[:principal].to_f

    if @apr > 0
      @monthly_payment = (@apr * @principal) / (1 - (1 + @apr) ** -@years)
    else
      @monthly_payment = @principal / @years
    end

    render "payment_results"
  end

  def random_form
    render "random_form"
  end

  
  def random_results
    @min = params[:min].to_f
    @max = params[:max].to_f

    @result = rand(@min..@max).round(16)

    render "random_results"
  end
  
end
