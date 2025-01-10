# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # credit_grant_list_credit_types_response => {
    #   id: String,
    #   is_currency: Metronome::BooleanModel,
    #   name: String
    # }
    # ```
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
      #   # @param id [String]
      #   # @param is_currency [Boolean]
      #   # @param name [String]
      #   #
      #   def initialize(id: nil, is_currency: nil, name: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
