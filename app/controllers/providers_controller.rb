class ProvidersController < ApplicationController
  def index
    @providers = Provider.all
  end

  def show
    @provider = Provider.find(params[:id])
  end

  def new
    @provider = Provider.new
  end

  def create
    # @provider = Provider.new(name: "...", summary: "...")
    @provider = Provider.new(provider_params)
    if @provider.save
      redirect_to @provider
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @provider = Provider.find(params[:id])
  end

  def update
    @provider = Provider.find(params[:id])

    if @provider.update(provider_params)
      redirect_to @provider
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @provider = Provider.find(params[:id])
    puts params
    @provider.destroy
    
    redirect_to root_path, status: :see_other
  end

  private

    def provider_params
      params.require(:provider).permit(:name, :phone, :website, :summary, :serving)
    end

end
