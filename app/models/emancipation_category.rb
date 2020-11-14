class EmancipationCategory < ApplicationRecord
  has_many :emancipation_options
  validates :name, presence: true
  validates :mutually_exclusive, presence: true, inclusion: { in: [ true, false ] }

  def add_option(optionName)
    EmancipationOption.create(emancipation_category_id: self[:id], name: optionName)
  end
end

# == Schema Information
#
# Table name: emancipation_categories
#
#  id                 :bigint           not null, primary key
#  mutually_exclusive :boolean          not null
#  name               :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_emancipation_categories_on_name  (name) UNIQUE
#
