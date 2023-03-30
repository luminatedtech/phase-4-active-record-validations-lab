class Post < ApplicationRecord
    validate :must_have_no_clickbait
    validates :title, presence: true
    validates(:content, length: {minimum: 250})
    validates(:summary, length: {maximum: 250})
    


    def must_have_no_clickbait
        if title == ("True Facts")
            errors.add(:title, "No clickbait")
        end 
    end 
end
