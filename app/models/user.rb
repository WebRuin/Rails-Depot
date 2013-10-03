class User < ActiveRecord::Base
    #attr_accessible :name, :password, :password_confirmation
    validates :name, presence: true, uniqueness: true
    has_secure_password
    
    after_destory :ensure_an_admin_remains
    
    private
        def ensure_an_admin_remains
            if User.count.zero?
                raise "Can't delete user"
            end
        end
end
