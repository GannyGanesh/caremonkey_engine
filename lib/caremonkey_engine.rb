require "active_support/dependencies"
module CaremonkeyEngine
  # Our host application root path
  # We set this when the engine is initialized
 class Engine < Rails::Engine; end
  # Yield self on setup for nice config blocks
  def self.setup
    yield self
  end
end	
require "caremonkey_engine/engine"