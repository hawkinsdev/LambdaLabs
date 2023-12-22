class StaticTokenAuthorization
    def initiali|ze(app)
      @app = app
    end

    def call(env)
        request = Rack::Request.new(env)
        token = request.params['token']
        
        if valid_token?(token)
            @app.call(env)
        else
            unauthorized_token
        end
    end

    private
    def valid_token?(token)
        token == 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c'
    end

    def unauthorized_token
        'Unauthorized'
    end
end