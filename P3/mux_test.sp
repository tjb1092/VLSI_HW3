HW3 p3: Sizing of mux subckt

.include /home/baileytj/MOSFET_Models/IntroToVLSI/model_t36s.sp

.options scale=0.3u

.param vdd=5V
+      wp_in=4
+      wn_in=3
+      wp_mux=8
+      wn_mux=4

***************************************************
* Voltage Sources

vdd vdd 0 vdd
Vmin min 0 PWL(0 0V 100n 0V 100.1n 0V 200n 0V 200.1n 0V 300n 0V 300.1n 0V 400n 0V 400.1n 0V 
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

mnmos3 minbar min 0   0   nfet w=wn_in l=2
mpmos3 minbar min vdd vdd pfet w=wp_in l=2

cl3 minbar 0 5f

***************************************************
* PDN

mnmos4 fout abar v1 0 nfet w=wn_mux l=2
mnmos5 fout min  v1 0 nfet w=wn_mux l=2

mnmos6 v1 bbar   0 0 nfet w=wn_mux l=2
mnmos7 v1 minbar 0 0 nfet w=wn_mux l=2

***************************************************
* PUN

mpmos4 fout min  v2  vdd pfet w=wp_mux l=2
mpmos5 v2   abar vdd vdd pfet w=wp_mux l=2

mpmos6 fout minbar v3  vdd pfet w=wp_mux l=2
mpmos7 v3   bbar   vdd vdd pfet w=wp_mux l=2

cl fout 0 5f

***************************************************
* Simulation Options

.options post=2
.tran 1p 1700n


