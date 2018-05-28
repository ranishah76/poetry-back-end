class Poem < ApplicationRecord
  belongs_to :author, optional: true
end
