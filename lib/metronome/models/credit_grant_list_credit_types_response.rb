# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # credit_grant_list_credit_types_response => {
    #   id: String,
    #   is_currency: Metronome::BooleanModel,
    #   name: String
    # }
    # ```
    class CreditGrantListCreditTypesResponse < Metronome::BaseModel
      # @!attribute [r] id
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!attribute [r] is_currency
      #
      #   @return [Boolean, nil]
      optional :is_currency, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :is_currency

      # @!attribute [r] name
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

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
