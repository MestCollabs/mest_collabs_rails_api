class AuthenticateApp
  prepend SimpleCommand

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(app_id: app.id) if app
  end

  private

    attr_accessor :email, :password

    def app
      app = App.find_by_email(email)
      return app if app && app.authenticate(password)

      errors.add :app_authentication, 'invalid credentials'
      nil
    end
end
