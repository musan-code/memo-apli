class Diary < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 400 }

  validate :proper_title_and_body

  private

  def proper_title_and_body
    #具体的な処理
    unless title.starts_with?('今日')
      errors.add(:title, 'は「今日」から始めてください。')
    end

    unless body.ends_with?('。')
      errors.add(:body, 'は句点(。)で終了してください。')
    end
  end
end
