# frozen_string_literal: true

module Metronome
  module Models
    class ID < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String
    end
  end
end
