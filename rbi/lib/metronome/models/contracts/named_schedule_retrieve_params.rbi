# typed: strong

module Metronome
  module Models
    module Contracts
      class NamedScheduleRetrieveParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :rate_card_id

        sig { returns(String) }
        attr_accessor :schedule_name

        sig { returns(T.nilable(Time)) }
        attr_reader :covering_date

        sig { params(covering_date: Time).void }
        attr_writer :covering_date

        sig do
          params(
            rate_card_id: String,
            schedule_name: String,
            covering_date: Time,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(rate_card_id:, schedule_name:, covering_date: nil, request_options: {}); end

        sig do
          override.returns(
            {
              rate_card_id: String,
              schedule_name: String,
              covering_date: Time,
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
