# frozen_string_literal: true

module Metronome
  module Models
    class ID < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # Create a new instance of ID from a Hash of raw data.
      #
      # @overload initialize(id: nil)
      # @param id [String]
      def initialize(data = {})
        super
      end
    end
  end
end
