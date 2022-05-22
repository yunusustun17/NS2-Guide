# This script is created by NSG2 beta1
# <http://wushoupong.googlepages.com/nsg>

#===================================
#     Simulation parameters setup
#===================================
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     48                         ;# number of mobilenodes
set val(rp)     AODV                       ;# routing protocol
set val(x)      1827                      ;# X dimension of topography
set val(y)      942                      ;# Y dimension of topography
set val(stop)   10.0                         ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns [new Simulator]

#Setup topography object
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

#Open the NS trace file
set tracefile [open trace.tr w]
$ns trace-all $tracefile

#Open the NAM trace file
set namfile [open nam.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
#$ns use-newtrace
set chan [new $val(chan)];#Create wireless channel

#===================================
#     Mobile node parameter setup
#===================================
$ns node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON

#===================================
#        Nodes Definition        
#===================================
#Create 48 nodes
set n0 [$ns node]
$n0 set X_ 287
$n0 set Y_ 391
$n0 set Z_ 0.0
$ns initial_node_pos $n0 20
set n1 [$ns node]
$n1 set X_ 1410
$n1 set Y_ 397
$n1 set Z_ 0.0
$ns initial_node_pos $n1 20
set n2 [$ns node]
$n2 set X_ 1306
$n2 set Y_ 545
$n2 set Z_ 0.0
$ns initial_node_pos $n2 20
set n3 [$ns node]
$n3 set X_ 391
$n3 set Y_ 543
$n3 set Z_ 0.0
$ns initial_node_pos $n3 20
set n4 [$ns node]
$n4 set X_ 492
$n4 set Y_ 617
$n4 set Z_ 0.0
$ns initial_node_pos $n4 20
set n5 [$ns node]
$n5 set X_ 1185
$n5 set Y_ 612
$n5 set Z_ 0.0
$ns initial_node_pos $n5 20
set n6 [$ns node]
$n6 set X_ 1075
$n6 set Y_ 678
$n6 set Z_ 0.0
$ns initial_node_pos $n6 20
set n7 [$ns node]
$n7 set X_ 611
$n7 set Y_ 700
$n7 set Z_ 0.0
$ns initial_node_pos $n7 20
set n8 [$ns node]
$n8 set X_ 841
$n8 set Y_ 720
$n8 set Z_ 0.0
$ns initial_node_pos $n8 20
set n9 [$ns node]
$n9 set X_ 744
$n9 set Y_ 779
$n9 set Z_ 0.0
$ns initial_node_pos $n9 20
set n10 [$ns node]
$n10 set X_ 959
$n10 set Y_ 791
$n10 set Z_ 0.0
$ns initial_node_pos $n10 20
set n11 [$ns node]
$n11 set X_ 757
$n11 set Y_ 619
$n11 set Z_ 0.0
$ns initial_node_pos $n11 20
set n12 [$ns node]
$n12 set X_ 958
$n12 set Y_ 619
$n12 set Z_ 0.0
$ns initial_node_pos $n12 20
set n13 [$ns node]
$n13 set X_ 567
$n13 set Y_ 586
$n13 set Z_ 0.0
$ns initial_node_pos $n13 20
set n14 [$ns node]
$n14 set X_ 414
$n14 set Y_ 725
$n14 set Z_ 0.0
$ns initial_node_pos $n14 20
set n15 [$ns node]
$n15 set X_ 1129
$n15 set Y_ 762
$n15 set Z_ 0.0
$ns initial_node_pos $n15 20
set n16 [$ns node]
$n16 set X_ 1280
$n16 set Y_ 692
$n16 set Z_ 0.0
$ns initial_node_pos $n16 20
set n17 [$ns node]
$n17 set X_ 1486
$n17 set Y_ 668
$n17 set Z_ 0.0
$ns initial_node_pos $n17 20
set n18 [$ns node]
$n18 set X_ 1640
$n18 set Y_ 637
$n18 set Z_ 0.0
$ns initial_node_pos $n18 20
set n19 [$ns node]
$n19 set X_ 1574
$n19 set Y_ 524
$n19 set Z_ 0.0
$ns initial_node_pos $n19 20
set n20 [$ns node]
$n20 set X_ 1646
$n20 set Y_ 739
$n20 set Z_ 0.0
$ns initial_node_pos $n20 20
set n21 [$ns node]
$n21 set X_ 1533
$n21 set Y_ 804
$n21 set Z_ 0.0
$ns initial_node_pos $n21 20
set n22 [$ns node]
$n22 set X_ 354
$n22 set Y_ 598
$n22 set Z_ 0.0
$ns initial_node_pos $n22 20
set n23 [$ns node]
$n23 set X_ 207
$n23 set Y_ 657
$n23 set Z_ 0.0
$ns initial_node_pos $n23 20
set n24 [$ns node]
$n24 set X_ 156
$n24 set Y_ 546
$n24 set Z_ 0.0
$ns initial_node_pos $n24 20
set n25 [$ns node]
$n25 set X_ 61
$n25 set Y_ 613
$n25 set Z_ 0.0
$ns initial_node_pos $n25 20
set n26 [$ns node]
$n26 set X_ 138
$n26 set Y_ 775
$n26 set Z_ 0.0
$ns initial_node_pos $n26 20
set n27 [$ns node]
$n27 set X_ 324
$n27 set Y_ 828
$n27 set Z_ 0.0
$ns initial_node_pos $n27 20
set n28 [$ns node]
$n28 set X_ 582
$n28 set Y_ 842
$n28 set Z_ 0.0
$ns initial_node_pos $n28 20
set n29 [$ns node]
$n29 set X_ 1175
$n29 set Y_ 837
$n29 set Z_ 0.0
$ns initial_node_pos $n29 20
set n30 [$ns node]
$n30 set X_ 1379
$n30 set Y_ 842
$n30 set Z_ 0.0
$ns initial_node_pos $n30 20
set n31 [$ns node]
$n31 set X_ 1727
$n31 set Y_ 439
$n31 set Z_ 0.0
$ns initial_node_pos $n31 20
set n32 [$ns node]
$n32 set X_ 54
$n32 set Y_ 429
$n32 set Z_ 0.0
$ns initial_node_pos $n32 20
set n33 [$ns node]
$n33 set X_ 1645
$n33 set Y_ 377
$n33 set Z_ 0.0
$ns initial_node_pos $n33 20
set n34 [$ns node]
$n34 set X_ 1194
$n34 set Y_ 306
$n34 set Z_ 0.0
$ns initial_node_pos $n34 20
set n35 [$ns node]
$n35 set X_ 954
$n35 set Y_ 306
$n35 set Z_ 0.0
$ns initial_node_pos $n35 20
set n36 [$ns node]
$n36 set X_ 713
$n36 set Y_ 308
$n36 set Z_ 0.0
$ns initial_node_pos $n36 20
set n37 [$ns node]
$n37 set X_ 495
$n37 set Y_ 301
$n37 set Z_ 0.0
$ns initial_node_pos $n37 20
set n38 [$ns node]
$n38 set X_ 1244
$n38 set Y_ 243
$n38 set Z_ 0.0
$ns initial_node_pos $n38 20
set n39 [$ns node]
$n39 set X_ 1003
$n39 set Y_ 241
$n39 set Z_ 0.0
$ns initial_node_pos $n39 20
set n40 [$ns node]
$n40 set X_ 772
$n40 set Y_ 251
$n40 set Z_ 0.0
$ns initial_node_pos $n40 20
set n41 [$ns node]
$n41 set X_ 535
$n41 set Y_ 250
$n41 set Z_ 0.0
$ns initial_node_pos $n41 20
set n42 [$ns node]
$n42 set X_ 306
$n42 set Y_ 253
$n42 set Z_ 0.0
$ns initial_node_pos $n42 20
set n43 [$ns node]
$n43 set X_ 1272
$n43 set Y_ 207
$n43 set Z_ 0.0
$ns initial_node_pos $n43 20
set n44 [$ns node]
$n44 set X_ 1047
$n44 set Y_ 193
$n44 set Z_ 0.0
$ns initial_node_pos $n44 20
set n45 [$ns node]
$n45 set X_ 810
$n45 set Y_ 194
$n45 set Z_ 0.0
$ns initial_node_pos $n45 20
set n46 [$ns node]
$n46 set X_ 575
$n46 set Y_ 202
$n46 set Z_ 0.0
$ns initial_node_pos $n46 20
set n47 [$ns node]
$n47 set X_ 413
$n47 set Y_ 199
$n47 set Z_ 0.0
$ns initial_node_pos $n47 20

#===================================
#        SYBIL SETUP
#===================================
$ns at 0.0 "$n0 add-mark c9 orange circle"
$ns at 0.0 "$n0 label HEDEF"

$ns at 0.0 "$n1 add-mark c9 green circle"
$ns at 0.0 "$n1 label KAYNAK"

$ns at 0.0 "$n34 add-mark c9 red circle"
$ns at 0.0 "$n34 label SYBIL"

$ns at 0.0 "$n35 add-mark c9 blue circle"
$ns at 0.0 "$n35 label KOPYA"

$ns at 0.0 "$n36 add-mark c9 blue circle"
$ns at 0.0 "$n36 label KOPYA"

$ns at 0.0 "$n37 add-mark c9 blue circle"
$ns at 0.0 "$n37 label KOPYA"
$ns at 0.0 "[$n37 set ragent_] malicious"

$ns at 0.0 "$n38 add-mark c9 blue circle"
$ns at 0.0 "$n38 label KOPYA"

$ns at 0.0 "$n39 add-mark c9 blue circle"
$ns at 0.0 "$n39 label KOPYA"

$ns at 0.0 "$n40 add-mark c9 blue circle"
$ns at 0.0 "$n40 label KOPYA"

$ns at 0.0 "$n41 add-mark c9 blue circle"
$ns at 0.0 "$n41 label KOPYA"

$ns at 0.0 "$n42 add-mark c9 blue circle"
$ns at 0.0 "$n42 label KOPYA"
$ns at 0.0 "[$n42 set ragent_] malicious"

$ns at 0.0 "$n43 add-mark c9 blue circle"
$ns at 0.0 "$n43 label KOPYA"

$ns at 0.0 "$n44 add-mark c9 blue circle"
$ns at 0.0 "$n44 label KOPYA"

$ns at 0.0 "$n45 add-mark c9 blue circle"
$ns at 0.0 "$n45 label KOPYA"

$ns at 0.0 "$n46 add-mark c9 blue circle"
$ns at 0.0 "$n46 label KOPYA"

$ns at 0.0 "$n47 add-mark c9 blue circle"
$ns at 0.0 "$n47 label KOPYA"
$ns at 0.0 "[$n47 set ragent_] malicious"

#===================================
#        Agents Definition        
#===================================
#Setup a UDP connection
set udp2 [new Agent/UDP]
$ns attach-agent $n1 $udp2
set null3 [new Agent/Null]
$ns attach-agent $n0 $null3
$ns connect $udp2 $null3
$udp2 set packetSize_ 1500


#===================================
#        Applications Definition        
#===================================
#Setup a CBR Application over UDP connection
set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp2
$cbr1 set packetSize_ 1000
$cbr1 set rate_ 0.1Mb
$cbr1 set random_ null
$ns at 1.0 "$cbr1 start"
$ns at 9.0 "$cbr1 stop"


#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam nam.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$n$i reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
