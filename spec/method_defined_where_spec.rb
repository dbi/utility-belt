require File.join(File.dirname(__FILE__), "spec_helper")
require "utility_belt/method_defined_where"
describe "method_defined_where" do
  
  it "should be defined on Object" do
    Object.respond_to?(:method_defined_where).should be_true
  end

  it "should find a method on the class" do
    File.method_defined_where(:umask).should == File
  end
  
  it "should find a method on the immediate super class" do
    File.method_defined_where(:read).should == IO
  end

  it "should find a method up a couple levels" do
    File.method_defined_where(:method_defined_where).should == Object
  end

  it "should find a method in a mixin" do
    require 'base64'
    File.method_defined_where(:encode64).should == Base64
  end

  it "should return nil if method can't be found" do
    File.method_defined_where(:foo).should be_nil
  end

end
