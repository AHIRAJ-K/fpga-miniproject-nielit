# 04 - Bitstream

This folder contains the synthesized **bitstream file** for the FPGA mini project implemented on real FPGA hardware.

## File: `miniproject.bit`

- Generated using **Xilinx Vivado**
- Represents the complete design including:
  - 4:1 MUX
  - 2:4 Decoder
  - 4-bit Latch
  - 2-bit IP Counter
- Used to program the physical FPGA board during the lab workshop at NIELIT Calicut

## How to Use on Real Hardware

1. Open **Vivado Hardware Manager**
2. Connect your FPGA development board via **JTAG**
3. Add the hardware target and establish the connection
4. Load and program the FPGA using `Miniproject.bit`
5. Observe the output through **ChipScope** or external output pins (as configured)

---

**Note**: This bitstream was tested and verified on the FPGA kit provided during the NIELIT workshop. Ensure proper board configuration and clock source when reusing the file.
