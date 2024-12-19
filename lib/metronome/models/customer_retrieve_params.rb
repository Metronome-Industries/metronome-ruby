# frozen_string_literal: true

module Metronome
  module Models
    class CustomerRetrieveParams < Metronome::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!parse
      #   # @param customer_id [String]
      #   #
      #   def initialize(customer_id:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
