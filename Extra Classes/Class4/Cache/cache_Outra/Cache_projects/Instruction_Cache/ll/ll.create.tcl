cd C:/Users/jorgepereira/Desktop/Cache_projects/Instruction_Cache/ll
if { [xload new ll.xmp] != 0 } {
  exit -1
}
xset arch virtex5
xset dev xc5vlx20t
xset package ff323
xset speedgrade -2
xset simulator isim
if { [xset hier sub] != 0 } {
  exit -1
}
set bMisMatch false
set xpsArch [xget arch]
if { ! [ string equal -nocase $xpsArch "virtex5" ] } {
   set bMisMatch true
}
set xpsDev [xget dev]
if { ! [ string equal -nocase $xpsDev "xc5vlx20t" ] } {
   set bMisMatch true
}
set xpsPkg [xget package]
if { ! [ string equal -nocase $xpsPkg "ff323" ] } {
   set bMisMatch true
}
set xpsSpd [xget speedgrade]
if { ! [ string equal -nocase $xpsSpd "-2" ] } {
   set bMisMatch true
}
if { $bMisMatch == true } {
   puts "Settings Mismatch:"
   puts "Current Project:"
   puts "	Family: virtex5"
   puts "	Device: xc5vlx20t"
   puts "	Package: ff323"
   puts "	Speed: -2"
   puts "XPS File: "
   puts "	Family: $xpsArch"
   puts "	Device: $xpsDev"
   puts "	Package: $xpsPkg"
   puts "	Speed: $xpsSpd"
   exit 11
}
xset hdl verilog
xset intstyle ise
save proj
exit
