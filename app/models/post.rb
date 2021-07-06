class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-fiction) }
    validates_with TitleValidator
    # validate :clickbait?

    # def clickbait?
    #     unless title.match?(/Won't Believe/) || title.match?(/Secret/) || title.match?(/Top \d/) || title.match?(/Guess/)
    #         errors.add :title, "not clickbait-y enough"
    #     end
    # end

end
