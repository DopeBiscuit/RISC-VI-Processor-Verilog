# RISC-VI Processor using Verilog

This repository contains a RISC-VI processor implementation using Verilog. The project includes the processor design and all the necessary modules, along with their respective testbenches for easy testing and verification.

## Background

Building upon my passion for computer architecture and embedded systems, I embarked on a journey to create a functional RISC-VI processor using Verilog. This educational project allowed me to delve into micro-architecture and expand my knowledge in this domain. Throughout the process, I encountered various challenges that pushed me to come up with my own makeshift solutions.

As I dived into the intricacies of micro-architecture and Verilog programming, I gained valuable insights and hands-on experience. While this implementation may not adhere to all best practices or represent the most optimized solution, it served as a stepping stone for me to grasp the fundamentals of processor design and Verilog and vastly improve my skills in these areas.

## Disclaimer

It's important to note that this implementation may not follow all best practices and may not be the most efficient or optimal solution. As an educational project, I relied on my own creativity and problem-solving skills to overcome hurdles along the way. While the processor is functional and capable of executing a variety of instructions, there is always room for improvement in terms of performance, efficiency, and design.

I encourage users and contributors to review the code, provide feedback, and suggest enhancements or optimizations based on their expertise and experience. This project serves as a learning experience and a platform for experimentation, and it should be treated as such.

## About the Project

The RISC-VI processor is a modern, open-source instruction set architecture (ISA) that is gaining popularity in the field of computer architecture and embedded systems. With this project, I aimed to create a functional implementation of the RISC-VI processor using Verilog, a hardware description language (HDL).

The processor design in this repository supports a variety of instruction types, such as I-type, B-type, R-type, J-type, and S-type. By implementing these instruction types, the processor becomes capable of executing a wide range of instructions, making it suitable for various applications and projects.

## Repository Structure

The repository is organized as follows:

```
RISC-VI-Processor
├── risc_v.v                    # Top-level module representing the RISC-VI processor.
├── processor.v                 # This module contains the processor functionality {Controller, Datapath} excluding the memory.
├── controller.v                # Module used in the processor responsible for producing the control signals that control the Datapath.
├── datapath.v                  # Module used in the processor responsible for executing the instructions based on the control signals.
├── imem.v                      # Instruction memory module, stores the instructions to be executed by the processor.
├── dmem.v                      # Data memory module, stores the data to be used and stored by the processor.
├── reg_file.v                  # Register file module, stores the registers used by the processor for reading and writing data.
|             
├── test                        # Directory containing testbenches for each module
│   ├── risc_v_tb.v             # Testbench for the top-level module using a simple program stored in the imem.txt file.
│   ├── controller_tb.v         # Testbench for the functionality of the controller module and the implicit modules it contains.
│   ├── datapath_tb.v           # Testbench for the functionality of the datapath module and the implicit modules it contains.
│   ├── imem_tb.v               # Testbench for the read functionality of the instruction memory module.
│   ├── dmem_tb.v               # Testbench for the read and write functionality of the data memory module.
│   └── reg_file_tb.v           # Testbench for the read and write functionality of the register file module.  
|      
├── imem.txt                    # Text file containing the instructions to be executed by the processor.
├── dmem.txt                    # Text file containing the data to be used and stored by the processor.
├── README.md                   # Documentation file (you're reading it right now)
└── LICENSE                     # License file (MIT License)
```

## Getting Started

To use this RISC-VI processor implementation, follow these steps:

1. Clone the repository to your local machine using the following command:

   ```
   git clone https://github.com/DopeBiscuit/RISC-VI-Processor-Verilog.git
   ```

2. Navigate to the cloned directory:

   ```
   cd RISC-VI-Processor-Verilog
   ```

3. You can explore the source code and examine the Verilog modules in the repository. Feel free to modify or extend the design as per your requirements.

4. To test the modules, navigate to the `tests` directory and run the relevant testbench file(s) using a Verilog simulator of your choice. Make sure to include the original modules in the simulator project. For example:

   ```
   cd test
   vsim risc_v_tb.v 
   # Please note that the above command is for ModelSim. You may need to use a different command for your simulator.
   # Please note that you need to include the original modules in the simulator project.
   # Please note that you need to include the imem.txt and dmem.txt files in the simulator project with the data and instructions you want to test.
   ```


   This will run the testbench for `risc_v.v` and provide you with the simulation results and any potential errors.

## Contributing

Contributions to this project are welcome! If you find any issues, have suggestions for improvements, or would like to add new features, please feel free to open an issue or submit a pull request.

When contributing, please ensure that your code follows the existing coding style and conventions. Additionally, make sure to thoroughly test any changes or additions you make.

## License

This project is licensed under the MIT License. For more information, please refer to the [LICENSE](LICENSE) file.

## Acknowledgments

I would like to express my gratitude to the creators and maintainers of the RISC-VI processor architecture, as well as the Verilog community, for their valuable resources and support.

This has been an enlightening experience for me, as I delved into the intricacies of the RISC-VI processor architecture and learned the nuances of Verilog programming. I hope that this project will not only serve as a valuable resource for others but also inspire further exploration and innovation in the field of computer architecture.

## Contact

If you have any questions or need further assistance, feel free to contact me at [abdulrahman.hany003@gmail.com](mailto:abdulrahman.hany003@gmail.com).

Thanks for checking out this project! 👋
Happy coding! 😊
