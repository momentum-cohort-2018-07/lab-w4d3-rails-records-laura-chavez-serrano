class DiscosController < ApplicationController
    def index
        @all = Disco.all
      end

    def new
      @disco = Disco.new
    end

    def edit
      @disco = Disco.find(params[:id])
    end

    def create
        @disco = Disco.new(disc_params)

        @disco.save
         redirect_to @disco
    end

    def show
      @disco = Disco.find(params[:id])
    end
  private

  def disc_params
    params.require(:disco).permit(:title, :artist, :year)
  end
# render plain: disc_params.inspect
end
