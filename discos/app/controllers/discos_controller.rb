class DiscosController < ApplicationController
    def index
        @all = Disc.all
      end

    def new
      @discs = Disc.new
    end
    def edit
      @disc = Disc.find(params[:id])
    end
    def create
        @discs = Disc.new(disc_params)
    
        @discs.save
        #  redirect_to @discs
    end
    def show
      @discs = Disc.find(params[:id])
    end
  private
  def disc_params
    params.require(:disc).permit(:title, :artist, :year)
  end
# render plain: disc_params.inspect
end
