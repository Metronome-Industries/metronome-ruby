# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      class ProductArchiveParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute product_id
        #   ID of the product to be archived
        #
        #   @return [String]
        required :product_id, String

        # @!parse
        #   # @param product_id [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(product_id:, request_options: {}, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
