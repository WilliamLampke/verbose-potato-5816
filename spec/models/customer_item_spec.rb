require 'rails_helper'

RSpec.describe CustomerItem do
    it {should belong_to :item }
    it {should belong_to :item }
end