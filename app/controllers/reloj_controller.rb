class RelojController < ApplicationController
      before_action :set_comensale, only: [:show, :edit, :update, :destroy]
    users = Comensale.all
    david = Comensale.first
    
    def create
    end

    def action
        @login = params[:codigo]
        @dav = Comensale.find_by(codigo: @login)
        render :text => "No Data" and return
        
    end 
end
