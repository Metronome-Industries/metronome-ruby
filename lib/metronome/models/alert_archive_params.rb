# frozen_string_literal: true

module Metronome
  module Models
    class AlertArchiveParams < Metronome::BaseModel
      # @!attribute [rw] id
      #   The Metronome ID of the alert
      #   @return [String]
      required :id, String

      # @!attribute [rw] release_uniqueness_key
      #   If true, resets the uniqueness key on this alert so it can be re-used
      #   @return [Boolean]
      optional :release_uniqueness_key, Metronome::BooleanModel
    end
  end
end
