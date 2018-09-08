class Category < ApplicationRecord
    def permitted_params
        params.require(:category).permit(:name)
    end
    has_many :posts
end
