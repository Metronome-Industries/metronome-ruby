# frozen_string_literal: true

module Metronome
  # @private
  #
  class BasePage
    # rubocop:disable Lint/UnusedMethodArgument

    # @private
    #
    # @param client [Metronome::Client]
    # @param req [Hash{Symbol => Object}]
    # @param opts [Hash{Symbol => Object}]
    # @param headers [Hash{String => String}]
    # @param unwrapped [Object]
    def initialize(client:, req:, opts:, headers:, unwrapped:)
      @client = client
      @req = req
      @opts = opts
    end

    # @return [Boolean]
    def next_page? = (raise NotImplementedError)

    # @raise [Metronome::HTTP::Error]
    # @return [Metronome::Page]
    def next_page = (raise NotImplementedError)

    # @param blk [Proc]
    #
    # @yieldparam [Object]
    # @return [void]
    def auto_paging_each(&blk) = (raise NotImplementedError)

    # @return [Enumerator]
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # rubocop:enable Lint/UnusedMethodArgument
  end
end
