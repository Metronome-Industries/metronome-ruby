# typed: strong

module Metronome
  module Models
    module Customers
      class NamedScheduleRetrieveResponse < Metronome::BaseModel
        Shape = T.type_alias do
          {data: T::Array[Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data]}
        end

        sig { returns(T::Array[Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data]) }
        attr_accessor :data

        sig { params(data: T::Array[Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data]).void }
        def initialize(data:); end

        sig { returns(Metronome::Models::Customers::NamedScheduleRetrieveResponse::Shape) }
        def to_h; end

        class Data < Metronome::BaseModel
          Shape = T.type_alias { {starting_at: Time, value: T.anything, ending_before: Time} }

          sig { returns(Time) }
          attr_accessor :starting_at

          sig { returns(T.anything) }
          attr_accessor :value

          sig { returns(T.nilable(Time)) }
          attr_reader :ending_before

          sig { params(ending_before: Time).void }
          attr_writer :ending_before

          sig { params(starting_at: Time, value: T.anything, ending_before: Time).void }
          def initialize(starting_at:, value:, ending_before: nil); end

          sig { returns(Metronome::Models::Customers::NamedScheduleRetrieveResponse::Data::Shape) }
          def to_h; end
        end
      end
    end
  end
end
