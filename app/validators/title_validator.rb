# class TitleValidator < ActiveModel::Validator
#     def validate(record)
#         binding.pry
#         unless record.title.match?(/Won't Believe/) || record.title.match?(/Secret/) || record.title.match?(/Top \d/) || record.title.match?(/Guess/)
#             record.errors.add :title, "not clickbait-y enough"
#         end
#     end
# end
