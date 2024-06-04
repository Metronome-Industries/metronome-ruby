# frozen_string_literal: true

module Metronome
  module Models
    class AuditLogListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::AuditLogListResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::AuditLogListResponse::Data })

      # @!attribute [rw] next_page
      #   The next_page parameter is always returned to support ongoing log retrieval. It enables continuous querying, even when some requests return no new data. Save the next_page token from each response and use it for future requests to ensure no logs are missed. This setup is ideal for regular updates via automated processes, like cron jobs, to fetch logs continuously as they become available. When you receive an empty data array, it indicates a temporary absence of new logs, but subsequent requests might return new data.
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
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
        #   @return [Metronome::Models::AuditLogListResponse::Data::Actor]
        optional :actor, -> { Metronome::Models::AuditLogListResponse::Data::Actor }

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
end
