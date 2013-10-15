EmailsController.class_eval do
  def create
    EmailMailer.email(current_user, params[:recipient], params[:subject], params[:message]).deliver
  end
end
