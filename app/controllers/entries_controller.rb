class EntriesController < ApplicationController
  before_action :all_entries, only: [:index,                   :create, :update, :destroy]
  before_action :set_entry,   only: [        :show,     :edit,          :update, :destroy]

  respond_to :html, :js

  def index
  end

  def show
  end

  def new
    @entry = Entry.new
  end

  def edit

    #$("[id*=#entry-]") ->
    #  $(this).html("<%= j(render partial: 'entries/entry', :locals => { entry: @entry) } %>")
    #$("#entries").html("<%= j(render partial: 'entries/entry', collection: @entries, as: :entry) %>")
    
  end

  def create
    @entry = Entry.create(entry_params)
  end

  def update
    @entry.update(entry_params)
  end

  def destroy
    @entry.destroy
  end

  private

    def all_entries
      @entries = Entry.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:body)
    end
end
