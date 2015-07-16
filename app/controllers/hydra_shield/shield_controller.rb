module HydraShield
  class ShieldController < ApplicationController

    skip_before_action :require_authentication

    def entry_point
      entry_point = HydraShield::EntryPoint.new( { } )
      shield entry_point: entry_point, with: HydraShield::EntryPointShield
    end

    def contexts
      contexts = HydraShield.contexts
      shield contexts: contexts, with: HydraShield::EntryPointShield
    end

    def context
      context = HydraShield.type(params[:type])
      render json: context
    end

    def vocab
      vocab = HydraShield::Vocab.new(HydraShield.shields)
      shield vocab: vocab, with: HydraShield::VocabShield
    end

  end
end
