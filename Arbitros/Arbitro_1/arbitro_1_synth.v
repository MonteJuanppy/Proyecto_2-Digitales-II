/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "arbitro_1_synth.v:6" *)
module arbitro_1_synth(Pops, Push, clk, FIFO_empty, Almost_full, dest);
  (* src = "arbitro_1_synth.v:18" *)
  wire [3:0] _000_;
  (* src = "arbitro_1_synth.v:18" *)
  wire [3:0] _001_;
  (* src = "arbitro_1_synth.v:18" *)
  wire [3:0] _002_;
  (* src = "arbitro_1_synth.v:44" *)
  (* unused_bits = "4" *)
  wire [31:0] _003_;
  wire [1:0] _004_;
  wire [1:0] _005_;
  wire [15:0] _006_;
  wire [7:0] _007_;
  wire [15:0] _008_;
  wire [7:0] _009_;
  wire [15:0] _010_;
  wire [7:0] _011_;
  wire [15:0] _012_;
  wire [7:0] _013_;
  wire [7:0] _014_;
  wire [1:0] _015_;
  wire [1:0] _016_;
  wire [1:0] _017_;
  wire [1:0] _018_;
  wire [1:0] _019_;
  wire [1:0] _020_;
  wire _021_;
  wire _022_;
  wire [3:0] _023_;
  wire [1:0] _024_;
  wire [1:0] _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  (* src = "arbitro_1_synth.v:31" *)
  wire _030_;
  (* src = "arbitro_1_synth.v:35" *)
  wire _031_;
  (* src = "arbitro_1_synth.v:27" *)
  wire _032_;
  (* src = "arbitro_1_synth.v:31" *)
  wire _033_;
  (* src = "arbitro_1_synth.v:35" *)
  wire _034_;
  (* src = "arbitro_1_synth.v:31" *)
  wire _035_;
  (* src = "arbitro_1_synth.v:35" *)
  wire _036_;
  (* src = "arbitro_1_synth.v:21" *)
  wire _037_;
  wire [3:0] _038_;
  wire [3:0] _039_;
  wire [3:0] _040_;
  wire [3:0] _041_;
  wire [3:0] _042_;
  wire [3:0] _043_;
  wire [3:0] _044_;
  wire [3:0] _045_;
  wire [3:0] _046_;
  wire [3:0] _047_;
  (* src = "arbitro_1_synth.v:21" *)
  wire _048_;
  (* src = "arbitro_1_synth.v:44|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "3" *)
  wire [31:0] _049_;
  (* src = "arbitro_1_synth.v:31|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "2" *)
  wire [31:0] _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  (* src = "arbitro_1_synth.v:35|arbitro_1.v:31|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "2" *)
  wire [31:0] _054_;
  wire [31:0] _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  (* src = "arbitro_1_synth.v:27|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "2" *)
  wire [31:0] _059_;
  wire _060_;
  (* src = "arbitro_1_synth.v:31|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:203" *)
  wire [31:0] _061_;
  wire _062_;
  (* src = "arbitro_1_synth.v:35|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "2" *)
  wire [31:0] _063_;
  wire _064_;
  (* src = "arbitro_1_synth.v:60|arbitro_1.v:56|<techmap.v>:445" *)
  wire _065_;
  (* src = "arbitro_1_synth.v:44|<techmap.v>:260|<techmap.v>:222" *)
  wire _066_;
  (* src = "arbitro_1_synth.v:31|<techmap.v>:260|<techmap.v>:221" *)
  wire _067_;
  (* src = "arbitro_1_synth.v:35|arbitro_1.v:31|<techmap.v>:260|<techmap.v>:221" *)
  wire _068_;
  (* src = "arbitro_1_synth.v:35|arbitro_1.v:31|<techmap.v>:260|<techmap.v>:221" *)
  wire _069_;
  (* src = "arbitro_1_synth.v:27|<techmap.v>:260|<techmap.v>:221" *)
  wire _070_;
  (* src = "arbitro_1_synth.v:35|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:221" *)
  wire _071_;
  (* src = "arbitro_1_synth.v:13" *)
  input [3:0] Almost_full;
  (* src = "arbitro_1_synth.v:12" *)
  input [3:0] FIFO_empty;
  (* src = "arbitro_1_synth.v:9" *)
  output [3:0] Pops;
  reg [3:0] Pops;
  (* src = "arbitro_1_synth.v:10" *)
  output [3:0] Push;
  reg [3:0] Push;
  (* src = "arbitro_1_synth.v:11" *)
  input clk;
  (* init = 4'h0 *)
  (* src = "arbitro_1_synth.v:16" *)
  reg [3:0] contador = 4'h0;
  (* src = "arbitro_1_synth.v:14" *)
  input [1:0] dest;
  assign _004_[0] = Almost_full[3] |(* src = "arbitro_1_synth.v:21" *)  Almost_full[2];
  assign _004_[1] = Almost_full[1] |(* src = "arbitro_1_synth.v:21" *)  Almost_full[0];
  assign _048_ = _004_[0] |(* src = "arbitro_1_synth.v:21" *)  _004_[1];
  assign _005_[0] = contador[0] |(* src = "arbitro_1_synth.v:39" *)  _023_[1];
  assign _005_[1] = contador[2] |(* src = "arbitro_1_synth.v:39" *)  _023_[3];
  assign _026_ = _005_[0] |(* src = "arbitro_1_synth.v:39" *)  _005_[1];
  assign _027_ = dest[0] |(* src = "arbitro_1_synth.v:59|arbitro_1.v:56" *)  _024_[1];
  assign _028_ = _025_[0] |(* src = "arbitro_1_synth.v:60|arbitro_1.v:56" *)  _024_[1];
  assign _029_ = _025_[0] |(* src = "arbitro_1_synth.v:58|arbitro_1.v:56" *)  dest[1];
  assign _006_[0] = _003_[0] &(* src = "arbitro_1_synth.v:27" *)  _023_[1];
  assign _007_[0] = _006_[0] &(* src = "arbitro_1_synth.v:27" *)  _006_[1];
  assign _032_ = _060_ | _007_[0];
  assign _009_[0] = _008_[0] &(* src = "arbitro_1_synth.v:31" *)  _006_[1];
  assign _030_ = _052_ | _009_[0];
  assign _010_[0] = contador[0] &(* src = "arbitro_1_synth.v:31|arbitro_1.v:27" *)  contador[1];
  assign _011_[0] = _010_[0] &(* src = "arbitro_1_synth.v:31|arbitro_1.v:27" *)  _006_[1];
  assign _033_ = _062_ | _011_[0];
  assign _013_[0] = _006_[0] &(* src = "arbitro_1_synth.v:35|arbitro_1.v:31" *)  _012_[1];
  assign _031_ = _057_ | _013_[0];
  assign _008_[0] = contador[0] &(* src = "arbitro_1_synth.v:35|arbitro_1.v:27" *)  _023_[1];
  assign _014_[0] = _008_[0] &(* src = "arbitro_1_synth.v:35|arbitro_1.v:27" *)  _012_[1];
  assign _034_ = _064_ | _014_[0];
  assign _019_[0] = _016_[0] |(* src = "arbitro_1_synth.v:60|arbitro_1.v:56|<techmap.v>:445" *)  _017_[0];
  assign _019_[1] = _015_[1] |(* src = "arbitro_1_synth.v:60|arbitro_1.v:56|<techmap.v>:445" *)  _018_[1];
  assign _065_ = _019_[0] |(* src = "arbitro_1_synth.v:60|arbitro_1.v:56|<techmap.v>:445" *)  _019_[1];
  assign _020_[0] = FIFO_empty[0] |(* src = "arbitro_1_synth.v:22" *)  FIFO_empty[1];
  assign _020_[1] = FIFO_empty[2] |(* src = "arbitro_1_synth.v:22" *)  FIFO_empty[3];
  assign _021_ = _020_[0] |(* src = "arbitro_1_synth.v:22" *)  _020_[1];
  assign _022_ = dest[0] |(* src = "arbitro_1_synth.v:57|arbitro_1.v:56" *)  dest[1];
  assign _017_[0] = ~(* src = "arbitro_1_synth.v:59|arbitro_1.v:56" *) _027_;
  assign _016_[0] = ~(* src = "arbitro_1_synth.v:60|arbitro_1.v:56" *) _028_;
  assign _015_[1] = ~(* src = "arbitro_1_synth.v:58|arbitro_1.v:56" *) _029_;
  assign _018_[1] = ~(* src = "arbitro_1_synth.v:57|arbitro_1.v:56" *) _022_;
  assign _037_ = _021_ |(* src = "arbitro_1_synth.v:21" *)  _048_;
  assign _035_ = _030_ &(* src = "arbitro_1_synth.v:31" *)  _033_;
  assign _036_ = _031_ &(* src = "arbitro_1_synth.v:35" *)  _034_;
  assign _040_[0] = FIFO_empty[1] ? (* src = "arbitro_1_synth.v:50" *) 1'h0 : _039_[0];
  assign _040_[1] = FIFO_empty[1] ? (* src = "arbitro_1_synth.v:50" *) 1'h1 : _039_[1];
  assign _040_[2] = FIFO_empty[1] ? (* src = "arbitro_1_synth.v:50" *) 1'h0 : _039_[2];
  assign _040_[3] = FIFO_empty[1] ? (* src = "arbitro_1_synth.v:50" *) 1'h0 : _039_[3];
  assign _038_[0] = FIFO_empty[3] ? (* src = "arbitro_1_synth.v:52" *) 1'h0 : Pops[0];
  assign _038_[1] = FIFO_empty[3] ? (* src = "arbitro_1_synth.v:52" *) 1'h1 : Pops[1];
  assign _038_[2] = FIFO_empty[3] ? (* src = "arbitro_1_synth.v:52" *) 1'h0 : Pops[2];
  assign _038_[3] = FIFO_empty[3] ? (* src = "arbitro_1_synth.v:52" *) 1'h0 : Pops[3];
  assign _039_[0] = FIFO_empty[2] ? (* src = "arbitro_1_synth.v:51" *) 1'h0 : _038_[0];
  assign _039_[1] = FIFO_empty[2] ? (* src = "arbitro_1_synth.v:51" *) 1'h1 : _038_[1];
  assign _039_[2] = FIFO_empty[2] ? (* src = "arbitro_1_synth.v:51" *) 1'h0 : _038_[2];
  assign _039_[3] = FIFO_empty[2] ? (* src = "arbitro_1_synth.v:51" *) 1'h0 : _038_[3];
  assign _041_[0] = FIFO_empty[0] ? (* src = "arbitro_1_synth.v:49" *) 1'h1 : _040_[0];
  assign _041_[1] = FIFO_empty[0] ? (* src = "arbitro_1_synth.v:49" *) 1'h0 : _040_[1];
  assign _041_[2] = FIFO_empty[0] ? (* src = "arbitro_1_synth.v:49" *) 1'h0 : _040_[2];
  assign _041_[3] = FIFO_empty[0] ? (* src = "arbitro_1_synth.v:49" *) 1'h0 : _040_[3];
  assign _044_[0] = _035_ ? (* src = "arbitro_1_synth.v:31" *) 1'h0 : _043_[0];
  assign _044_[1] = _035_ ? (* src = "arbitro_1_synth.v:31" *) 1'h1 : _043_[1];
  assign _044_[2] = _035_ ? (* src = "arbitro_1_synth.v:31" *) 1'h0 : _043_[2];
  assign _044_[3] = _035_ ? (* src = "arbitro_1_synth.v:31" *) 1'h0 : _043_[3];
  assign _042_[0] = _026_ ? (* src = "arbitro_1_synth.v:39" *) Pops[0] : 1'h0;
  assign _042_[1] = _026_ ? (* src = "arbitro_1_synth.v:39" *) Pops[1] : 1'h0;
  assign _042_[2] = _026_ ? (* src = "arbitro_1_synth.v:39" *) Pops[2] : 1'h0;
  assign _042_[3] = _026_ ? (* src = "arbitro_1_synth.v:39" *) Pops[3] : 1'h1;
  assign _043_[0] = _036_ ? (* src = "arbitro_1_synth.v:35" *) 1'h0 : _042_[0];
  assign _043_[1] = _036_ ? (* src = "arbitro_1_synth.v:35" *) 1'h0 : _042_[1];
  assign _043_[2] = _036_ ? (* src = "arbitro_1_synth.v:35" *) 1'h1 : _042_[2];
  assign _043_[3] = _036_ ? (* src = "arbitro_1_synth.v:35" *) 1'h0 : _042_[3];
  assign _045_[0] = _032_ ? (* src = "arbitro_1_synth.v:27" *) 1'h1 : _044_[0];
  assign _045_[1] = _032_ ? (* src = "arbitro_1_synth.v:27" *) 1'h0 : _044_[1];
  assign _045_[2] = _032_ ? (* src = "arbitro_1_synth.v:27" *) 1'h0 : _044_[2];
  assign _045_[3] = _032_ ? (* src = "arbitro_1_synth.v:27" *) 1'h0 : _044_[3];
  assign _046_[0] = _021_ ? (* src = "arbitro_1_synth.v:22" *) _041_[0] : _045_[0];
  assign _046_[1] = _021_ ? (* src = "arbitro_1_synth.v:22" *) _041_[1] : _045_[1];
  assign _046_[2] = _021_ ? (* src = "arbitro_1_synth.v:22" *) _041_[2] : _045_[2];
  assign _046_[3] = _021_ ? (* src = "arbitro_1_synth.v:22" *) _041_[3] : _045_[3];
  assign _000_[0] = _037_ ? (* src = "arbitro_1_synth.v:21" *) 1'h0 : _046_[0];
  assign _000_[1] = _037_ ? (* src = "arbitro_1_synth.v:21" *) 1'h0 : _046_[1];
  assign _000_[2] = _037_ ? (* src = "arbitro_1_synth.v:21" *) 1'h0 : _046_[2];
  assign _000_[3] = _037_ ? (* src = "arbitro_1_synth.v:21" *) 1'h0 : _046_[3];
  assign _047_[0] = _021_ ? (* src = "arbitro_1_synth.v:22" *) contador[0] : _003_[0];
  assign _047_[1] = _021_ ? (* src = "arbitro_1_synth.v:22" *) contador[1] : _003_[1];
  assign _047_[2] = _021_ ? (* src = "arbitro_1_synth.v:22" *) contador[2] : _003_[2];
  assign _047_[3] = _021_ ? (* src = "arbitro_1_synth.v:22" *) contador[3] : _003_[3];
  assign _002_[0] = _037_ ? (* src = "arbitro_1_synth.v:21" *) contador[0] : _047_[0];
  assign _002_[1] = _037_ ? (* src = "arbitro_1_synth.v:21" *) contador[1] : _047_[1];
  assign _002_[2] = _037_ ? (* src = "arbitro_1_synth.v:21" *) contador[2] : _047_[2];
  assign _002_[3] = _037_ ? (* src = "arbitro_1_synth.v:21" *) contador[3] : _047_[3];
  assign _001_[0] = _065_ ? (* src = "arbitro_1_synth.v:60|arbitro_1.v:56|<techmap.v>:445" *) _018_[1] : 1'hx;
  assign _001_[1] = _065_ ? (* src = "arbitro_1_synth.v:60|arbitro_1.v:56|<techmap.v>:445" *) _015_[1] : 1'hx;
  assign _001_[2] = _065_ ? (* src = "arbitro_1_synth.v:60|arbitro_1.v:56|<techmap.v>:445" *) _017_[0] : 1'hx;
  assign _001_[3] = _065_ ? (* src = "arbitro_1_synth.v:60|arbitro_1.v:56|<techmap.v>:445" *) _016_[0] : 1'hx;
  assign _060_ = ~(* src = "arbitro_1_synth.v:27" *) _059_[31];
  assign _052_ = ~(* src = "arbitro_1_synth.v:31" *) _053_;
  assign _051_ = ~(* src = "arbitro_1_synth.v:31" *) _050_[31];
  assign _062_ = ~(* src = "arbitro_1_synth.v:31|arbitro_1.v:27" *) _061_[31];
  assign _057_ = ~(* src = "arbitro_1_synth.v:35|arbitro_1.v:31" *) _058_;
  assign _056_ = ~(* src = "arbitro_1_synth.v:35|arbitro_1.v:31" *) _054_[31];
  assign _064_ = ~(* src = "arbitro_1_synth.v:35|arbitro_1.v:27" *) _063_[31];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      contador[0] <= _002_[0];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      contador[1] <= _002_[1];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      contador[2] <= _002_[2];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      contador[3] <= _002_[3];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      Pops[0] <= _000_[0];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      Pops[1] <= _000_[1];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      Pops[2] <= _000_[2];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      Pops[3] <= _000_[3];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      Push[0] <= _001_[0];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      Push[1] <= _001_[1];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      Push[2] <= _001_[2];
  (* src = "arbitro_1_synth.v:18" *)
  always @(posedge clk)
      Push[3] <= _001_[3];
  assign _023_[1] = contador[1] ^(* src = "arbitro_1_synth.v:31|<techmap.v>:262" *)  1'h1;
  assign _003_[0] = contador[0] ^(* src = "arbitro_1_synth.v:31|arbitro_1.v:27|<techmap.v>:263" *)  1'h1;
  assign _023_[3] = contador[3] ^(* src = "arbitro_1_synth.v:31|arbitro_1.v:27|<techmap.v>:262" *)  1'h1;
  assign _055_[2] = contador[2] ^(* src = "arbitro_1_synth.v:35|arbitro_1.v:31|<techmap.v>:262" *)  1'h1;
  assign _003_[1] = contador[1] ^(* src = "arbitro_1_synth.v:44|<techmap.v>:263" *)  contador[0];
  assign _003_[2] = contador[2] ^(* src = "arbitro_1_synth.v:44|<techmap.v>:263" *)  _010_[0];
  assign _003_[3] = contador[3] ^(* src = "arbitro_1_synth.v:44|<techmap.v>:263" *)  _049_[2];
  assign _068_ = _023_[1] &(* src = "arbitro_1_synth.v:27|<techmap.v>:260|<techmap.v>:221" *)  _054_[0];
  assign _070_ = _006_[1] &(* src = "arbitro_1_synth.v:27|<techmap.v>:260|<techmap.v>:221" *)  _054_[1];
  assign _054_[0] = contador[0] |(* src = "arbitro_1_synth.v:27|<techmap.v>:260|<techmap.v>:212" *)  _003_[0];
  assign _059_[31] = contador[3] |(* src = "arbitro_1_synth.v:27|<techmap.v>:260|<techmap.v>:221" *)  _070_;
  assign _024_[1] = dest[1] ^(* src = "arbitro_1_synth.v:60|arbitro_1.v:56" *)  1'h1;
  assign _067_ = _006_[1] &(* src = "arbitro_1_synth.v:31|<techmap.v>:260|<techmap.v>:221" *)  _050_[1];
  assign _025_[0] = dest[0] ^(* src = "arbitro_1_synth.v:58|arbitro_1.v:56" *)  1'h1;
  assign _050_[31] = contador[3] |(* src = "arbitro_1_synth.v:31|<techmap.v>:260|<techmap.v>:221" *)  _067_;
  assign _006_[1] = _023_[3] &(* src = "arbitro_1_synth.v:31|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:222" *)  contador[2];
  assign _049_[2] = contador[2] &(* src = "arbitro_1_synth.v:31|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:229" *)  _010_[0];
  assign _061_[31] = contador[3] |(* src = "arbitro_1_synth.v:31|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:221" *)  _011_[0];
  assign _069_ = _012_[1] &(* src = "arbitro_1_synth.v:35|arbitro_1.v:31|<techmap.v>:260|<techmap.v>:221" *)  _054_[1];
  assign _054_[1] = contador[1] |(* src = "arbitro_1_synth.v:35|arbitro_1.v:31|<techmap.v>:260|<techmap.v>:221" *)  _068_;
  assign _054_[31] = _066_ |(* src = "arbitro_1_synth.v:35|arbitro_1.v:31|<techmap.v>:260|<techmap.v>:221" *)  _069_;
  assign _066_ = contador[3] &(* src = "arbitro_1_synth.v:35|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:221" *)  contador[2];
  assign _071_ = _012_[1] &(* src = "arbitro_1_synth.v:35|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:221" *)  _050_[1];
  assign _012_[1] = contador[3] &(* src = "arbitro_1_synth.v:35|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:222" *)  _055_[2];
  assign _050_[1] = contador[1] |(* src = "arbitro_1_synth.v:35|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:221" *)  _008_[0];
  assign _063_[31] = _066_ |(* src = "arbitro_1_synth.v:35|arbitro_1.v:27|<techmap.v>:260|<techmap.v>:221" *)  _071_;
  assign _053_ = _051_ | _009_[0];
  assign _058_ = _056_ | _013_[0];
  assign _003_[31:5] = 27'h0000000;
  assign _006_[15:2] = 14'h3fff;
  assign _007_[7:1] = 7'h7f;
  assign _008_[15:1] = { 14'h3fff, _006_[1] };
  assign _009_[7:1] = 7'h7f;
  assign _010_[15:1] = { 14'h3fff, _006_[1] };
  assign _011_[7:1] = 7'h7f;
  assign { _012_[15:2], _012_[0] } = { 14'h3fff, _006_[0] };
  assign _013_[7:1] = 7'h7f;
  assign _014_[7:1] = 7'h7f;
  assign _015_[0] = 1'h0;
  assign _016_[1] = 1'h0;
  assign _017_[1] = 1'h0;
  assign _018_[0] = 1'h0;
  assign { _023_[2], _023_[0] } = { contador[2], contador[0] };
  assign _024_[0] = dest[0];
  assign _025_[1] = _024_[1];
  assign { _049_[31:3], _049_[1:0] } = { 28'h0000000, _003_[4], _010_[0], contador[0] };
  assign { _050_[30:3], _050_[0] } = { _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], _050_[31], contador[0] };
  assign _054_[30:3] = { _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31], _054_[31] };
  assign { _055_[31:3], _055_[1:0] } = { 28'hfffffff, contador[3], _023_[1], _003_[0] };
  assign { _059_[30:3], _059_[1:0] } = { _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _059_[31], _054_[1:0] };
  assign _061_[30:0] = { _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _061_[31], _049_[2], _010_[0], contador[0] };
  assign { _063_[30:3], _063_[1:0] } = { _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _063_[31], _050_[1], contador[0] };
endmodule
