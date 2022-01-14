class Review < ApplicationRecord
  belongs_to :list

  validates :content,:rating, presence: true
  validates :rating, numericality: true, inclusion: { in: 1..5 }

  def time_of_review
    time = Time.now
    created = (time - self.created_at ).round
    if (created > 59) && (created < 3599)
       created = ( created / 60 ).round
       "#{created} minute#{ created == 1 ? "" : "s"} ago"
    elsif created < 59
          created = "less than a minute ago"
    else
      created = ( created / 3600 ).round
      "#{created} hour#{ created == 1 ? "" : "s"} ago"
    end
  end

end
