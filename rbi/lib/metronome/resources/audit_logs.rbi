# typed: strong

module Metronome
  module Resources
    class AuditLogs
      sig do
        params(
          ending_before: Time,
          limit: Integer,
          next_page: String,
          resource_id: String,
          resource_type: String,
          sort: Symbol,
          starting_on: Time,
          request_options: Metronome::RequestOpts
        ).returns(Metronome::CursorPage[Metronome::Models::AuditLogListResponse])
      end
      def list(
        ending_before:,
        limit:,
        next_page:,
        resource_id:,
        resource_type:,
        sort:,
        starting_on:,
        request_options: {}
      )
      end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
