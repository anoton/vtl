class Page < ActiveRecord::Base
  attr_accessible :body, :browser_title, :keywords, :meta_description, :path, :title, :main
  extend FriendlyId
  friendly_id :title, :use=>[:slugged], :slug_column => :path
    
  def normalize_friendly_id(text)
    text.to_slug.normalize! :transliterations => [:ukrainian, :russian]
  end
  scope :main, where(:main=>true)
end
