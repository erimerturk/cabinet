class DocsController < ApplicationController

  before_action :find_doc, only: [:show, :edit, :update, :destroy]

  def index
    @docs = Doc.all.order("created_at DESC")
  end

  def show

  end

  def new
    @doc = Doc.new

  end

  def create
    @doc = Doc.new(doc_params)

    if @doc.save
      redirect_to @doc  #makes new request
    else
      render 'new'    #dont make new request just render on same page
    end

  end

  def edit

  end


  def update

  end

  def destroy

  end

  private

    def find_doc
      @doc = Doc.find(params[:id])
    end

    def doc_params
      params.require(:doc).permit(:title, :content)
    end

end
