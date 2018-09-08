class Post < ApplicationRecord
    def permitted_params
        params.require(:post).permit(:title, :body, :category_id, :author_id)
    end
    belongs_to :category
end
