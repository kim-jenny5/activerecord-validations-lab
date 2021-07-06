class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-fiction) }
    validate :clickbait?

    def clickbait?
        clickbait_arr = [/Won't Believe/,  /Secret/, /Top \d/, /Guess/]

        if clickbait_arr.none? { |clickbait| clickbait.match?(title) }
            errors.add :title, "not clickbait-y enough"
        end
    end
end
