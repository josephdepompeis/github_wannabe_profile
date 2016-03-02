class Form
  def initialize(git_name)
        @user = HTTParty.get("https://api.github.com/users/#{git_name}?access_token=#{ENV['GIT_KEY']}")
    @repos = HTTParty.get("https://api.github.com/users/#{git_name}/repos?access_token=#{ENV['GIT_KEY']}")

  end


  def full_name
    @user["name"]
  end

def user_id
  @user["id"]
end

def location
  @user["location"]
end

def join_date
  @user["created_at"]
end

def company
  @user["company"]
end

end
