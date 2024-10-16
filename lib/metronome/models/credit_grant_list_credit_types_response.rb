# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListCreditTypesResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      optional :id, String

      # @!attribute [rw] is_currency
      #   @return [Boolean]
      optional :is_currency, Metronome::BooleanModel

      # @!attribute [rw] name_
      #   @return [String]
      optional :name_, String

      # Create a new instance of CreditGrantListCreditTypesResponse from a Hash of raw
      #   data.
      #
      # @overload initialize(id: nil, is_currency: nil, name: nil)
      # @param id [String]
      # @param is_currency [Hash]
      # @param name [String]
      def initialize(data = {})
        super
      end
    end
  end
end
