# class User < ApplicationRecord
#     validates :username, presence: true, uniqueness: true

#     has_many :posts,
#         class_name: :Post,
#         foreign_key: :author_id,
#         primary_key: :id

#     belongs_to :location,
#         primary_key: :id,
#         foreign_key: :location_id,
#         class_name: :Location
# end

class User < ApplicationRecord
    validates :email, presence: true, uniqueness: true


    # def shorten_url(email)


    # end

end