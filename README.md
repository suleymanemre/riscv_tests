# riscv_tests

Basic, easy-to-use RISC-V test programs with corresponding golden logs for verification.

---

## Repository Structure

`./Tests:` Includes test hex codes (which is instructions).

---

## Tests with descriptions
**1- Bubble Sort:**
    - Short: sorting 3 reverse ordered number.
    - Long: sorting 10 reverse ordered number.


## Getting Started

1. **Load Hex Files:**  
   Use the `.hex` files inside `hex_files/` as instruction memory initialization files (`imem.mem`) in your RISC-V processor simulation.

2. **Run Simulation:**  
   Simulate your design with the testbench that runs the loaded program.

3. **Compare Logs:**  
   After simulation, compare your generated log output against the golden logs inside `golden_logs/` to verify correctness.

---

## Naming Convention

Each test is represented by a pair of files with the same base name:  
- `test_name.hex` — Instruction memory file  
- `test_name.golden.log` — Expected output log  

Example:  
- `simple_add.hex`  
- `simple_add.log`

---

## Adding New Tests

1. Add your `.hex` file into `hex_files/`  
2. Add the corresponding golden `.log` file into `golden_logs/`  
3. Update any test lists or scripts if applicable  

---

## Tools & Automation (Optional)

You can use scripts (e.g., Python, shell) to automate:  
- Loading tests  
- Running simulations  
- Comparing outputs with golden logs  


---

## Contact

For questions or contributions, please open an issue or submit a pull request.

---

Happy testing with RISC-V! 🚀