# typed: strong

module Metronome
  module Models
    module Customers
      class CreditListResponse < Metronome::BaseModel
        sig { returns(T::Array[Metronome::Models::Credit]) }
        def data
        end

        sig { params(_: T::Array[Metronome::Models::Credit]).returns(T::Array[Metronome::Models::Credit]) }
        def data=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def next_page=(_)
        end

        sig { params(data: T::Array[Metronome::Models::Credit], next_page: T.nilable(String)).void }
        def initialize(data:, next_page:)
        end

        sig { override.returns({data: T::Array[Metronome::Models::Credit], next_page: T.nilable(String)}) }
        def to_hash
        end
      end
    end
  end
end
