# typed: strong

module Metronome
  class CursorPage
    include Metronome::BasePage

    Elem = type_member

    sig { returns(String) }
    def next_page_
    end

    sig { params(_: String).returns(String) }
    def next_page_=(_)
    end

    sig { returns(T::Array[Elem]) }
    def data
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def data=(_)
    end

    sig do
      params(
        client: Metronome::BaseClient,
        req: Metronome::BaseClient::RequestComponentsShape,
        headers: T::Hash[String, String],
        unwrapped: T::Hash[Symbol, T.anything]
      )
        .void
    end
    def initialize(client:, req:, headers:, unwrapped:)
    end
  end
end
