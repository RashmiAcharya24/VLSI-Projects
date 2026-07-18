# SPI Master Controller in Verilog

I'm excited to share my project where I designed and implemented a SPI Master Controller using Verilog HDL! This module enables 8-bit data transmission over the MOSI line with a 10 MHz SPI clock generated from a 100 MHz system clock.

Key Features:

- Designed for 100 MHz system clock input with SPI clock output at 10 MHz
- Finite State Machine (FSM) with clear state transitions (IDLE, SEND, DONE)
- 8-bit serial data transmission with clean edge detection
- Transmission complete flag (done_send) for efficient data handling

How it Works:

1. Load 8-bit data into data_in
2. Assert load_data high for one system clock cycle
3. Monitor done_send for transmission completion
4. Deassert load_data to reset the FSM

Simulation & Testing:

- Created a testbench to drive clk, reset, and load_data
- Observed spi_data and spi_clk on a waveform viewer
- Verified 8-bit transmission with correct timing

Technologies Used:

- Verilog (HDL)

What I Learned:

- Gained hands-on experience with digital design and SPI protocol
- Developed problem-solving skills and attention to detail
- Improved understanding of clock generation and FSM design

#Verilog #SPI #DigitalDesign #MasterController #HDL #AnmayanTechnologies
