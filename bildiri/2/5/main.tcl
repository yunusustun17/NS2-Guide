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
set val(nn)     60                         ;# number of mobilenodes
set val(rp)     AODV                       ;# routing protocol
set val(x)      2641                      ;# X dimension of topography
set val(y)      100                      ;# Y dimension of topography
set val(stop)   30.0                         ;# time of simulation end

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
#Create 60 nodes
set n0 [$ns node]
$n0 set X_ 75
$n0 set Y_ 461
$n0 set Z_ 0.0
$ns initial_node_pos $n0 20
set n1 [$ns node]
$n1 set X_ 179
$n1 set Y_ 660
$n1 set Z_ 0.0
$ns initial_node_pos $n1 20
set n2 [$ns node]
$n2 set X_ 330
$n2 set Y_ 839
$n2 set Z_ 0.0
$ns initial_node_pos $n2 20
set n3 [$ns node]
$n3 set X_ 179
$n3 set Y_ 265
$n3 set Z_ 0.0
$ns initial_node_pos $n3 20
set n4 [$ns node]
$n4 set X_ 287
$n4 set Y_ 92
$n4 set Z_ 0.0
$ns initial_node_pos $n4 20
set n5 [$ns node]
$n5 set X_ 516
$n5 set Y_ 57
$n5 set Z_ 0.0
$ns initial_node_pos $n5 20
set n6 [$ns node]
$n6 set X_ 663
$n6 set Y_ 239
$n6 set Z_ 0.0
$ns initial_node_pos $n6 20
set n7 [$ns node]
$n7 set X_ 799
$n7 set Y_ 59
$n7 set Z_ 0.0
$ns initial_node_pos $n7 20
set n8 [$ns node]
$n8 set X_ 1035
$n8 set Y_ 41
$n8 set Z_ 0.0
$ns initial_node_pos $n8 20
set n9 [$ns node]
$n9 set X_ 1148
$n9 set Y_ 240
$n9 set Z_ 0.0
$ns initial_node_pos $n9 20
set n10 [$ns node]
$n10 set X_ 1358
$n10 set Y_ 356
$n10 set Z_ 0.0
$ns initial_node_pos $n10 20
set n11 [$ns node]
$n11 set X_ 1558
$n11 set Y_ 233
$n11 set Z_ 0.0
$ns initial_node_pos $n11 20
set n12 [$ns node]
$n12 set X_ 1540
$n12 set Y_ 33
$n12 set Z_ 0.0
$ns initial_node_pos $n12 20
set n13 [$ns node]
$n13 set X_ 1771
$n13 set Y_ 265
$n13 set Z_ 0.0
$ns initial_node_pos $n13 20
set n14 [$ns node]
$n14 set X_ 1762
$n14 set Y_ 59
$n14 set Z_ 0.0
$ns initial_node_pos $n14 20
set n15 [$ns node]
$n15 set X_ 1333
$n15 set Y_ 28
$n15 set Z_ 0.0
$ns initial_node_pos $n15 20
set n16 [$ns node]
$n16 set X_ 1184
$n16 set Y_ 509
$n16 set Z_ 0.0
$ns initial_node_pos $n16 20
set n17 [$ns node]
$n17 set X_ 1367
$n17 set Y_ 650
$n17 set Z_ 0.0
$ns initial_node_pos $n17 20
set n18 [$ns node]
$n18 set X_ 1758
$n18 set Y_ 577
$n18 set Z_ 0.0
$ns initial_node_pos $n18 20
set n19 [$ns node]
$n19 set X_ 1779
$n19 set Y_ 843
$n19 set Z_ 0.0
$ns initial_node_pos $n19 20
set n20 [$ns node]
$n20 set X_ 945
$n20 set Y_ 831
$n20 set Z_ 0.0
$ns initial_node_pos $n20 20
set n21 [$ns node]
$n21 set X_ 545
$n21 set Y_ 854
$n21 set Z_ 0.0
$ns initial_node_pos $n21 20
set n22 [$ns node]
$n22 set X_ 516
$n22 set Y_ 547
$n22 set Z_ 0.0
$ns initial_node_pos $n22 20
set n23 [$ns node]
$n23 set X_ 872
$n23 set Y_ 513
$n23 set Z_ 0.0
$ns initial_node_pos $n23 20
set n24 [$ns node]
$n24 set X_ 877
$n24 set Y_ 724
$n24 set Z_ 0.0
$ns initial_node_pos $n24 20
set n25 [$ns node]
$n25 set X_ 1460
$n25 set Y_ 777
$n25 set Z_ 0.0
$ns initial_node_pos $n25 20
set n26 [$ns node]
$n26 set X_ 1637
$n26 set Y_ 546
$n26 set Z_ 0.0
$ns initial_node_pos $n26 20
set n27 [$ns node]
$n27 set X_ 997
$n27 set Y_ 473
$n27 set Z_ 0.0
$ns initial_node_pos $n27 20
set n28 [$ns node]
$n28 set X_ 691
$n28 set Y_ 290
$n28 set Z_ 0.0
$ns initial_node_pos $n28 20
set n29 [$ns node]
$n29 set X_ 408
$n29 set Y_ 462
$n29 set Z_ 0.0
$ns initial_node_pos $n29 20
set n30 [$ns node]
$n30 set X_ 404
$n30 set Y_ 682
$n30 set Z_ 0.0
$ns initial_node_pos $n30 20
set n31 [$ns node]
$n31 set X_ 763
$n31 set Y_ 797
$n31 set Z_ 0.0
$ns initial_node_pos $n31 20
set n32 [$ns node]
$n32 set X_ 757
$n32 set Y_ 591
$n32 set Z_ 0.0
$ns initial_node_pos $n32 20
set n33 [$ns node]
$n33 set X_ 358
$n33 set Y_ 301
$n33 set Z_ 0.0
$ns initial_node_pos $n33 20
set n34 [$ns node]
$n34 set X_ 787
$n34 set Y_ 398
$n34 set Z_ 0.0
$ns initial_node_pos $n34 20
set n35 [$ns node]
$n35 set X_ 1329
$n35 set Y_ 856
$n35 set Z_ 0.0
$ns initial_node_pos $n35 20
set n36 [$ns node]
$n36 set X_ 1059
$n36 set Y_ 795
$n36 set Z_ 0.0
$ns initial_node_pos $n36 20
set n37 [$ns node]
$n37 set X_ 1195
$n37 set Y_ 719
$n37 set Z_ 0.0
$ns initial_node_pos $n37 20
set n38 [$ns node]
$n38 set X_ 1628
$n38 set Y_ 864
$n38 set Z_ 0.0
$ns initial_node_pos $n38 20
set n39 [$ns node]
$n39 set X_ 1736
$n39 set Y_ 683
$n39 set Z_ 0.0
$ns initial_node_pos $n39 20
set n40 [$ns node]
$n40 set X_ 1474
$n40 set Y_ 516
$n40 set Z_ 0.0
$ns initial_node_pos $n40 20
set n41 [$ns node]
$n41 set X_ 1739
$n41 set Y_ 357
$n41 set Z_ 0.0
$ns initial_node_pos $n41 20
set n42 [$ns node]
$n42 set X_ 1035
$n42 set Y_ 278
$n42 set Z_ 0.0
$ns initial_node_pos $n42 20
set n43 [$ns node]
$n43 set X_ 571
$n43 set Y_ 342
$n43 set Z_ 0.0
$ns initial_node_pos $n43 20
set n52 [$ns node]
$n52 set X_ 1309
$n52 set Y_ 968
$n52 set Z_ 0.0
$ns initial_node_pos $n52 20
set n53 [$ns node]
$n53 set X_ 1207
$n53 set Y_ 868
$n53 set Z_ 0.0
$ns initial_node_pos $n53 20
set n54 [$ns node]
$n54 set X_ 1322
$n54 set Y_ 775
$n54 set Z_ 0.0
$ns initial_node_pos $n54 20
set n55 [$ns node]
$n55 set X_ 1457
$n55 set Y_ 875
$n55 set Z_ 0.0
$ns initial_node_pos $n55 20
set n56 [$ns node]
$n56 set X_ 537
$n56 set Y_ 929
$n56 set Z_ 0.0
$ns initial_node_pos $n56 20
set n57 [$ns node]
$n57 set X_ 465
$n57 set Y_ 828
$n57 set Z_ 0.0
$ns initial_node_pos $n57 20
set n58 [$ns node]
$n58 set X_ 552
$n58 set Y_ 772
$n58 set Z_ 0.0
$ns initial_node_pos $n58 20
set n59 [$ns node]
$n59 set X_ 641
$n59 set Y_ 881
$n59 set Z_ 0.0
$ns initial_node_pos $n59 20
set n60 [$ns node]
$n60 set X_ 1005
$n60 set Y_ 134
$n60 set Z_ 0.0
$ns initial_node_pos $n60 20
set n61 [$ns node]
$n61 set X_ 938
$n61 set Y_ -2
$n61 set Z_ 0.0
$ns initial_node_pos $n61 20
set n62 [$ns node]
$n62 set X_ 1067
$n62 set Y_ -35
$n62 set Z_ 0.0
$ns initial_node_pos $n62 20
set n63 [$ns node]
$n63 set X_ 1148
$n63 set Y_ 94
$n63 set Z_ 0.0
$ns initial_node_pos $n63 20
set n64 [$ns node]
$n64 set X_ 497
$n64 set Y_ 171
$n64 set Z_ 0.0
$ns initial_node_pos $n64 20
set n65 [$ns node]
$n65 set X_ 398
$n65 set Y_ 35
$n65 set Z_ 0.0
$ns initial_node_pos $n65 20
set n66 [$ns node]
$n66 set X_ 542
$n66 set Y_ -44
$n66 set Z_ 0.0
$ns initial_node_pos $n66 20
set n67 [$ns node]
$n67 set X_ 628
$n67 set Y_ 88
$n67 set Z_ 0.0
$ns initial_node_pos $n67 20


#===================================
#        SYBIL SETUP
#===================================
$ns at 0.0 "$n0 add-mark c9 orange circle"
$ns at 0.0 "$n0 label HEDEF"

$ns at 0.0 "$n14 add-mark c9 green circle"
$ns at 0.0 "$n14 label KAYNAK"

$ns at 0.0 "$n19 add-mark c9 green circle"
$ns at 0.0 "$n19 label KAYNAK"

$ns at 0.0 "$n40 add-mark c9 green circle"
$ns at 0.0 "$n40 label KAYNAK"

$ns at 0.0 "$n52 add-mark c9 red circle"
$ns at 0.0 "$n52 label SYBIL"
$ns at 0.0 "[$n52 set ragent_] malicious"

$ns at 0.0 "$n53 add-mark c9 blue circle"
$ns at 0.0 "$n53 label KOPYA"
$ns at 0.0 "[$n53 set ragent_] malicious"

$ns at 0.0 "$n54 add-mark c9 blue circle"
$ns at 0.0 "$n54 label KOPYA"
$ns at 0.0 "[$n54 set ragent_] malicious"

$ns at 0.0 "$n55 add-mark c9 blue circle"
$ns at 0.0 "$n55 label KOPYA"
$ns at 0.0 "[$n55 set ragent_] malicious"

$ns at 0.0 "$n56 add-mark c9 red circle"
$ns at 0.0 "$n56 label SYBIL"
$ns at 0.0 "[$n56 set ragent_] malicious"

$ns at 0.0 "$n57 add-mark c9 blue circle"
$ns at 0.0 "$n57 label KOPYA"
$ns at 0.0 "[$n57 set ragent_] malicious"

$ns at 0.0 "$n58 add-mark c9 blue circle"
$ns at 0.0 "$n58 label KOPYA"
$ns at 0.0 "[$n58 set ragent_] malicious"

$ns at 0.0 "$n59 add-mark c9 blue circle"
$ns at 0.0 "$n59 label KOPYA"
$ns at 0.0 "[$n59 set ragent_] malicious"

$ns at 0.0 "$n60 add-mark c9 red circle"
$ns at 0.0 "$n60 label SYBIL"
$ns at 0.0 "[$n60 set ragent_] malicious"

$ns at 0.0 "$n61 add-mark c9 blue circle"
$ns at 0.0 "$n61 label KOPYA"
$ns at 0.0 "[$n61 set ragent_] malicious"

$ns at 0.0 "$n62 add-mark c9 blue circle"
$ns at 0.0 "$n62 label KOPYA"
$ns at 0.0 "[$n62 set ragent_] malicious"

$ns at 0.0 "$n63 add-mark c9 blue circle"
$ns at 0.0 "$n63 label KOPYA"
$ns at 0.0 "[$n63 set ragent_] malicious"

$ns at 0.0 "$n64 add-mark c9 red circle"
$ns at 0.0 "$n64 label SYBIL"
$ns at 0.0 "[$n64 set ragent_] malicious"

$ns at 0.0 "$n65 add-mark c9 blue circle"
$ns at 0.0 "$n65 label KOPYA"
$ns at 0.0 "[$n65 set ragent_] malicious"

$ns at 0.0 "$n66 add-mark c9 blue circle"
$ns at 0.0 "$n66 label KOPYA"
$ns at 0.0 "[$n66 set ragent_] malicious"

$ns at 0.0 "$n67 add-mark c9 blue circle"
$ns at 0.0 "$n67 label KOPYA"
$ns at 0.0 "[$n67 set ragent_] malicious"


#===================================
#        Agents Definition        
#===================================
#Setup a UDP connection
set udp0 [new Agent/UDP]
$ns attach-agent $n40 $udp0
set null3 [new Agent/Null]
$ns attach-agent $n0 $null3
$ns connect $udp0 $null3
$udp0 set packetSize_ 1500

#Setup a UDP connection
set udp1 [new Agent/UDP]
$ns attach-agent $n19 $udp1
set null4 [new Agent/Null]
$ns attach-agent $n0 $null4
$ns connect $udp1 $null4
$udp1 set packetSize_ 1500

#Setup a UDP connection
set udp2 [new Agent/UDP]
$ns attach-agent $n14 $udp2
set null5 [new Agent/Null]
$ns attach-agent $n0 $null5
$ns connect $udp2 $null5
$udp2 set packetSize_ 1500


#===================================
#        Applications Definition        
#===================================
#Setup a CBR Application over UDP connection
set cbr0 [new Application/Traffic/CBR]
$cbr0 attach-agent $udp0
$cbr0 set packetSize_ 1000
$cbr0 set rate_ 0.1Mb
$cbr0 set random_ 
$ns at 1.0 "$cbr0 start"
$ns at 9.0 "$cbr0 stop"

#Setup a CBR Application over UDP connection
set cbr1 [new Application/Traffic/CBR]
$cbr1 attach-agent $udp1
$cbr1 set packetSize_ 1000
$cbr1 set rate_ 0.1Mb
$cbr1 set random_ 
$ns at 11.0 "$cbr1 start"
$ns at 19.0 "$cbr1 stop"

#Setup a CBR Application over UDP connection
set cbr2 [new Application/Traffic/CBR]
$cbr2 attach-agent $udp2
$cbr2 set packetSize_ 1000
$cbr2 set rate_ 0.1Mb
$cbr2 set random_ 
$ns at 21.0 "$cbr2 start"
$ns at 29.0 "$cbr2 stop"


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
    if {$i != 44 && $i != 45 && $i != 46 && $i != 47 && $i != 48 && $i != 49 && $i != 50 && $i != 51} {
        $ns at $val(stop) "\$n$i reset"        
    }
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
