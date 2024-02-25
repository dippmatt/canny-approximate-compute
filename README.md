# canny-approximate-compute

## Workflow
Matthias: setup pipeline, testing und benchmarking  
Florian: Sobel Convolution (sqrt and approximate)  
Daniel: Gaussian Blurr  
Oliver: Grayscaler and Edge Thresholds  

## Useful Links
### PYNQ Pipeline
provides wrapper templates
https://github.com/Xilinx/PYNQ_Composable_Pipeline

### Vitis Library
useful examples
https://github.com/Xilinx/Vitis_Libraries/blob/b7b347a00e24eacee2870c4a3ff55cd08870f364/vision/L1/include/imgproc/xf_sobel.hpp

### Hello World
stackoverflow
https://stackoverflow.com/questions/54349895/how-can-i-do-pixel-wise-computation-with-a-xfmat

## Getting started
- Vitis Libraries are developed for Linux and not Windows, therefore, some Linux Distro is required. We worked with Ubuntu 20.04 on the virtual Machine.

- Install Vivado 2020.2 and Vitis HLS 2020.2

- Install & Flash Pynq v2.7 (= a precompiled version of petalinux) on a micro sd card and boot the Pynq Z2 board: [Pynq Boards](http://www.pynq.io/board.html)

### Rebuild HLS IPs & Vivado project

1. Rebuild the HLS IPs:


    For all IPs in the directory `<project directory>/IP/vitis_hls_projects/`, (at the time of writing 'canny2.vhlsprj' and 'grayscaler.vhlsprj'):
- Open the HLS project in Vitis HLS 2020.2 and run the C synthesis.
- Export the RTL as Vivado IP: `Solution -> Export RTL -> Vivado IP (.zip) -> Click 'Ok'`
- If the HLS IPs don't synthesise, because files are missing check the following paths:
    - In the `Explorer` view, right-click on the source file of the respective IP and select `Properties`. For `Resource -> Location -> Edit` select `../../../src/<IP Name>/<Main IP file.cpp>`
    - Select `Project -> Project Settings` and for each source file in `Synthesis` add the following Path to `CFLAGS` and `CSIMFLAGS`: `-I../../Vitis_Libraries/vision/L1/include -std=c++0x`.

2. Rebuild the Vivado Project

- Open Vivado 2020.2 in GUI mode (optionally use vivado in batch mode, etc.)
- Use the TCL Console at the bottom of the GUI interface to recreate the design
    
    `cd <project dir/vivado_projects/canny_pynq_overlay/>`
    `source canny_pynq_overlay.tcl`

    If the project is already generated, you can open `<Project Dir>/vivado_projects/canny_pynq_overlay/canny_2/canny_2.xpr`.

- Select `Generate Bitstream` in the Vivado Tool-Flow to create the bitstream.

3. Boot the Pynq Z2 using SD-Boot (green leds should be on, when board is booted)

- Open a browser window and navigate to `http://pynq:9090/` and log in using `xilinx` as user and `xilinx` as password. 

- In the Jupiter web interface, create a new directory  using the `New` button and upload the hardware Overlay: `New -> Folder`, name it e.g. `Canny_Overlay`
- Navigate to `Canny_Overlay` and select `Upload`. Then select the following files from the Vivado project, needed by Pynq to load the Bitstream and Metadata of the hardware design dynamically:
    - `<Project Dir>/vivado_projects/canny_pynq_overlay/canny_2/canny_2.gen/sources_1/bd/design_1/hw_handoff/design_1.hwh`
    - `<Project Dir>/vivado_projects/canny_pynq_overlay/canny_2/canny_2.runs/impl_1/design_1_wrapper.bit`
    - `<Project Dir>/vivado_projects/canny_pynq_overlay/canny_2/canny_2.runs/impl_1/design_1_wrapper.tcl`

4. Upload the Jupiter Notebook iteself, that loads the Bitstream and uses the IPs, generated in 1.
- Select `Upload` in the Jupiter web interface again. Select `<Project Dir>/jupiter_notebooks/canny_nb.ipynb`. 

5. Open the Notebook and follow the steps in it. Adapt file paths, if they don't match the setup described in this tutorial.