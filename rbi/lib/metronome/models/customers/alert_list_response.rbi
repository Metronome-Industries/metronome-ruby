# typed: strong

module Metronome
  module Models
    module Customers
      class AlertListResponse < Metronome::BaseModel
        sig { returns(T::Array[Metronome::Models::Customers::CustomerAlert]) }
        def data
        end

        sig do
          params(_: T::Array[Metronome::Models::Customers::CustomerAlert])
            .returns(T::Array[Metronome::Models::Customers::CustomerAlert])
        end
        def data=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def next_page=(_)
        end

        sig { params(data: T::Array[Metronome::Models::Customers::CustomerAlert], next_page: T.nilable(String)).void }
        def initialize(data:, next_page:)
        end

        sig do
          override
            .returns({data: T::Array[Metronome::Models::Customers::CustomerAlert], next_page: T.nilable(String)})
        end
        def to_hash
        end
      end
    end
  end
end
