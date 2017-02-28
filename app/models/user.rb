class User < ActiveRecord::Base
    has_secure_password
    serialize :group_ids
end
