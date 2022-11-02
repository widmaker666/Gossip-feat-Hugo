class StaticController < ApplicationController
def home
  @user = User.all
end

def show
    @user = User.find(params[:id])
end

def team
end

def contact
end



end