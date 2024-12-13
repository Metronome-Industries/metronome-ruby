# frozen_string_literal: true

module Metronome
  module Models
    class CustomerSetNameParams < Metronome::BaseModel
      # @!attribute customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute name
      #   The new name for the customer. This will be truncated to 160 characters if the provided name is longer.
      #   @return [String]
      required :name, String
    end
  end
end
