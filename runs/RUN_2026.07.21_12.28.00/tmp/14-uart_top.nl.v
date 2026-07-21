module uart_top (clk,
    rst,
    rx_done,
    tx,
    tx_done,
    tx_start,
    data,
    rx_data);
 input clk;
 input rst;
 output rx_done;
 output tx;
 output tx_done;
 input tx_start;
 input [7:0] data;
 output [7:0] rx_data;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire \bg.baud_tick ;
 wire \bg.count[0] ;
 wire \bg.count[1] ;
 wire \bg.count[2] ;
 wire \bg.count[3] ;
 wire \rxu.bit_count[0] ;
 wire \rxu.bit_count[1] ;
 wire \rxu.bit_count[2] ;
 wire \rxu.bit_count[3] ;
 wire \rxu.busy ;
 wire \txu.bit_count[0] ;
 wire \txu.bit_count[1] ;
 wire \txu.bit_count[2] ;
 wire \txu.bit_count[3] ;
 wire \txu.busy ;
 wire \txu.shift_reg[0] ;
 wire \txu.shift_reg[1] ;
 wire \txu.shift_reg[2] ;
 wire \txu.shift_reg[3] ;
 wire \txu.shift_reg[4] ;
 wire \txu.shift_reg[5] ;
 wire \txu.shift_reg[6] ;
 wire \txu.shift_reg[7] ;
 wire \txu.shift_reg[8] ;
 wire \txu.shift_reg[9] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire clknet_0_clk;
 wire clknet_2_0__leaf_clk;
 wire clknet_2_1__leaf_clk;
 wire clknet_2_2__leaf_clk;
 wire clknet_2_3__leaf_clk;

 sky130_fd_sc_hd__nand3_1 _126_ (.A(\rxu.bit_count[2] ),
    .B(\rxu.bit_count[1] ),
    .C(\rxu.bit_count[0] ),
    .Y(_072_));
 sky130_fd_sc_hd__or2b_1 _127_ (.A(net20),
    .B_N(\bg.baud_tick ),
    .X(_073_));
 sky130_fd_sc_hd__nand2_1 _128_ (.A(\rxu.busy ),
    .B(\bg.baud_tick ),
    .Y(_074_));
 sky130_fd_sc_hd__mux2_1 _129_ (.A0(_072_),
    .A1(_073_),
    .S(_074_),
    .X(_075_));
 sky130_fd_sc_hd__clkbuf_4 _130_ (.A(_074_),
    .X(_076_));
 sky130_fd_sc_hd__nor3_1 _131_ (.A(\rxu.bit_count[3] ),
    .B(_072_),
    .C(_076_),
    .Y(_005_));
 sky130_fd_sc_hd__a21o_1 _132_ (.A1(\rxu.bit_count[3] ),
    .A2(_075_),
    .B1(_005_),
    .X(_071_));
 sky130_fd_sc_hd__nand2_1 _133_ (.A(\rxu.bit_count[1] ),
    .B(\rxu.bit_count[0] ),
    .Y(_077_));
 sky130_fd_sc_hd__a22o_1 _134_ (.A1(\rxu.busy ),
    .A2(_077_),
    .B1(_076_),
    .B2(_073_),
    .X(_078_));
 sky130_fd_sc_hd__or3_1 _135_ (.A(\rxu.bit_count[2] ),
    .B(_077_),
    .C(_076_),
    .X(_079_));
 sky130_fd_sc_hd__a21bo_1 _136_ (.A1(\rxu.bit_count[2] ),
    .A2(_078_),
    .B1_N(_079_),
    .X(_070_));
 sky130_fd_sc_hd__and2_1 _137_ (.A(\rxu.busy ),
    .B(\bg.baud_tick ),
    .X(_080_));
 sky130_fd_sc_hd__and2b_1 _138_ (.A_N(net20),
    .B(\bg.baud_tick ),
    .X(_081_));
 sky130_fd_sc_hd__o21a_1 _139_ (.A1(_080_),
    .A2(_081_),
    .B1(\rxu.bit_count[0] ),
    .X(_082_));
 sky130_fd_sc_hd__o21a_1 _140_ (.A1(\rxu.bit_count[1] ),
    .A2(_082_),
    .B1(_078_),
    .X(_069_));
 sky130_fd_sc_hd__o21ba_1 _141_ (.A1(\rxu.bit_count[0] ),
    .A2(_080_),
    .B1_N(_082_),
    .X(_068_));
 sky130_fd_sc_hd__o21ba_1 _142_ (.A1(\rxu.busy ),
    .A2(_081_),
    .B1_N(_005_),
    .X(_067_));
 sky130_fd_sc_hd__inv_2 _143_ (.A(\txu.busy ),
    .Y(_083_));
 sky130_fd_sc_hd__and4bb_1 _144_ (.A_N(\txu.bit_count[2] ),
    .B_N(\txu.bit_count[1] ),
    .C(\txu.bit_count[0] ),
    .D(\txu.bit_count[3] ),
    .X(_084_));
 sky130_fd_sc_hd__mux2_1 _145_ (.A0(net10),
    .A1(\bg.baud_tick ),
    .S(\txu.busy ),
    .X(_085_));
 sky130_fd_sc_hd__o21a_1 _146_ (.A1(_083_),
    .A2(_084_),
    .B1(_085_),
    .X(_086_));
 sky130_fd_sc_hd__nand2_2 _147_ (.A(_083_),
    .B(net10),
    .Y(_087_));
 sky130_fd_sc_hd__o21ai_1 _148_ (.A1(_083_),
    .A2(_086_),
    .B1(_087_),
    .Y(_066_));
 sky130_fd_sc_hd__nor2b_2 _149_ (.A(\txu.busy ),
    .B_N(net10),
    .Y(_088_));
 sky130_fd_sc_hd__nand2_2 _150_ (.A(\bg.baud_tick ),
    .B(\txu.busy ),
    .Y(_089_));
 sky130_fd_sc_hd__o21a_1 _151_ (.A1(\txu.shift_reg[9] ),
    .A2(_088_),
    .B1(_089_),
    .X(_065_));
 sky130_fd_sc_hd__and2_1 _152_ (.A(\bg.baud_tick ),
    .B(\txu.busy ),
    .X(_090_));
 sky130_fd_sc_hd__buf_2 _153_ (.A(_090_),
    .X(_091_));
 sky130_fd_sc_hd__nor2_2 _154_ (.A(_088_),
    .B(_091_),
    .Y(_092_));
 sky130_fd_sc_hd__a22o_1 _155_ (.A1(net8),
    .A2(_088_),
    .B1(_091_),
    .B2(\txu.shift_reg[9] ),
    .X(_093_));
 sky130_fd_sc_hd__a21o_1 _156_ (.A1(\txu.shift_reg[8] ),
    .A2(_092_),
    .B1(_093_),
    .X(_064_));
 sky130_fd_sc_hd__a22o_1 _157_ (.A1(net7),
    .A2(_088_),
    .B1(_091_),
    .B2(\txu.shift_reg[8] ),
    .X(_094_));
 sky130_fd_sc_hd__a21o_1 _158_ (.A1(\txu.shift_reg[7] ),
    .A2(_092_),
    .B1(_094_),
    .X(_063_));
 sky130_fd_sc_hd__or2_1 _159_ (.A(\txu.shift_reg[6] ),
    .B(_085_),
    .X(_095_));
 sky130_fd_sc_hd__o221a_1 _160_ (.A1(net6),
    .A2(_087_),
    .B1(_089_),
    .B2(\txu.shift_reg[7] ),
    .C1(_095_),
    .X(_062_));
 sky130_fd_sc_hd__or2_1 _161_ (.A(\txu.shift_reg[5] ),
    .B(_085_),
    .X(_096_));
 sky130_fd_sc_hd__o221a_1 _162_ (.A1(net5),
    .A2(_087_),
    .B1(_089_),
    .B2(\txu.shift_reg[6] ),
    .C1(_096_),
    .X(_061_));
 sky130_fd_sc_hd__or2_1 _163_ (.A(\txu.shift_reg[4] ),
    .B(_085_),
    .X(_097_));
 sky130_fd_sc_hd__o221a_1 _164_ (.A1(net4),
    .A2(_087_),
    .B1(_089_),
    .B2(\txu.shift_reg[5] ),
    .C1(_097_),
    .X(_060_));
 sky130_fd_sc_hd__or2_1 _165_ (.A(\txu.shift_reg[3] ),
    .B(_085_),
    .X(_098_));
 sky130_fd_sc_hd__o221a_1 _166_ (.A1(net3),
    .A2(_087_),
    .B1(_089_),
    .B2(\txu.shift_reg[4] ),
    .C1(_098_),
    .X(_059_));
 sky130_fd_sc_hd__or2_1 _167_ (.A(\txu.shift_reg[2] ),
    .B(_085_),
    .X(_099_));
 sky130_fd_sc_hd__o221a_1 _168_ (.A1(net2),
    .A2(_087_),
    .B1(_089_),
    .B2(\txu.shift_reg[3] ),
    .C1(_099_),
    .X(_058_));
 sky130_fd_sc_hd__a22o_1 _169_ (.A1(net1),
    .A2(_088_),
    .B1(_091_),
    .B2(\txu.shift_reg[2] ),
    .X(_100_));
 sky130_fd_sc_hd__a21o_1 _170_ (.A1(\txu.shift_reg[1] ),
    .A2(_092_),
    .B1(_100_),
    .X(_057_));
 sky130_fd_sc_hd__a22o_1 _171_ (.A1(\txu.shift_reg[1] ),
    .A2(_091_),
    .B1(_092_),
    .B2(\txu.shift_reg[0] ),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _172_ (.A0(net18),
    .A1(net20),
    .S(_080_),
    .X(_101_));
 sky130_fd_sc_hd__clkbuf_1 _173_ (.A(_101_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_1 _174_ (.A0(net18),
    .A1(net17),
    .S(_076_),
    .X(_102_));
 sky130_fd_sc_hd__clkbuf_1 _175_ (.A(_102_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_1 _176_ (.A0(net17),
    .A1(net16),
    .S(_076_),
    .X(_103_));
 sky130_fd_sc_hd__clkbuf_1 _177_ (.A(_103_),
    .X(_053_));
 sky130_fd_sc_hd__mux2_1 _178_ (.A0(net16),
    .A1(net15),
    .S(_076_),
    .X(_104_));
 sky130_fd_sc_hd__clkbuf_1 _179_ (.A(_104_),
    .X(_052_));
 sky130_fd_sc_hd__mux2_1 _180_ (.A0(net15),
    .A1(net14),
    .S(_076_),
    .X(_105_));
 sky130_fd_sc_hd__clkbuf_1 _181_ (.A(_105_),
    .X(_051_));
 sky130_fd_sc_hd__mux2_1 _182_ (.A0(net14),
    .A1(net13),
    .S(_076_),
    .X(_106_));
 sky130_fd_sc_hd__clkbuf_1 _183_ (.A(_106_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _184_ (.A0(net13),
    .A1(net12),
    .S(_076_),
    .X(_107_));
 sky130_fd_sc_hd__clkbuf_1 _185_ (.A(_107_),
    .X(_049_));
 sky130_fd_sc_hd__mux2_1 _186_ (.A0(net12),
    .A1(net11),
    .S(_076_),
    .X(_108_));
 sky130_fd_sc_hd__clkbuf_1 _187_ (.A(_108_),
    .X(_048_));
 sky130_fd_sc_hd__or2_1 _188_ (.A(\txu.shift_reg[0] ),
    .B(_084_),
    .X(_109_));
 sky130_fd_sc_hd__a22o_1 _189_ (.A1(net20),
    .A2(_092_),
    .B1(_109_),
    .B2(_091_),
    .X(_047_));
 sky130_fd_sc_hd__o21a_1 _190_ (.A1(net21),
    .A2(_086_),
    .B1(_087_),
    .X(_046_));
 sky130_fd_sc_hd__and4_1 _191_ (.A(\bg.baud_tick ),
    .B(\txu.busy ),
    .C(\txu.bit_count[1] ),
    .D(\txu.bit_count[0] ),
    .X(_110_));
 sky130_fd_sc_hd__and3_1 _192_ (.A(\txu.bit_count[3] ),
    .B(\txu.bit_count[2] ),
    .C(_110_),
    .X(_111_));
 sky130_fd_sc_hd__a21oi_1 _193_ (.A1(\txu.bit_count[2] ),
    .A2(_110_),
    .B1(\txu.bit_count[3] ),
    .Y(_112_));
 sky130_fd_sc_hd__nor3_1 _194_ (.A(_088_),
    .B(_111_),
    .C(_112_),
    .Y(_045_));
 sky130_fd_sc_hd__a21oi_1 _195_ (.A1(\txu.bit_count[2] ),
    .A2(_110_),
    .B1(_088_),
    .Y(_113_));
 sky130_fd_sc_hd__o21a_1 _196_ (.A1(\txu.bit_count[2] ),
    .A2(_110_),
    .B1(_113_),
    .X(_044_));
 sky130_fd_sc_hd__nand2_1 _197_ (.A(\txu.bit_count[1] ),
    .B(\txu.bit_count[0] ),
    .Y(_114_));
 sky130_fd_sc_hd__or2_1 _198_ (.A(\txu.bit_count[1] ),
    .B(\txu.bit_count[0] ),
    .X(_115_));
 sky130_fd_sc_hd__a32o_1 _199_ (.A1(_091_),
    .A2(_114_),
    .A3(_115_),
    .B1(_092_),
    .B2(\txu.bit_count[1] ),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _200_ (.A0(_091_),
    .A1(_092_),
    .S(\txu.bit_count[0] ),
    .X(_116_));
 sky130_fd_sc_hd__clkbuf_1 _201_ (.A(_116_),
    .X(_042_));
 sky130_fd_sc_hd__and4bb_1 _202_ (.A_N(\bg.count[3] ),
    .B_N(\bg.count[2] ),
    .C(\bg.count[1] ),
    .D(\bg.count[0] ),
    .X(_117_));
 sky130_fd_sc_hd__clkbuf_1 _203_ (.A(_117_),
    .X(_000_));
 sky130_fd_sc_hd__inv_2 _204_ (.A(\bg.count[0] ),
    .Y(_001_));
 sky130_fd_sc_hd__and2_1 _205_ (.A(\bg.count[1] ),
    .B(\bg.count[0] ),
    .X(_118_));
 sky130_fd_sc_hd__nor2_1 _206_ (.A(\bg.count[1] ),
    .B(\bg.count[0] ),
    .Y(_119_));
 sky130_fd_sc_hd__nor2_1 _207_ (.A(_118_),
    .B(_119_),
    .Y(_002_));
 sky130_fd_sc_hd__and3_1 _208_ (.A(\bg.count[1] ),
    .B(\bg.count[0] ),
    .C(\bg.count[2] ),
    .X(_120_));
 sky130_fd_sc_hd__nor2_1 _209_ (.A(_000_),
    .B(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__o21a_1 _210_ (.A1(\bg.count[2] ),
    .A2(_118_),
    .B1(_121_),
    .X(_003_));
 sky130_fd_sc_hd__xor2_1 _211_ (.A(\bg.count[3] ),
    .B(_120_),
    .X(_004_));
 sky130_fd_sc_hd__clkbuf_4 _212_ (.A(net9),
    .X(_122_));
 sky130_fd_sc_hd__buf_4 _213_ (.A(_122_),
    .X(_123_));
 sky130_fd_sc_hd__inv_2 _214_ (.A(_123_),
    .Y(_006_));
 sky130_fd_sc_hd__inv_2 _215_ (.A(_123_),
    .Y(_007_));
 sky130_fd_sc_hd__inv_2 _216_ (.A(_123_),
    .Y(_008_));
 sky130_fd_sc_hd__inv_2 _217_ (.A(_123_),
    .Y(_009_));
 sky130_fd_sc_hd__inv_2 _218_ (.A(_123_),
    .Y(_010_));
 sky130_fd_sc_hd__inv_2 _219_ (.A(_123_),
    .Y(_011_));
 sky130_fd_sc_hd__inv_2 _220_ (.A(_123_),
    .Y(_012_));
 sky130_fd_sc_hd__inv_2 _221_ (.A(_123_),
    .Y(_013_));
 sky130_fd_sc_hd__inv_2 _222_ (.A(_123_),
    .Y(_014_));
 sky130_fd_sc_hd__inv_2 _223_ (.A(_123_),
    .Y(_015_));
 sky130_fd_sc_hd__buf_4 _224_ (.A(_122_),
    .X(_124_));
 sky130_fd_sc_hd__inv_2 _225_ (.A(_124_),
    .Y(_016_));
 sky130_fd_sc_hd__inv_2 _226_ (.A(_124_),
    .Y(_017_));
 sky130_fd_sc_hd__inv_2 _227_ (.A(_124_),
    .Y(_018_));
 sky130_fd_sc_hd__inv_2 _228_ (.A(_124_),
    .Y(_019_));
 sky130_fd_sc_hd__inv_2 _229_ (.A(_124_),
    .Y(_020_));
 sky130_fd_sc_hd__inv_2 _230_ (.A(_124_),
    .Y(_021_));
 sky130_fd_sc_hd__inv_2 _231_ (.A(_124_),
    .Y(_022_));
 sky130_fd_sc_hd__inv_2 _232_ (.A(_124_),
    .Y(_023_));
 sky130_fd_sc_hd__inv_2 _233_ (.A(_124_),
    .Y(_024_));
 sky130_fd_sc_hd__inv_2 _234_ (.A(_124_),
    .Y(_025_));
 sky130_fd_sc_hd__buf_4 _235_ (.A(_122_),
    .X(_125_));
 sky130_fd_sc_hd__inv_2 _236_ (.A(_125_),
    .Y(_026_));
 sky130_fd_sc_hd__inv_2 _237_ (.A(_125_),
    .Y(_027_));
 sky130_fd_sc_hd__inv_2 _238_ (.A(_125_),
    .Y(_028_));
 sky130_fd_sc_hd__inv_2 _239_ (.A(_125_),
    .Y(_029_));
 sky130_fd_sc_hd__inv_2 _240_ (.A(_125_),
    .Y(_030_));
 sky130_fd_sc_hd__inv_2 _241_ (.A(_125_),
    .Y(_031_));
 sky130_fd_sc_hd__inv_2 _242_ (.A(_125_),
    .Y(_032_));
 sky130_fd_sc_hd__inv_2 _243_ (.A(_125_),
    .Y(_033_));
 sky130_fd_sc_hd__inv_2 _244_ (.A(_125_),
    .Y(_034_));
 sky130_fd_sc_hd__inv_2 _245_ (.A(_125_),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _246_ (.A(_122_),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _247_ (.A(_122_),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _248_ (.A(_122_),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _249_ (.A(_122_),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _250_ (.A(_122_),
    .Y(_040_));
 sky130_fd_sc_hd__inv_2 _251_ (.A(_122_),
    .Y(_041_));
 sky130_fd_sc_hd__dfrtp_2 _252_ (.CLK(clknet_2_1__leaf_clk),
    .D(_001_),
    .RESET_B(_006_),
    .Q(\bg.count[0] ));
 sky130_fd_sc_hd__dfrtp_1 _253_ (.CLK(clknet_2_1__leaf_clk),
    .D(_002_),
    .RESET_B(_007_),
    .Q(\bg.count[1] ));
 sky130_fd_sc_hd__dfrtp_1 _254_ (.CLK(clknet_2_1__leaf_clk),
    .D(_003_),
    .RESET_B(_008_),
    .Q(\bg.count[2] ));
 sky130_fd_sc_hd__dfrtp_1 _255_ (.CLK(clknet_2_1__leaf_clk),
    .D(_004_),
    .RESET_B(_009_),
    .Q(\bg.count[3] ));
 sky130_fd_sc_hd__dfrtp_4 _256_ (.CLK(clknet_2_1__leaf_clk),
    .D(_000_),
    .RESET_B(_010_),
    .Q(\bg.baud_tick ));
 sky130_fd_sc_hd__dfrtp_1 _257_ (.CLK(clknet_2_2__leaf_clk),
    .D(_042_),
    .RESET_B(_011_),
    .Q(\txu.bit_count[0] ));
 sky130_fd_sc_hd__dfrtp_1 _258_ (.CLK(clknet_2_2__leaf_clk),
    .D(_043_),
    .RESET_B(_012_),
    .Q(\txu.bit_count[1] ));
 sky130_fd_sc_hd__dfrtp_1 _259_ (.CLK(clknet_2_3__leaf_clk),
    .D(_044_),
    .RESET_B(_013_),
    .Q(\txu.bit_count[2] ));
 sky130_fd_sc_hd__dfrtp_1 _260_ (.CLK(clknet_2_2__leaf_clk),
    .D(_045_),
    .RESET_B(_014_),
    .Q(\txu.bit_count[3] ));
 sky130_fd_sc_hd__dfrtp_1 _261_ (.CLK(clknet_2_3__leaf_clk),
    .D(_046_),
    .RESET_B(_015_),
    .Q(net21));
 sky130_fd_sc_hd__dfstp_1 _262_ (.CLK(clknet_2_2__leaf_clk),
    .D(_047_),
    .SET_B(_016_),
    .Q(net20));
 sky130_fd_sc_hd__dfrtp_1 _263_ (.CLK(clknet_2_1__leaf_clk),
    .D(_048_),
    .RESET_B(_017_),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_1 _264_ (.CLK(clknet_2_0__leaf_clk),
    .D(_049_),
    .RESET_B(_018_),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_1 _265_ (.CLK(clknet_2_0__leaf_clk),
    .D(_050_),
    .RESET_B(_019_),
    .Q(net13));
 sky130_fd_sc_hd__dfrtp_1 _266_ (.CLK(clknet_2_0__leaf_clk),
    .D(_051_),
    .RESET_B(_020_),
    .Q(net14));
 sky130_fd_sc_hd__dfrtp_1 _267_ (.CLK(clknet_2_0__leaf_clk),
    .D(_052_),
    .RESET_B(_021_),
    .Q(net15));
 sky130_fd_sc_hd__dfrtp_1 _268_ (.CLK(clknet_2_1__leaf_clk),
    .D(_053_),
    .RESET_B(_022_),
    .Q(net16));
 sky130_fd_sc_hd__dfrtp_1 _269_ (.CLK(clknet_2_1__leaf_clk),
    .D(_054_),
    .RESET_B(_023_),
    .Q(net17));
 sky130_fd_sc_hd__dfrtp_1 _270_ (.CLK(clknet_2_1__leaf_clk),
    .D(_055_),
    .RESET_B(_024_),
    .Q(net18));
 sky130_fd_sc_hd__dfstp_1 _271_ (.CLK(clknet_2_2__leaf_clk),
    .D(_056_),
    .SET_B(_025_),
    .Q(\txu.shift_reg[0] ));
 sky130_fd_sc_hd__dfstp_1 _272_ (.CLK(clknet_2_2__leaf_clk),
    .D(_057_),
    .SET_B(_026_),
    .Q(\txu.shift_reg[1] ));
 sky130_fd_sc_hd__dfstp_1 _273_ (.CLK(clknet_2_3__leaf_clk),
    .D(_058_),
    .SET_B(_027_),
    .Q(\txu.shift_reg[2] ));
 sky130_fd_sc_hd__dfstp_1 _274_ (.CLK(clknet_2_3__leaf_clk),
    .D(_059_),
    .SET_B(_028_),
    .Q(\txu.shift_reg[3] ));
 sky130_fd_sc_hd__dfstp_1 _275_ (.CLK(clknet_2_3__leaf_clk),
    .D(_060_),
    .SET_B(_029_),
    .Q(\txu.shift_reg[4] ));
 sky130_fd_sc_hd__dfstp_1 _276_ (.CLK(clknet_2_3__leaf_clk),
    .D(_061_),
    .SET_B(_030_),
    .Q(\txu.shift_reg[5] ));
 sky130_fd_sc_hd__dfstp_1 _277_ (.CLK(clknet_2_1__leaf_clk),
    .D(_062_),
    .SET_B(_031_),
    .Q(\txu.shift_reg[6] ));
 sky130_fd_sc_hd__dfstp_1 _278_ (.CLK(clknet_2_2__leaf_clk),
    .D(_063_),
    .SET_B(_032_),
    .Q(\txu.shift_reg[7] ));
 sky130_fd_sc_hd__dfstp_1 _279_ (.CLK(clknet_2_2__leaf_clk),
    .D(_064_),
    .SET_B(_033_),
    .Q(\txu.shift_reg[8] ));
 sky130_fd_sc_hd__dfstp_1 _280_ (.CLK(clknet_2_2__leaf_clk),
    .D(_065_),
    .SET_B(_034_),
    .Q(\txu.shift_reg[9] ));
 sky130_fd_sc_hd__dfrtp_4 _281_ (.CLK(clknet_2_3__leaf_clk),
    .D(_066_),
    .RESET_B(_035_),
    .Q(\txu.busy ));
 sky130_fd_sc_hd__dfrtp_1 _282_ (.CLK(clknet_2_0__leaf_clk),
    .D(_005_),
    .RESET_B(_036_),
    .Q(net19));
 sky130_fd_sc_hd__dfrtp_1 _283_ (.CLK(clknet_2_0__leaf_clk),
    .D(_067_),
    .RESET_B(_037_),
    .Q(\rxu.busy ));
 sky130_fd_sc_hd__dfrtp_1 _284_ (.CLK(clknet_2_0__leaf_clk),
    .D(_068_),
    .RESET_B(_038_),
    .Q(\rxu.bit_count[0] ));
 sky130_fd_sc_hd__dfrtp_1 _285_ (.CLK(clknet_2_0__leaf_clk),
    .D(_069_),
    .RESET_B(_039_),
    .Q(\rxu.bit_count[1] ));
 sky130_fd_sc_hd__dfrtp_1 _286_ (.CLK(clknet_2_0__leaf_clk),
    .D(_070_),
    .RESET_B(_040_),
    .Q(\rxu.bit_count[2] ));
 sky130_fd_sc_hd__dfrtp_1 _287_ (.CLK(clknet_2_0__leaf_clk),
    .D(_071_),
    .RESET_B(_041_),
    .Q(\rxu.bit_count[3] ));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(data[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(data[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(data[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(data[3]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(data[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(data[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(data[6]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(data[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(rst),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input10 (.A(tx_start),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_4 output11 (.A(net11),
    .X(rx_data[0]));
 sky130_fd_sc_hd__clkbuf_4 output12 (.A(net12),
    .X(rx_data[1]));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(rx_data[2]));
 sky130_fd_sc_hd__clkbuf_4 output14 (.A(net14),
    .X(rx_data[3]));
 sky130_fd_sc_hd__clkbuf_4 output15 (.A(net15),
    .X(rx_data[4]));
 sky130_fd_sc_hd__clkbuf_4 output16 (.A(net16),
    .X(rx_data[5]));
 sky130_fd_sc_hd__clkbuf_4 output17 (.A(net17),
    .X(rx_data[6]));
 sky130_fd_sc_hd__clkbuf_4 output18 (.A(net18),
    .X(rx_data[7]));
 sky130_fd_sc_hd__clkbuf_4 output19 (.A(net19),
    .X(rx_done));
 sky130_fd_sc_hd__clkbuf_4 output20 (.A(net20),
    .X(tx));
 sky130_fd_sc_hd__clkbuf_4 output21 (.A(net21),
    .X(tx_done));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_clk (.A(clknet_0_clk),
    .X(clknet_2_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_clk (.A(clknet_0_clk),
    .X(clknet_2_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_clk (.A(clknet_0_clk),
    .X(clknet_2_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_clk (.A(clknet_0_clk),
    .X(clknet_2_3__leaf_clk));
endmodule
