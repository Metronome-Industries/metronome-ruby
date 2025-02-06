# typed: strong

module Metronome
  module Models
    module Customers
      class NamedScheduleRetrieveResponse < Metronome::BaseModel
        sig { returns(T::Array[Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data]) }
        attr_accessor :data

        sig { params(data: T::Array[Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data]).void }
        def initialize(data:)
        end

        sig do
          override.returns({data: T::Array[Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data]})
        end
        def to_hash
        end

        class Data < Metronome::BaseModel
          sig { returns(Time) }
          attr_accessor :starting_at

          sig { returns(T.anything) }
          attr_accessor :value

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig { params(starting_at: Time, value: T.anything, ending_before: Time).void }
          def initialize(starting_at:, value:, ending_before: nil)
          end

          sig { override.returns({starting_at: Time, value: T.anything, ending_before: Time}) }
          def to_hash
          end
        end
      end
    end
  end
end
