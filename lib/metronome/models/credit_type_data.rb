# frozen_string_literal: true

module Metronome
  module Models
    class CreditTypeData < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String

      # Create a new instance of CreditTypeData from a Hash of raw data.
      #
      # @overload initialize(id: nil, name: nil)
      # @param id [String]
      # @param name [String]
      def initialize(data = {})
        super
      end
    end
  end
end
