HW3 p3: Sizing of mux w/ xor selector subckt

.include /home/baileytj/MOSFET_Models/IntroToVLSI/model_t36s.sp

.options scale=0.3u

.param vdd=5V
+      wp_in=4
+      wn_in=3
+      wp=7
+      wn=5

***************************************************
* Voltage Sources

vdd vdd 0 vdd
Vpin pin 0 PWL(0 0V 100n 0V 100.1n 0V 200n 0V 200.1n 0V 300n 0V 300.1n 0V 400n 0V 400.1n 0V 
+ 500n 0V 500.1n 0V 600n 0V 600.1n 0V 700n 0V 700.1n 0V 800n 0V 800.1n 5V 900n 5V 900.1n 5V 
+ 1000n 5V 1000.1n 5V 1100n 5V 1100.1n 5V 1200n 5V 1200.1n 5V 1300n 5V 1300.1n 5V 1400n 5V 1400.1n 5V 
+ 1500n 5V 1500.1n 5V 1600n 5V 1600.1n 5V)

vA a 0 PWL(0 0V 100n 0V 100.1n 0V 200n 0V 200.1n 0V 300n 0V 300.1n 0V 400n 0V 400.1n 5V
+ 500n 5V 500.1n 5V 600n 5V 600.1n 5V 700n 5V 700.1n 5V 800n 5V 800.1n 0V 900n 0V 900.1n 0V 
+ 1000n 0V 1000.1n 0V 1100n 0V 1100.1n 0V 1200n 0V 1200.1n 5V 1300n 5V 1300.1n 5V 1400n 5V 1400.1n 5V
+ 1500n 5V 1500.1n 5V 1600n 5V 1600.1n 0V)

VB b 0 PWL(0 0V 100n 0V 100.1n 0V 200n 0V 200.1n 5V 300n 5V 300.1n 5V 400n 5V 400.1n 0V
+ 500n 0V 500.1n 0V 600n 0V 600.1n 5V 700n 5V 700.1n 5V 800n 5V 800.1n 0V 900n 0V 900.1n 0V
+ 1000n 0V 1000.1n 5V 1100n 5V 1100.1n 5V 1200n 5V 1200.1n 0V 1300n 0V 1300.1n 0V 1400n 0V 1400.1n 5V
+ 1500n 5V 1500.1n 5V 1600n 5V 1600.1n 5V)

***************************************************
***************************************************
* Main Ckt

***************************************************
* Inverters

mnmos1 abar a 0   0   nfet w=wn_in l=2
mpmos1 abar a vdd vdd pfet w=wp_in l=2

cl1 abar 0 5f

mnmos2 bbar b 0   0   nfet w=wn_in l=2
mpmos2 bbar b vdd vdd pfet w=wp_in l=2

cl2 bbar 0 5f

mnmos3 pinbar pin 0   0   nfet w=wn_in l=2
mpmos3 pinbar pin vdd vdd pfet w=wp_in l=2

cl3 pinbar 0 5f

***************************************************
* PDN

mnmos4 pout pinbar v3 0 nfet w=wn l=2

mnmos5 pout abar v1 0 nfet w=wn l=2
mnmos6 v1   b    v3 0 nfet w=wn l=2

mnmos7 pout a    v2 0 nfet w=wn l=2
mnmos8 v2   bbar v3 0 nfet w=wn l=2


mnmos9 v3 pin 0 0 nfet w=wn l=2

mnmos10 v3 a    v4 0 nfet w=wn l=2
mnmos11 v3 bbar v4 0 nfet w=wn l=2

mnmos12 v4 abar 0 0 nfet w=wn l=2
mnmos13 v4 b    0 0 nfet w=wn l=2

***************************************************
* PUN

mpmos4 pout pin v5 pfet w=wp l=2

mpmos5 v5 a    v7   vdd pfet w=wp l=2
mpmos6 v7 bbar vdd  vdd pfet w=wp l=2

mpmos7 v5 abar v8  vdd pfet w=wp l=2
mpmos8 v8 b    vdd vdd pfet w=wp l=2


mpmos9  pout pinbar v6 vdd pfet w=wp l=2

mpmos10 v6 a    v9 vdd pfet w=wp l=2
mpmos11 v6 bbar v9 vdd pfet w=wp l=2

mpmos12 v9 abar vdd vdd pfet w=wp l=2
mpmos13 v9 b    vdd vdd pfet w=wp l=2

cl pout 0 10f

***************************************************
* Simulation Options

.options post=2
.tran 1p 1700n





