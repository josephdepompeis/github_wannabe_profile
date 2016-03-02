class Form
  def initialize(git_name)
    @repos = HTTParty.get("https://api.github.com/users/#{git_name}/repos?access_token=#{ENV['GIT_KEY']}")
    @user = HTTParty.get("https://api.github.com/users/#{git_name}?access_token=#{ENV['GIT_KEY']}")
  end
end
