class Category < ApplicationRecord

    validates :title, presence: { message: "名称不能为空,nome null" }
    validates :title, uniqueness: { message: "名称不能重复, nome repect" }

    has_ancestry

    has_many :products, dependent: :destroy

    before_validation :correct_ancestry

    def children
      Category.all.where(:ancestry =>self.id)
    end
    private
    def correct_ancestry
      self.ancestry = nil if self.ancestry.blank?
    end

    
  
end
