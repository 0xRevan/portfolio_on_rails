class PagesController < ApplicationController
  def home
  end

  def contact
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]

      # success message
      render json: { message: "Chef! Thanks for getting in touch. I'll get back to you soon!" }, status: :ok
      end
end
