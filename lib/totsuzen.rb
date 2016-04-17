require "totsuzen/version"

String.class_eval do
  def exact_size
    self.each_char.map{|c| c.bytesize == 1 ? 1 : 2}.reduce(0, &:+)
  end

  def totsuzen
    len = (self.exact_size / 2.0).floor
    "＿" + ("人"*(len+2)) + "＿" + "\n" +
      "＞　" + self + "　＜\n" +
      "￣Y" + ("^Y"*len) + "￣"
  end

  def totsuzen!
    self.replace totsuzen
  end
end
