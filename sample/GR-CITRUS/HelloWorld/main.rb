#!mruby
usb = Serial.new(0)
k = 1
10.times do |n|
    led k
    k = 1 - k
    usb.println "#{k.to_s}:Hello World! at #{System.getMrbPath}"
    
    delay 500
end
led 0
