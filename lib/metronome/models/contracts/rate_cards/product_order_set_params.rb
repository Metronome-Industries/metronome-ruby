# frozen_string_literal: true

module Metronome
  module Models
    module Contracts
      module RateCards
        class ProductOrderSetParams < Metronome::BaseModel
          # @!parse
          #   extend Metronome::RequestParameters::Converter
          include Metronome::RequestParameters

          # @!attribute product_order
          #
          #   @return [Array<String>]
          required :product_order, Metronome::ArrayOf[String]

          # @!attribute rate_card_id
          #   ID of the rate card to update
          #
          #   @return [String]
          required :rate_card_id, String

          # @!parse
          #   # @param product_order [Array<String>]
          #   # @param rate_card_id [String]
          #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(product_order:, rate_card_id:, request_options: {}, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
