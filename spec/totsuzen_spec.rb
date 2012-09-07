# -*- coding:utf-8 -*-

require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Totsuzen do
  it { Totsuzen::VERSION.should eq '0.0.5' }

  describe "totsuzen method" do
    it 'make totsuzen in English' do
      "hoge".totsuzen.should == "＿人人人人＿
＞ hoge ＜
￣^Y^Y^Y^Y^￣"
    end

    it 'make totsuzen in Japanaes' do
      "こんまめ".totsuzen.should == "＿人人人人＿
＞ こんまめ ＜
￣^Y^Y^Y^Y^￣"
    end
  end

  describe "totsuzen! method" do
    it 'make totsuzen! in English' do
      result = "hoge"
      result.totsuzen!
      result.should == "＿人人人人＿
＞ hoge ＜
￣^Y^Y^Y^Y^￣"
    end

    it 'make totsuzen! in Japanes' do
      result = "こんまめ"
      result.totsuzen!
      result.should == "＿人人人人＿
＞ こんまめ ＜
￣^Y^Y^Y^Y^￣"
    end
  end
end
