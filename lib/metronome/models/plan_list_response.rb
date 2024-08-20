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
    end
  end
end
