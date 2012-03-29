class BadgesController < ApplicationController
   before_filter :require_sign_in, :only => :update
  
  def create
  end
  
  def index
    @badges = Badge.all.sort_by!{ |badge| badge.users.count }.reverse
    @category_hash = Hash.new {|hash, key| hash[key] = Array.new}
    @badges.each do |badge|
      @category_hash[badge.category] << badge
    end
    @display_avatar = get_display_avatar
  end

  def show
    @badge = Badge.find_by_title(params[:id])
    @display_avatar = get_display_avatar
  end

  def update
    Badgehistory.create!(:user_id => current_user.id, 
                        :badge_id => Badge.find_by_title(params[:id]).id, 
                        :user_followers_snapshot => Twitter.user(current_user.username).followers_count
                        )
    current_user.update_attribute(:badge_id, Badge.find_by_title(params[:id]).id)
    current_user.create_notablee_url
    @display_avatar = get_display_avatar
    flash[:notice] = "Your notablee badge is now updated. Thanks for your support - continue to spread the word!"
    redirect_to badge_path
  end
  
  def revert
    current_user.revert_to_original_profile_image
    flash[:notice] = "Your profile image is now back to normal. Thanks for using notablee!"
    redirect_to root_path
  end
 
  private
  
  def require_sign_in
    if !current_user
      redirect_to auth_twitter_path
    end
  end
end
