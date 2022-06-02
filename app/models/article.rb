class Article < ApplicationRecord
    has_many :comments
    has_rich_text :body
    belongs_to :user

    def next
        Article.where("id > :id", id: @article.id).first
    end

    def prev
        Article.where("id < :id", id: @article.id).last
    end
end
