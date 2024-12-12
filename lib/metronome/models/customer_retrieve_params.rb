# frozen_string_literal: true

module Metronome
  module Models
    class CustomerRetrieveParams < Metronome::BaseModel
      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String
    end
  end
end
