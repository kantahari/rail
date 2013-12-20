class StaticController < ApplicationController
def contact
end
def techno_news
end
def social_news
render :layout =>"socialnews"
end
def profile
@profile=Member.find_by_id(current_member.id)
end
def update
end
def memberslist
@members = Member.paginate(page: params[:page], :per_page => 10)
end
def kushi
@kushis=Kushi.all
render :layout =>"kushi"
end
  
end
