# frozen_string_literal: true

module MetronomeSDK
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{MetronomeSDK::Internal}::OMIT>" }
      end
        .freeze
  end
end
