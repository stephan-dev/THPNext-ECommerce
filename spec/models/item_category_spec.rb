# frozen_string_literal: true

# == Schema Information
#
# Table name: item_categories
#
#  id          :bigint(8)        not null, primary key
#  item_id     :bigint(8)
#  category_id :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe ItemCategory, type: :model do
  describe 'Database' do
    subject(:new_item_category) { described_class.new }

    it { is_expected.to have_db_column(:id).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:item_id).of_type(:integer) }
    it { is_expected.to have_db_column(:category_id).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:item) }
    it { is_expected.to belong_to(:category) }
  end
end
