
# Systolic Array – RTL to Physical Design

## 📌 Project Overview

This project demonstrates the complete **RTL-to-Physical Design flow of a Systolic Array** using Verilog HDL and Cadence EDA tools.

A Systolic Array is a parallel processing architecture consisting of multiple interconnected Processing Elements (PEs). Data moves systematically between the PEs, enabling efficient parallel computation. Systolic arrays are widely used in applications such as **matrix multiplication, digital signal processing, and AI/ML accelerators**.

The design was developed at the RTL level and implemented through synthesis and physical design using **Cadence Genus and Innovus**.

---

## 🎯 Objectives

* Design a Systolic Array using Verilog HDL.
* Understand the architecture and operation of Processing Elements.
* Verify RTL functionality using simulation.
* Perform RTL synthesis using Cadence Genus.
* Generate and analyze the synthesized gate-level netlist.
* Perform physical design using Cadence Innovus.
* Understand floorplanning, placement, CTS, routing, and timing analysis.
* Gain practical experience with the complete RTL-to-Physical Design flow.

---

## 🏗️ Systolic Array Architecture

The Systolic Array consists of multiple Processing Elements arranged in a regular structure.

Example architecture:

```text
        Data →     Data →     Data →
          │          │          │
          ▼          ▼          ▼
       ┌─────┐    ┌─────┐    ┌─────┐
       │ PE  │───►│ PE  │───►│ PE  │
       └─────┘    └─────┘    └─────┘
          │          │          │
          ▼          ▼          ▼
       ┌─────┐    ┌─────┐    ┌─────┐
       │ PE  │───►│ PE  │───►│ PE  │
       └─────┘    └─────┘    └─────┘
          │          │          │
          ▼          ▼          ▼
       ┌─────┐    ┌─────┐    ┌─────┐
       │ PE  │───►│ PE  │───►│ PE  │
       └─────┘    └─────┘    └─────┘
```

Each Processing Element performs computation and passes data to neighboring Processing Elements.

---

## 🔄 RTL-to-Physical Design Flow

```text
Verilog RTL
     ↓
RTL Simulation
     ↓
RTL Synthesis – Cadence Genus
     ↓
Gate-Level Netlist
     ↓
Floorplanning – Cadence Innovus
     ↓
Power Planning
     ↓
Placement
     ↓
Clock Tree Synthesis (CTS)
     ↓
Routing
     ↓
Timing Analysis
     ↓
Final Physical Design
```

---

## 💻 RTL Design

The Systolic Array was described using **Verilog HDL**.

The RTL consists of multiple Processing Elements connected in a structured array. Each PE performs the required arithmetic operation and passes intermediate data to the next PE.

The RTL was verified using a testbench before proceeding to synthesis.

---

## 🔬 RTL Synthesis Using Cadence Genus

The verified RTL design was synthesized using **Cadence Genus**.

### Main steps:

1. Read Verilog RTL files.
2. Read technology libraries.
3. Elaborate the design.
4. Apply timing constraints.
5. Perform RTL synthesis.
6. Generate the gate-level netlist.
7. Analyze area and timing reports.

The synthesized netlist was then used as the input for physical implementation.

---

## 🏭 Physical Design Using Cadence Innovus

The synthesized Systolic Array netlist was implemented using **Cadence Innovus**.

### 1. Floorplanning

Defined the core area, aspect ratio, utilization, and placement boundaries.

### 2. Power Planning

Created the required power distribution network for the design.

### 3. Placement

Placed the standard cells within the defined core area.

### 4. Clock Tree Synthesis

Implemented the clock distribution network and analyzed clock timing.

### 5. Routing

Performed signal routing to establish connections between the placed cells.

### 6. Timing Analysis

Analyzed setup and hold timing and checked for timing violations.

### 7. Physical Verification

Checked the physical implementation for possible design and connectivity issues.

---

## 🛠️ Tools and Technologies

| Tool / Technology | Purpose                   |
| ----------------- | ------------------------- |
| Verilog HDL       | RTL Design                |
| Gedit             | RTL and Testbench Editing |
| Cadence Genus     | RTL Synthesis             |
| Cadence Innovus   | Physical Design           |
| Linux/Ubuntu      | VLSI Design Environment   |

---

## 📊 Key Learning Outcomes

Through this project, I gained practical experience in:

* Systolic Array architecture
* Processing Element design
* Verilog RTL design
* RTL simulation
* Logic synthesis
* Gate-level netlist generation
* Timing constraints
* Floorplanning
* Power planning
* Standard-cell placement
* Clock Tree Synthesis
* Routing
* Timing analysis
* RTL-to-Physical Design flow
* Cadence Genus
* Cadence Innovus
* Linux-based VLSI workflow

---

## 🚀 Future Improvements

The project can be extended by:

* Increasing the size of the Systolic Array.
* Optimizing the design for area, power, and performance.
* Implementing matrix multiplication.
* Exploring different Processing Element architectures.
* Performing detailed post-layout analysis.
* Comparing different array configurations.

---

## 👩‍💻 Author

**Laxmi Balesh Ulavi**

Electronics and Communication Engineering

**Areas of Interest:**
VLSI | RTL Design | Physical Design | Digital Design | RISC-V

---

## ⭐ Project Summary

A complete **Systolic Array RTL-to-Physical Design project** demonstrating Verilog RTL development, synthesis using **Cadence Genus**, and physical implementation using **Cadence Innovus**, including floorplanning, power planning, placement, CTS, routing, and timing analysis.
1.jpeg
2.jpeg
3.jpeg
4.jpeg
5.jpeg
6.jpeg
7.jpeg
