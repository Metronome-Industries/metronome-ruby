# frozen_string_literal: true

module Metronome
  module Models
    class PlanListResponse < Metronome::BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] description
      #   @return [String]
      required :description, String

      # @!attribute [rw] name
      #   @return [String]
      required :name, String

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!parse
      #   # Create a new instance of PlanListResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id
      #   #   @option data [String] :description
      #   #   @option data [String] :name
      #   #   @option data [Hash, nil] :custom_fields
      #   def initialize(data = {}) = super
    end
  end
end
