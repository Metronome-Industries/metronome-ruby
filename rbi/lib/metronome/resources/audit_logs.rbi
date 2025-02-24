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
          request_options: T.nilable(T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Metronome::CursorPage[Metronome::Models::AuditLogListResponse])
      end
      def list(
        ending_before: nil,
        limit: nil,
        next_page: nil,
        resource_id: nil,
        resource_type: nil,
        sort: nil,
        starting_on: nil,
        request_options: {}
      )
      end

      sig { params(client: Metronome::Client).void }
      def initialize(client:)
      end
    end
  end
end
