class Pick < ActiveRecord::Base
  belongs_to :user
  belongs_to :website
  
  valid_site_urls = Website.uniq.pluck(:url) #used to validate pick url entries

  validates :pick_url, inclusion: { in: valid_site_urls }
  validates :pick_url, presence: true
end