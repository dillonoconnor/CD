class Word < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_word, against: [:traditional, :simplified, :pinyin, :english1]
end
