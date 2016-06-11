# -*- coding:utf-8 -*-

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Totsuzen do
  it { Totsuzen::VERSION.should eq '0.0.5' }

  describe "totsuzen method" do
    it 'make totsuzen in English' do
      t = <<-EOT
＿人人人人＿
＞　hoge　＜
￣Y^Y^Y￣
      EOT
      "hoge".totsuzen.should == t.chomp
    end

    it 'make totsuzen in Japanaes' do
      t = <<-EOT
＿人人人人人人＿
＞　こんまめ　＜
￣Y^Y^Y^Y^Y￣
      EOT
      "こんまめ".totsuzen.should == t.chomp
    end
  end

  describe "totsuzen! method" do
    it 'make totsuzen! in English' do
      result = "hoge"
      t = <<-EOT
＿人人人人＿
＞　hoge　＜
￣Y^Y^Y￣
      EOT
      result.totsuzen!
      result.should == t.chomp
    end

    it 'make totsuzen! in Japanes' do
      result = "こんまめ"
      t = <<-EOT
＿人人人人人人＿
＞　こんまめ　＜
￣Y^Y^Y^Y^Y￣
      EOT
      result.totsuzen!
      result.should == t.chomp
    end
  end
end
