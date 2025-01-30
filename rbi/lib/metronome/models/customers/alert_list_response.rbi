# typed: strong

module Metronome
  module Models
    module Customers
      class AlertListResponse < Metronome::BaseModel
        Shape = T.type_alias do
          {data: T::Array[Metronome::Models::Customers::CustomerAlert], next_page: T.nilable(String)}
        end

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
        def initialize(data:, next_page:); end

        sig { returns(Metronome::Models::Customers::AlertListResponse::Shape) }
        def to_h; end
      end
    end
  end
end
