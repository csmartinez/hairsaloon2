require("rspec")
require("pg")
require("stylist")
require("client")

DB = PG.connect({:dbname => "hairsaloontest"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM stylists *;")
    DB.exec("DELETE FROM clients *;")
  end
end
