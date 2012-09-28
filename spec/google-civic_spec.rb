# -*- encoding: utf-8 -*-
require 'helper'

describe GoogleCivic do
  after do
    GoogleCivic.reset
  end

  describe ".respond_to?" do
    it "should be true if method exists" do
      GoogleCivic.respond_to?(:new, true).should be_true
    end
  end

  describe ".new" do
    it "should be a GoogleCivic::Client" do
      GoogleCivic.new.should be_a GoogleCivic::Client
    end
  end

  describe ".delegate" do
    pending it "should delegate missing methods to GoogleCivic::Client" do
    end
  end
end
