# frozen_string_literal: true

module Metronome
  module Models
    class CreditTypeData < Metronome::BaseModel
      # @!attribute id
      #   @return [String]
      required :id, String

      # @!attribute name
      #   @return [String]
      required :name, String

      # @!parse
      #   # Create a new instance of CreditTypeData from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :name
      #   def initialize(data = {}) = super
    end
  end
end
