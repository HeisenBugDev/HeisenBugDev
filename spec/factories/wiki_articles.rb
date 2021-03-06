# == Schema Information
#
# Table name: wiki_articles
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  body        :text
#  wiki_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#  build_id    :integer
#  version_id  :integer
#  category_id :integer
#
# Indexes
#
#  index_wiki_articles_on_build_id     (build_id)
#  index_wiki_articles_on_category_id  (category_id)
#  index_wiki_articles_on_version_id   (version_id)
#  index_wiki_articles_on_wiki_id      (wiki_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wiki_article, :class => 'Wiki::Article' do
    title "MyString"
    body "Such body. Much article."
    wiki nil
  end
end
