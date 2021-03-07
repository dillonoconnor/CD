class WotdJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Wotd.destroy_all
    random_word = Word.all.sample
    Wotd.create!(
      traditional: random_word.traditional,
      simplified: random_word.simplified,
      pinyin: random_word.pinyin,
      english1: random_word.english1,
      english2: random_word.english2
    )
  end
end
