class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5}
  belongs_to :user              
 # mora validatios at http://guides.rubyonrails.org/active_record_validations.html                   
end
