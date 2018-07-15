require "csv"
require 'rubygems'  
require 'active_record'  

module M1
  big_buf = Array.new
  CSV.foreach("abc.csv") do |row|
    buf = Array.new
    buf << row[0]
    buf << row[3]
    buf << row[7]
    buf << row[11]
    buf << row[15]
    buf << row[16]
    big_buf << buf
  end
#  aes = Aes.find(:all
#  p @pictures
#  p big_buf[3][3]
  big_buf.each{|buf|
#    p buf
    if buf[3] != nil
      p buf[3]
    end
  }
end



class C < ActiveRecord::Base
  include M1
  p 1
#  p big_buf[2][4]

  @pictures = Picture.all 
  p @pictures
end

c = C.new

#module M1
#  def a(a,b)
#    x = a+b
#    p x, "\n";
#  end
#end

#class C
#  include M1
#end

#c = C.new
#c.a(1,2)

