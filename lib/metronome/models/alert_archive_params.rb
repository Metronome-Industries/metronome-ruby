# frozen_string_literal: true

module Metronome
  module Models
    class AlertArchiveParams < Metronome::BaseModel
      # @!attribute id
      #   The Metronome ID of the alert
      #
      #   @return [String]
      required :id, String

      # @!attribute release_uniqueness_key
      #   If true, resets the uniqueness key on this alert so it can be re-used
      #
      #   @return [Boolean]
      optional :release_uniqueness_key, Metronome::BooleanModel

      # @!parse
      #   # @param id [String] The Metronome ID of the alert
      #   #
      #   # @param release_uniqueness_key [Boolean, nil] If true, resets the uniqueness key on this alert so it can be re-used
      #   #
      #   def initialize(id:, release_uniqueness_key: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
