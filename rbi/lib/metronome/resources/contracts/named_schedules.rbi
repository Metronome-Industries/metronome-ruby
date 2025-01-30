# typed: strong

module Metronome
  module Resources
    class Contracts
      class NamedSchedules
        sig do
          params(
            params: T.any(
              Metronome::Models::Contracts::NamedScheduleRetrieveParams,
              T::Hash[Symbol, T.anything]
            ),
            rate_card_id: String,
            schedule_name: String,
            covering_date: Time,
            request_options: Metronome::RequestOpts
          ).returns(Metronome::Models::Contracts::NamedScheduleRetrieveResponse)
        end
        def retrieve(params, rate_card_id:, schedule_name:, covering_date:, request_options: {}); end

        sig do
          params(
            params: T.any(
              Metronome::Models::Contracts::NamedScheduleUpdateParams,
              T::Hash[Symbol, T.anything]
            ),
            rate_card_id: String,
            schedule_name: String,
            starting_at: Time,
            value: T.anything,
            ending_before: Time,
            request_options: Metronome::RequestOpts
          ).returns(NilClass)
        end
        def update(
          params,
          rate_card_id:,
          schedule_name:,
          starting_at:,
          value:,
          ending_before:,
          request_options: {}
        )
        end

        sig { params(client: Metronome::Client).void }
        def initialize(client:); end
      end
    end
  end
end
