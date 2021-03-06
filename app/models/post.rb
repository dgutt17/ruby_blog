class Post < ApplicationRecord
    def permitted_params
        params.require(:post).permit(:title, :body, :category_id, :admin_user_id)
    end
    belongs_to :category
    belongs_to :admin_user
    has_many :comment, :dependent => :destroy
    validates :title, presence: false
    validates_length_of :body, :minimum => 0
end
