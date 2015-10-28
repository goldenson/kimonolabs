require "kimonolabs/version"
require "httparty"

module Kimonolabs
  include HTTParty
  base_uri "kimonolabs.com"

  def self.dollars
  	get("/api/7acfik62?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["dollars"]
  end

  def self.brent
  	get("/api/c0y6dxlg?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["brent"]
  end

  def self.gold
  	get("/api/7acfik62?apikey=HrRWAYocaxgrwCa2iEDchWNAGTZw10Vu").parsed_response["results"]["collection1"].first["oncedor"]
  end

end
