# frozen_string_literal: true

module Metronome
  module Models
    class CreditGrantListCreditTypesResponse < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      optional :id, String

      # @!attribute is_currency
      #
      #   @return [Boolean]
      optional :is_currency, Metronome::BooleanModel

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!parse
      #   # @param id [String, nil]
      #   # @param is_currency [Boolean, nil]
      #   # @param name [String, nil]
      #   #
      #   def initialize(id: nil, is_currency: nil, name: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
