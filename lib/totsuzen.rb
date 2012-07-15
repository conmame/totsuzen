# -*- coding:utf-8 -*-
require "totsuzen/version"

String.class_eval do
  def totsuzen
    len = self.length
    "＿" + ("人"*len) + "＿" + "\n" +
      "＞ " + self + " ＜\n" +
      "￣^" + ("Y^"*len) + "￣"
  end

  def totsuzen!
    self.replace totsuzen
  end
end
puts "こんまめ".totsuzen
puts "hoge".totsuzen