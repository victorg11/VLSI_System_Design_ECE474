module tas (
       input  clk_50,               // 50Mhz input clock
       input  clk_2,                // 2Mhz input clock
       input  reset_n,              // reset async active low
       input  serial_data,          // serial input data
       input  data_ena,             // serial data enable
       output ram_wr_n,             // write strobe to ram
       output [7:0] ram_data,       // ram data
       output [10:0] ram_addr       // ram address
       );

  logic [7:0] shft_reg_out;
  logic byte_assembled_flag;
  logic header_flag;
  logic buffer_write_en;
  logic [31:0] buffer_out;
  logic full_buffer_flag;
  logic find_average;
  logic is_avg_done;
  logic [2:0] byte_bit_cnt;

  //load data into a shift register to form a byte
  shiftreg shift_reg_1 (
   .serial_data(serial_data),
   .clk_50(clk_50),
   .data_en(data_ena),
   .reset_n(reset_n),
   .full_byte(shft_reg_out),
   .byte_bit_cnt(byte_bit_cnt),
   .byte_complete(byte_assembled_flag)
  );

  //check bytes to see if it a header
  detect_header is_data_next(
    .packet_in(shft_reg_out),
    .byte_complete(byte_assembled_flag),
    .is_header(header_flag)
  );
  inputFSM inputSM(
    .clk_50(clk_50),
    .reset_n(reset_n),
    .byte_complete(byte_assembled_flag),
    .header_flag(header_flag),
    .write_buffer(buffer_write_en)
  );
  buffer data_buff(
    .reset_n(reset_n),
    .clk_50(clk_50),
    .clk_2(clk_2),
    .header_flag (header_flag),
    .packet_in(shft_reg_out),
    .write_en(buffer_write_en),
    .all_data(buffer_out),
    .buffer_full(full_buffer_flag)
  );
  averager_SM average_yet(
    .reset_n(reset_n),
    .clk_50(clk_50),
    .buffer_full(full_buffer_flag),
    .find_average(find_average)
  );

  averager calc_average(
    .reset_n(reset_n),
    . clk_2(clk_2),
    .find_average(find_average),
    .full_buffer_flag(full_buffer_flag),
    .buffer_data(buffer_out),
    .average_result(ram_data),
    .average_done(is_avg_done)
  );
  addresser RAM_addr(
    .clk_2(clk_2),
    .average_done(is_avg_done),
    .find_average(find_average),
    .reset_n(reset_n),
    .ram_wr(ram_wr_n),
    .addr(ram_addr)
  );

endmodule
