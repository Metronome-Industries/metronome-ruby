# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # credit_type_data => {
    #   id: String,
    #   name: String
    # }
    # ```
    class CreditTypeData < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param id [String]
      #   # @param name [String]
      #   #
      #   def initialize(id:, name:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
