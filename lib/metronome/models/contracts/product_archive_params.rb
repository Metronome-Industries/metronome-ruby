# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductArchiveParams < Metronome::BaseModel
        # @!attribute product_id
        #   ID of the product to be archived
        #
        #   @return [String]
        required :product_id, String

        # @!parse
        #   # @param product_id [String] ID of the product to be archived
        #   #
        #   def initialize(product_id:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
