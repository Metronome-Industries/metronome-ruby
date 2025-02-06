# typed: strong

module Metronome
  module Models
    module Customers
      class NamedScheduleUpdateParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :schedule_name

        sig { returns(Time) }
        attr_accessor :starting_at

        sig { returns(T.anything) }
        attr_accessor :value

        sig { returns(T.nilable(Time)) }
        attr_reader :ending_before

        sig { params(ending_before: Time).void }
        attr_writer :ending_before

        sig do
          params(
            customer_id: String,
            schedule_name: String,
            starting_at: Time,
            value: T.anything,
            ending_before: Time,
            request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(
          customer_id:,
          schedule_name:,
          starting_at:,
          value:,
          ending_before: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
              schedule_name: String,
              starting_at: Time,
              value: T.anything,
              ending_before: Time,
              request_options: Metronome::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
