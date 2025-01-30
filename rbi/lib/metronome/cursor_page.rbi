# typed: strong

module Metronome
  class CursorPage
    include Metronome::BasePage

    Elem = type_member

    sig { returns(String) }
    attr_accessor :next_page_

    sig { returns(T::Array[Elem]) }
    attr_accessor :data

    sig do
      params(
        client: Metronome::BaseClient,
        req: Metronome::BaseClient::RequestShape,
        headers: T::Hash[String, String],
        unwrapped: T::Hash[Symbol, T.anything]
      ).void
    end
    def initialize(client:, req:, headers:, unwrapped:); end
  end
end
