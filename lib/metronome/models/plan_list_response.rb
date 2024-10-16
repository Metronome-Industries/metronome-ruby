# frozen_string_literal: true

module Metronome
  module Models
    class PlanListResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] description
      #   @return [String]
      required :description, String

      # @!attribute [rw] name_
      #   @return [String]
      required :name_, String

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # Create a new instance of PlanListResponse from a Hash of raw data.
      #
      # @overload initialize(id: nil, description: nil, name: nil, custom_fields: nil)
      # @param id [String]
      # @param description [String]
      # @param name [String]
      # @param custom_fields [Hash]
      def initialize(data = {})
        super
      end
    end
  end
end
