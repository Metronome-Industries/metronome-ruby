# typed: strong

module Metronome
  module Models
    module Customers
      class CommitListResponse < Metronome::BaseModel
        sig { returns(T::Array[Metronome::Models::Commit]) }
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig { params(data: T::Array[Metronome::Models::Commit], next_page: T.nilable(String)).void }
        def initialize(data:, next_page:); end

        sig { override.returns({data: T::Array[Metronome::Models::Commit], next_page: T.nilable(String)}) }
        def to_hash; end
      end
    end
  end
end
