# typed: strong

module Metronome
  module Models
    module Customers
      class AlertListResponse < Metronome::BaseModel
        sig { returns(T::Array[Metronome::Models::Customers::CustomerAlert]) }
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data: T::Array[Metronome::Models::Customers::CustomerAlert],
            next_page: T.nilable(String)
          ).void
        end
        def initialize(data:, next_page:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Metronome::Models::Customers::CustomerAlert],
              next_page: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
