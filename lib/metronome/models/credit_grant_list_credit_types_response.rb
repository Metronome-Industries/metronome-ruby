# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListCreditTypesResponse < Metronome::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      optional :id, String

      # @!attribute [rw] is_currency
      #   @return [Boolean]
      optional :is_currency, Metronome::BooleanModel

      # @!attribute [rw] name
      #   @return [String]
      optional :name, String

      # @!parse
      #   # Create a new instance of CreditGrantListCreditTypesResponse from a Hash of raw
      #   #   data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :id
      #   #   @option data [Hash, nil] :is_currency
      #   #   @option data [String, nil] :name
      #   def initialize(data = {}) = super
    end
  end
end
