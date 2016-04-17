require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Totsuzen do
  it { expect(Totsuzen::VERSION).to eq '0.0.5' }

  describe "totsuzen method" do
    it 'make totsuzen in English' do
      t = <<-EOT
＿人人人人＿
＞　hoge　＜
￣Y^Y^Y￣
      EOT
      expect("hoge".totsuzen).to eq t.chomp
    end

    it 'make totsuzen in Japanaes' do
      t = <<-EOT
＿人人人人人人＿
＞　こんまめ　＜
￣Y^Y^Y^Y^Y￣
      EOT
      expect("こんまめ".totsuzen).to eq t.chomp
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
      expect(result).to eq t.chomp
    end

    it 'make totsuzen! in Japanes' do
      result = "こんまめ"
      t = <<-EOT
＿人人人人人人＿
＞　こんまめ　＜
￣Y^Y^Y^Y^Y￣
      EOT
      result.totsuzen!
      expect(result).to eq t.chomp
    end
  end
end
