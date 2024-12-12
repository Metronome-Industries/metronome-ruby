# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductArchiveParams < Metronome::BaseModel
        # @!attribute [rw] product_id
        #   ID of the product to be archived
        #   @return [String]
        required :product_id, String
      end
    end
  end
end
