Bundler.setup
Bundler.require

class TestApp
  def self.call(env)
    result = EM::Synchrony.sync EventMachine::HttpRequest.new('http://google.com').get
    [200, {"Content-Type" => "text/html"}, [result.response]]
  end
end