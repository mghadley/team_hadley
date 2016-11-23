class EmailWorker
  include Sidekiq::Worker
  def perform(user_id, email)
    user = User.find_by(id: user_id)
    case email
    when "welcome_email"
      UserMailer.welcome_email(user).deliver_now
    end
  end
end