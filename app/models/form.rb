class Form
  def initialize(git_name)
    @response = HTTParty.get("https://api.github.com/users/#{git_name}/repos?access_token=#{ENV['GIT_KEY']}")
  end
end
