class User < ApplicationRecord
    ROLES = {
        1 => 'Администратор',
        2 => 'Оператор',
        3 => 'Клиент'
    }

    validates :permissions, presence: true, inclusion: {in: ROLES.keys}
    validates :login, presence: true, uniqueness: true
    attr_reader :plain_password

    def User.get_new_salt
        SecureRandom.hex
    end

    def crypt_pass(s, p)
        Digest::SHA2.new(512).hexdigest(s + p)
    end
    
    def plain_password=(p)
        self.salt = User.get_new_salt
        self.password = crypt_pass(self.salt, p)
    end

    def check_password(p)
        cp = crypt_pass(self.salt, p)
        return (cp == self.password)
    end
end
