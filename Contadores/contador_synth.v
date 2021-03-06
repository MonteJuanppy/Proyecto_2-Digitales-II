/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "contador_synth.v:6" *)
module contador_synth(push0, push1, push2, push3, push4, req, idx, clk, data, valid);
  (* src = "contador_synth.v:26" *)
  wire [3:0] _000_;
  (* src = "contador_synth.v:26" *)
  wire [3:0] _001_;
  (* src = "contador_synth.v:26" *)
  wire [3:0] _002_;
  (* src = "contador_synth.v:26" *)
  wire [3:0] _003_;
  (* src = "contador_synth.v:26" *)
  wire [3:0] _004_;
  (* src = "contador_synth.v:26" *)
  wire [5:0] _005_;
  (* src = "contador_synth.v:26" *)
  wire [5:0] _006_;
  (* src = "contador_synth.v:29" *)
  (* unused_bits = "4" *)
  wire [31:0] _007_;
  (* src = "contador_synth.v:31" *)
  (* unused_bits = "4" *)
  wire [31:0] _008_;
  (* src = "contador_synth.v:33" *)
  (* unused_bits = "4" *)
  wire [31:0] _009_;
  (* src = "contador_synth.v:35" *)
  (* unused_bits = "4" *)
  wire [31:0] _010_;
  (* src = "contador_synth.v:37" *)
  (* unused_bits = "4" *)
  wire [31:0] _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire [1:0] _016_;
  wire _017_;
  wire [1:0] _018_;
  wire _019_;
  wire [1:0] _020_;
  wire _021_;
  wire [1:0] _022_;
  wire _023_;
  wire [1:0] _024_;
  wire _025_;
  wire _026_;
  wire [2:0] _027_;
  wire [2:0] _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  (* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:432" *)
  wire [29:0] _033_;
  (* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:428" *)
  wire [5:0] _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  (* src = "contador_synth.v:29|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "3" *)
  wire [31:0] _040_;
  (* src = "contador_synth.v:31|contador_synth.v:29|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "3" *)
  wire [31:0] _041_;
  (* src = "contador_synth.v:33|contador_synth.v:29|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "3" *)
  wire [31:0] _042_;
  (* src = "contador_synth.v:35|contador_synth.v:29|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "3" *)
  wire [31:0] _043_;
  (* src = "contador_synth.v:37|contador_synth.v:29|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "3" *)
  wire [31:0] _044_;
  (* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *)
  wire _045_;
  (* src = "contador_synth.v:14" *)
  input clk;
  (* init = 4'h0 *)
  (* src = "contador_synth.v:20" *)
  reg [3:0] cuenta0 = 4'h0;
  (* init = 4'h0 *)
  (* src = "contador_synth.v:21" *)
  reg [3:0] cuenta1 = 4'h0;
  (* init = 4'h0 *)
  (* src = "contador_synth.v:22" *)
  reg [3:0] cuenta2 = 4'h0;
  (* init = 4'h0 *)
  (* src = "contador_synth.v:23" *)
  reg [3:0] cuenta3 = 4'h0;
  (* init = 4'h0 *)
  (* src = "contador_synth.v:24" *)
  reg [3:0] cuenta4 = 4'h0;
  (* init = 6'h00 *)
  (* src = "contador_synth.v:15" *)
  output [5:0] data;
  reg [5:0] data = 6'h00;
  (* src = "contador_synth.v:13" *)
  input [2:0] idx;
  (* src = "contador_synth.v:7" *)
  input push0;
  (* src = "contador_synth.v:8" *)
  input push1;
  (* src = "contador_synth.v:9" *)
  input push2;
  (* src = "contador_synth.v:10" *)
  input push3;
  (* src = "contador_synth.v:11" *)
  input push4;
  (* src = "contador_synth.v:12" *)
  input req;
  (* init = 1'h0 *)
  (* src = "contador_synth.v:16" *)
  output valid;
  reg valid = 1'h0;
  assign _032_ = _012_ |(* src = "contador_synth.v:45|contador_synth.v:40" *)  _028_[2];
  assign _013_ = _027_[0] |(* src = "contador_synth.v:44|contador_synth.v:40" *)  _027_[1];
  assign _029_ = _013_ |(* src = "contador_synth.v:44|contador_synth.v:40" *)  idx[2];
  assign _014_ = idx[0] |(* src = "contador_synth.v:43|contador_synth.v:40" *)  _027_[1];
  assign _030_ = _014_ |(* src = "contador_synth.v:43|contador_synth.v:40" *)  idx[2];
  assign _015_ = _027_[0] |(* src = "contador_synth.v:42|contador_synth.v:40" *)  idx[1];
  assign _031_ = _015_ |(* src = "contador_synth.v:42|contador_synth.v:40" *)  idx[2];
  assign _016_[0] = _033_[1] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[7];
  assign _016_[1] = _033_[13] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[19];
  assign _017_ = _016_[0] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _016_[1];
  assign _034_[1] = _017_ |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[25];
  assign _018_[0] = _033_[3] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[9];
  assign _018_[1] = _033_[15] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[21];
  assign _019_ = _018_[0] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _018_[1];
  assign _034_[3] = _019_ |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[27];
  assign _020_[0] = _033_[2] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[8];
  assign _020_[1] = _033_[14] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[20];
  assign _021_ = _020_[0] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _020_[1];
  assign _034_[2] = _021_ |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[26];
  assign _022_[0] = _033_[0] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[6];
  assign _022_[1] = _033_[12] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[18];
  assign _023_ = _022_[0] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _022_[1];
  assign _034_[0] = _023_ |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:441" *)  _033_[24];
  assign _024_[0] = _035_ |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *)  _036_;
  assign _024_[1] = _037_ |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *)  _038_;
  assign _025_ = _024_[0] |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *)  _024_[1];
  assign _045_ = _025_ |(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *)  _039_;
  assign _012_ = idx[0] |(* src = "contador_synth.v:41|contador_synth.v:40" *)  idx[1];
  assign _026_ = _012_ |(* src = "contador_synth.v:41|contador_synth.v:40" *)  idx[2];
  assign _035_ = ~(* src = "contador_synth.v:45|contador_synth.v:40" *) _032_;
  assign _036_ = ~(* src = "contador_synth.v:44|contador_synth.v:40" *) _029_;
  assign _037_ = ~(* src = "contador_synth.v:43|contador_synth.v:40" *) _030_;
  assign _038_ = ~(* src = "contador_synth.v:42|contador_synth.v:40" *) _031_;
  assign _039_ = ~(* src = "contador_synth.v:41|contador_synth.v:40" *) _026_;
  assign _003_[0] = push3 ? (* src = "contador_synth.v:35" *) _010_[0] : cuenta3[0];
  assign _003_[1] = push3 ? (* src = "contador_synth.v:35" *) _010_[1] : cuenta3[1];
  assign _003_[2] = push3 ? (* src = "contador_synth.v:35" *) _010_[2] : cuenta3[2];
  assign _003_[3] = push3 ? (* src = "contador_synth.v:35" *) _010_[3] : cuenta3[3];
  assign _005_[0] = req ? (* src = "contador_synth.v:39" *) _006_[0] : data[0];
  assign _005_[1] = req ? (* src = "contador_synth.v:39" *) _006_[1] : data[1];
  assign _005_[2] = req ? (* src = "contador_synth.v:39" *) _006_[2] : data[2];
  assign _005_[3] = req ? (* src = "contador_synth.v:39" *) _006_[3] : data[3];
  assign _005_[4] = req ? (* src = "contador_synth.v:39" *) 1'h0 : data[4];
  assign _005_[5] = req ? (* src = "contador_synth.v:39" *) 1'h0 : data[5];
  assign _004_[0] = push4 ? (* src = "contador_synth.v:37" *) _011_[0] : cuenta4[0];
  assign _004_[1] = push4 ? (* src = "contador_synth.v:37" *) _011_[1] : cuenta4[1];
  assign _004_[2] = push4 ? (* src = "contador_synth.v:37" *) _011_[2] : cuenta4[2];
  assign _004_[3] = push4 ? (* src = "contador_synth.v:37" *) _011_[3] : cuenta4[3];
  assign _000_[0] = push0 ? (* src = "contador_synth.v:29" *) _007_[0] : cuenta0[0];
  assign _000_[1] = push0 ? (* src = "contador_synth.v:29" *) _007_[1] : cuenta0[1];
  assign _000_[2] = push0 ? (* src = "contador_synth.v:29" *) _007_[2] : cuenta0[2];
  assign _000_[3] = push0 ? (* src = "contador_synth.v:29" *) _007_[3] : cuenta0[3];
  assign _002_[0] = push2 ? (* src = "contador_synth.v:33" *) _009_[0] : cuenta2[0];
  assign _002_[1] = push2 ? (* src = "contador_synth.v:33" *) _009_[1] : cuenta2[1];
  assign _002_[2] = push2 ? (* src = "contador_synth.v:33" *) _009_[2] : cuenta2[2];
  assign _002_[3] = push2 ? (* src = "contador_synth.v:33" *) _009_[3] : cuenta2[3];
  assign _001_[0] = push1 ? (* src = "contador_synth.v:31" *) _008_[0] : cuenta1[0];
  assign _001_[1] = push1 ? (* src = "contador_synth.v:31" *) _008_[1] : cuenta1[1];
  assign _001_[2] = push1 ? (* src = "contador_synth.v:31" *) _008_[2] : cuenta1[2];
  assign _001_[3] = push1 ? (* src = "contador_synth.v:31" *) _008_[3] : cuenta1[3];
  assign _006_[0] = _045_ ? (* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *) _034_[0] : 1'h0;
  assign _006_[1] = _045_ ? (* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *) _034_[1] : 1'h0;
  assign _006_[2] = _045_ ? (* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *) _034_[2] : 1'h0;
  assign _006_[3] = _045_ ? (* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:445" *) _034_[3] : 1'h0;
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      data[0] <= _005_[0];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      data[1] <= _005_[1];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      data[2] <= _005_[2];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      data[3] <= _005_[3];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      data[4] <= _005_[4];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      data[5] <= _005_[5];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      valid <= req;
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta0[0] <= _000_[0];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta0[1] <= _000_[1];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta0[2] <= _000_[2];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta0[3] <= _000_[3];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta1[0] <= _001_[0];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta1[1] <= _001_[1];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta1[2] <= _001_[2];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta1[3] <= _001_[3];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta2[0] <= _002_[0];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta2[1] <= _002_[1];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta2[2] <= _002_[2];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta2[3] <= _002_[3];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta3[0] <= _003_[0];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta3[1] <= _003_[1];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta3[2] <= _003_[2];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta3[3] <= _003_[3];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta4[0] <= _004_[0];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta4[1] <= _004_[1];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta4[2] <= _004_[2];
  (* src = "contador_synth.v:26" *)
  always @(posedge clk)
      cuenta4[3] <= _004_[3];
  assign _010_[1] = cuenta3[1] ^(* src = "contador_synth.v:35|contador_synth.v:29|<techmap.v>:263" *)  cuenta3[0];
  assign _010_[2] = cuenta3[2] ^(* src = "contador_synth.v:35|contador_synth.v:29|<techmap.v>:263" *)  _043_[1];
  assign _010_[3] = cuenta3[3] ^(* src = "contador_synth.v:35|contador_synth.v:29|<techmap.v>:263" *)  _043_[2];
  assign _010_[0] = cuenta3[0] ^(* src = "contador_synth.v:35|contador_synth.v:29|<techmap.v>:262" *)  1'h1;
  assign _011_[1] = cuenta4[1] ^(* src = "contador_synth.v:37|contador_synth.v:29|<techmap.v>:263" *)  cuenta4[0];
  assign _011_[2] = cuenta4[2] ^(* src = "contador_synth.v:37|contador_synth.v:29|<techmap.v>:263" *)  _044_[1];
  assign _011_[3] = cuenta4[3] ^(* src = "contador_synth.v:37|contador_synth.v:29|<techmap.v>:263" *)  _044_[2];
  assign _011_[0] = cuenta4[0] ^(* src = "contador_synth.v:37|contador_synth.v:29|<techmap.v>:262" *)  1'h1;
  assign _040_[1] = cuenta0[1] &(* src = "contador_synth.v:29|<techmap.v>:260|<techmap.v>:221" *)  cuenta0[0];
  assign _027_[1] = idx[1] ^(* src = "contador_synth.v:43|contador_synth.v:40" *)  1'h1;
  assign _040_[2] = cuenta0[2] &(* src = "contador_synth.v:29|<techmap.v>:260|<techmap.v>:229" *)  _040_[1];
  assign _027_[0] = idx[0] ^(* src = "contador_synth.v:42|contador_synth.v:40" *)  1'h1;
  assign _041_[1] = cuenta1[1] &(* src = "contador_synth.v:31|contador_synth.v:29|<techmap.v>:260|<techmap.v>:221" *)  cuenta1[0];
  assign _041_[2] = cuenta1[2] &(* src = "contador_synth.v:31|contador_synth.v:29|<techmap.v>:260|<techmap.v>:229" *)  _041_[1];
  assign _042_[1] = cuenta2[1] &(* src = "contador_synth.v:33|contador_synth.v:29|<techmap.v>:260|<techmap.v>:221" *)  cuenta2[0];
  assign _042_[2] = cuenta2[2] &(* src = "contador_synth.v:33|contador_synth.v:29|<techmap.v>:260|<techmap.v>:229" *)  _042_[1];
  assign _043_[1] = cuenta3[1] &(* src = "contador_synth.v:35|contador_synth.v:29|<techmap.v>:260|<techmap.v>:221" *)  cuenta3[0];
  assign _043_[2] = cuenta3[2] &(* src = "contador_synth.v:35|contador_synth.v:29|<techmap.v>:260|<techmap.v>:229" *)  _043_[1];
  assign _044_[1] = cuenta4[1] &(* src = "contador_synth.v:37|contador_synth.v:29|<techmap.v>:260|<techmap.v>:221" *)  cuenta4[0];
  assign _044_[2] = cuenta4[2] &(* src = "contador_synth.v:37|contador_synth.v:29|<techmap.v>:260|<techmap.v>:229" *)  _044_[1];
  assign _033_[24] = cuenta0[0] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _039_;
  assign _033_[25] = cuenta0[1] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _039_;
  assign _033_[26] = cuenta0[2] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _039_;
  assign _033_[27] = cuenta0[3] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _039_;
  assign _033_[18] = cuenta1[0] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _038_;
  assign _033_[19] = cuenta1[1] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _038_;
  assign _033_[20] = cuenta1[2] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _038_;
  assign _033_[21] = cuenta1[3] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _038_;
  assign _033_[12] = cuenta2[0] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _037_;
  assign _033_[13] = cuenta2[1] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _037_;
  assign _033_[14] = cuenta2[2] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _037_;
  assign _033_[15] = cuenta2[3] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _037_;
  assign _033_[6] = cuenta3[0] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _036_;
  assign _033_[7] = cuenta3[1] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _036_;
  assign _033_[8] = cuenta3[2] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _036_;
  assign _033_[9] = cuenta3[3] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _036_;
  assign _033_[0] = cuenta4[0] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _035_;
  assign _033_[1] = cuenta4[1] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _035_;
  assign _033_[2] = cuenta4[2] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _035_;
  assign _033_[3] = cuenta4[3] &(* src = "contador_synth.v:45|contador_synth.v:40|<techmap.v>:434" *)  _035_;
  assign _007_[1] = cuenta0[1] ^(* src = "contador_synth.v:29|<techmap.v>:263" *)  cuenta0[0];
  assign _007_[2] = cuenta0[2] ^(* src = "contador_synth.v:29|<techmap.v>:263" *)  _040_[1];
  assign _007_[3] = cuenta0[3] ^(* src = "contador_synth.v:29|<techmap.v>:263" *)  _040_[2];
  assign _007_[0] = cuenta0[0] ^(* src = "contador_synth.v:29|<techmap.v>:262" *)  1'h1;
  assign _008_[1] = cuenta1[1] ^(* src = "contador_synth.v:31|contador_synth.v:29|<techmap.v>:263" *)  cuenta1[0];
  assign _008_[2] = cuenta1[2] ^(* src = "contador_synth.v:31|contador_synth.v:29|<techmap.v>:263" *)  _041_[1];
  assign _008_[3] = cuenta1[3] ^(* src = "contador_synth.v:31|contador_synth.v:29|<techmap.v>:263" *)  _041_[2];
  assign _008_[0] = cuenta1[0] ^(* src = "contador_synth.v:31|contador_synth.v:29|<techmap.v>:262" *)  1'h1;
  assign _009_[1] = cuenta2[1] ^(* src = "contador_synth.v:33|contador_synth.v:29|<techmap.v>:263" *)  cuenta2[0];
  assign _009_[2] = cuenta2[2] ^(* src = "contador_synth.v:33|contador_synth.v:29|<techmap.v>:263" *)  _042_[1];
  assign _009_[3] = cuenta2[3] ^(* src = "contador_synth.v:33|contador_synth.v:29|<techmap.v>:263" *)  _042_[2];
  assign _009_[0] = cuenta2[0] ^(* src = "contador_synth.v:33|contador_synth.v:29|<techmap.v>:262" *)  1'h1;
  assign _028_[2] = idx[2] ^(* src = "contador_synth.v:45|contador_synth.v:40" *)  1'h1;
  assign _006_[5:4] = 2'h0;
  assign _007_[31:5] = 27'h0000000;
  assign _008_[31:5] = 27'h0000000;
  assign _009_[31:5] = 27'h0000000;
  assign _010_[31:5] = 27'h0000000;
  assign _011_[31:5] = 27'h0000000;
  assign _027_[2] = idx[2];
  assign _028_[1:0] = idx[1:0];
  assign { _033_[29:28], _033_[23:22], _033_[17:16], _033_[11:10], _033_[5:4] } = 10'h000;
  assign _034_[5:4] = 2'h0;
  assign { _040_[31:3], _040_[0] } = { 28'h0000000, _007_[4], cuenta0[0] };
  assign { _041_[31:3], _041_[0] } = { 28'h0000000, _008_[4], cuenta1[0] };
  assign { _042_[31:3], _042_[0] } = { 28'h0000000, _009_[4], cuenta2[0] };
  assign { _043_[31:3], _043_[0] } = { 28'h0000000, _010_[4], cuenta3[0] };
  assign { _044_[31:3], _044_[0] } = { 28'h0000000, _011_[4], cuenta4[0] };
endmodule
