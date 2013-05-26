module SessionsHelper
	 def user_all_select_options
    User.all.map { |user|
      [user.name, user.id] }
  end
end
