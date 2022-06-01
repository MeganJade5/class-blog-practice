class Article < ApplicationRecord
    has_many :comments

    def next
        Article.where("id > :id", id: @article.id).first
    end

    def prev
        Article.where("id < :id", id: @article.id).last
    end
end
