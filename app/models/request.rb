class Request < ApplicationRecord
    belongs_to :user
    # serialize :provider_ids, Array
    has_and_belongs_to_many :providers
end
