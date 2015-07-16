require "hydra_shield/engine"
require "hydra_shield/railtie"

module HydraShield
  autoload :ResourceShield, "hydra_shield/resource_shield"
  autoload :CollectionShield, "hydra_shield/collection_shield"

  autoload :Helpers, "hydra_shield/helpers"

  autoload :EntryPoint, "hydra_shield/entry_point"
  autoload :EntryPointShield, "hydra_shield/entry_point_shield"

  autoload :Vocab, "hydra_shield/vocab"
  autoload :VocabShield, "hydra_shield/vocab_shield"

  def self.shields
    ResourceShield.descendants.select { |s| s.descendants.empty? }
  end
end

