# frozen_string_literal: true

module Metronome
  module Models
    class AuditLogListResponse < BaseModel
      # @!attribute [rw] id
      #   @return [String]
      required :id, String

      # @!attribute [rw] timestamp
      #   @return [String]
      required :timestamp, String

      # @!attribute [rw] action
      #   @return [String]
      optional :action, String

      # @!attribute [rw] actor
      #   @return [Metronome::Models::AuditLogListResponse::Actor]
      optional :actor, -> { Metronome::Models::AuditLogListResponse::Actor }

      # @!attribute [rw] description
      #   @return [String]
      optional :description, String

      # @!attribute [rw] resource_id
      #   @return [String]
      optional :resource_id, String

      # @!attribute [rw] resource_type
      #   @return [String]
      optional :resource_type, String

      # @!attribute [rw] status
      #   @return [Symbol]
      optional :status, Metronome::Enum.new(:success, :failure, :pending)

      class Actor < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] email
        #   @return [String]
        optional :email, String
      end
    end
  end
end
