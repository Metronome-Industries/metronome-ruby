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
    end
  end
end
