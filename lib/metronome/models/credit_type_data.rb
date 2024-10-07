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
    end
  end
end
