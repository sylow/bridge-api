class User::Login < Trailblazer::Operation
  step :find_model
  step :authorize
  step :payload!

  def find_model(ctx, params:, **)
    ctx[:model] = User.find_by username: params[:username]
  end

  def authorize(ctx, params:, **)
    ctx[:model] && ctx[:model].authenticate(params[:password])    
  end

  def payload!(ctx, params:, **)
    payload = { user_id: ctx[:model].id }
    ctx[:access_token] = JWT.encode(payload, ENV['SECRET_KEY'])
  end
end