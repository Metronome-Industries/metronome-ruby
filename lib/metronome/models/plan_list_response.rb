# frozen_string_literal: true

module Metronome
  module Models
    class PlanListResponse < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #
      #   @return [String]
      required :description, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute custom_fields
      #
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!parse
      #   # @param id [String]
      #   # @param description [String]
      #   # @param name [String]
      #   # @param custom_fields [Hash, nil]
      #   #
      #   def initialize(id:, description:, name:, custom_fields: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
