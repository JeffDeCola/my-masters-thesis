[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

# GLOSSARY

## I. General Acronyms and Technical Terms

### ABEL

* Advanced Boolean Expression Language - a structured language that generates
  a
  [fuse map](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fusemap)
  **(sic)**
  ([JEDEC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#jedec)
  Expression load Language file) for
  [PLDs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#pld)
  from
  [Boolean equations](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#boolean-equation),
  [truth tables](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#truth-table)
  or
  [state diagrams](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-diagram).

### Abstraction

* A way to tangibly describe a digital system. Refer to
  [abstraction level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level).

### Abstraction level

* A classification of the system model determined from the model style. As of today,
  system models can be at one of five basic levels:
  [circuit](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#circuit-level),
  [logic](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level),
  [functional-block](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#functional-block-level),
  [algorithmic](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#algorithmic-level)
  or
  [system](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-level).

### Actel

* A manufacturer of FPGAs. Refer to
  [TPCl0](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tpc10),
  [TPC12](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tpc12)
  and
  [TPC14](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tpc14).

### Algorithmic level

* One of five basic abstraction levels using procedural concepts to model
  a system using such model styles as algorithms, data structures and
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  architectures.

### Algorithmic synthesis
  
* Transfers the algorithms to structural hardware modules or data structures.

### Algorithms

* An unambiguous, clear procedure.

### All-masks

* The designer has complete control over all the mask layers in the
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi)
  process. The term refers to both full-custom ASICs such as MCMs
  and analog/digital technologies as well as semi-custom standard-cells
  technologies.

### ALU

* Arithmetic and Logic Unit - Part of the CPUs processing section that
  performs arithmetic and logic functions.

### ALS

* Action Logic System - Refer to
  [TI-ALS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti-als).

### Analog/Digital

* Referring to creating analog and/or digital components
  using a
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi)
  process with all masks available for use.

### ANSI

* American National Standards Institute - A standards setting organization.

### Antifuse

* A term for the type of programming element used in TPC arrays (TI/Actel
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  family). An antifuse is an element which is normally open. but converts
  to a resistive connection when programmed. Refer to
  [TI-ALS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti-als).

### Architecture style

* A particular configuration of the microsystem  hardware. Some examples are
  pipelining, sequential, parallel and combinational.

### ASCII

* American Standard Code for Information Interchange - A standard protocol
  that uses code values ranging from 0 to 127 to represent the alphabet
  (lower and upper case), numbers, punctuation and various non-printing
  control information
  ([ANSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ansi)
  standard No. X3.4-1968).

### ASIC

* Application Specific Integrated Circuit - Custom and/or semi-custom integrated
  circuits used for a particular application.

### ATG

* Automatic Test Generation - Software used to help generale test vectors.

### AVSPI

* Aydin Vector Serial/Parallel Interface - Part of a larger
  [NASA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#nasa)
  system used
  to gather gamma ray information in the upper atmosphere.

### Behavioral domain

* The highest of the three domains. It provides the description of the
  I/O relationships of the system model using such model styles as
  [RTL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#rtl),
  state equation, Boolean function and differential equations. In this
  domain, the focus is on what the design does, not how it is built.
  It is very much removed from the underlying technology. The behavioral
  domain also includes constraints imposed upon the system, such as power
  consumption and delay times. Furthermore, it is highly dependent on the
  abstraction. levels; movement up or down the levels is extremely difficult.

### Behavioral synthesis

* Refer to
  [algorithmic synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#algorithmic-synthesis).

### Board Station

* A set of Mentor Graphics EDA tools used for the design of simple to complex
  printed circuit designs.

### Boolean equation

* Algebraic type equations that deals with binary variables and logical
  operations using three basic operators (AND, OR and NOT).

### Boolean function

* Refer to
  [Boolean equation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#boolean-equation).

### Bottom-up modeling

* A methodology which follows a low-to-high progression in which lower system
  level models are integrated with higher system level models, progressing
  up the hierarchy.

### CAD

* Computer Aided Design - Use of a computer to assist in design.

### CAE

* Computer Aided Engineering - Use of a computer to assist in engineering design.

### CAM

* Computer Aided Manufacturing - Use of a computer to assist in manufacturing.

### CASE

* Computer Aided Software Engineering - Technology to aid the introduction
  of true engineering practices and manageability in software engineering.

### CC

* Correlator Controller - Refer to
  [HISC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hisc).

### CE

* Concurrent Engineering - A teamwork approach to design that happens
  concurrently, with systems for sharing and managing design information.

### Cell

* Refer to
  [standard-cell](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#standard-cell).

### CFI

* CAD Framework Initiative - A non-profit organization working to establish
  framework standards that will completely standardize the operating
  environment. The focus is on: design representations, intertool
  communication, tool encapsulation and working environment.

### CHDL

* Computer Hardware Description Language - A subset of
  [DHSL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#dhsl)
  with dichotomy capabilities for designing digital computers.

### Chip

* Slang for an integrated circuit. Refer to IC.

### CHL

* Computer Hardware Language - Refer to
  [CHDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#chdl).

### CIF

* Caltech_ Intermediate Form - Language for describing the layout of a
  chip, popular with universities.

### Circuit level

* The lowest of five basic abstraction levels using such model styles as
  differential equations, transistors and cell details to represent a system.
  Systems modeled at this level are closest to and contain the most detail
  of the underlying technology.

### Circuit synthesis

* Generates a transistor schematic from a set of input/output current,
  voltage or frequency characteristic equations.

### CLB

* Configurable Logic Block-Within
  [LCA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#lca).
  From
  [Xilinx](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#xilinx).

### Clock skew

* In the same synchronous system, the difference between arrival times of
  the clock at different areas.

### CLSI

* CAD Language Systems, Inc. - A
  [CAE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cae)
  company.

### Cluster

* A structured group of transistors.

### CMAC

* Cerebellar Model Arithmetic Computer - A type of neural network.

### CMOS

* Complimentary Metal Oxide Semiconductor - Combination of
  PMOS and NMOS transistors to form a low power switch used in integrated
  circuits.

### Co-design

* Simultaneous development of hardware and software.

### Combinational logic

* Outputs depends only on its current inputs. Refer to
  [sequential logic](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#sequential-logic).

### Compile

* The means to translate source code into object code, checking for errors
  along the way. May or may not include a linker.

### Compiler

* The software tool that compiles source code into object code.

### Concept-to-silicon

* The entire design process fo implementing a system from start (concept)
  to finish (chip).

### Conceptual-system

* Represents a designer's idea (i.e. knowledge and specifications) of a
  system, as opposed to the term 'system' by itself which implies a
  physical structure.

### Concurrent

* Happening or operating at the same time. Refer to
  [CE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ce).

### Constructs

* The building block of a language. Refer to
  [syntax](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#syntax)
  and
  [semantics](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#semantics).

### Correlation

* How well two signals are similar to each other.

### CPGA

* Ceramic Pin Grid Array - A device package.

### CPU

* Central Processing Unit. The section of a computer system that
  performs the control and processing of information.

### Cross-correlation

* How well two different signals are similar to each other.

### Cross-talk

* A disturbance in the signal on one wire by the signal on another wire.

### Dataflow

* Refer to
  [RTL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#rtl).

### Debugger

* A program to help find errors in language programs.

### DEC

* Digital Equipment Corporation - A company that designs and manufactures
  computers and other digital systems.

### DECstation

* Digital Equipment Corporation's workstation family that runs
  [ULTRIX](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ultrix).

### DECwindows

* Digital Equipment Corporation's windows environment that runs on
  UNIX-based workstations.

### Description

* Refer to
  [system model](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-model).

### Description tool

* A software tool used to help a designer create, at a certain abstraction
  layer, a model of a system. Schematic capture and
  [HDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hdl)
  are two popular tools.

### Design automation

* Stays at the same abstraction level and domain whereas a synthesis process
  changes levels or domains. In effect, synthesis is a superset of design
  automation.

### Design domain

* A time-independent (static) graphical representation of three basic
  interrelated elements:
  [microsystem technologies](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#microsystem-technologies),
  [description tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#description-tool)
  and
  [conceptual-system](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#conceptual-system);
  used for viewing a digital system.

### Design framework

* A basic structure used to view and analyze the four basic elements of system
  development: system models, EDA tools, microsystem technologies and design
  methodologies. Refer to low-level and high-level design framework.

### Design-house

* An
  [ASIC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#asic)
  design facility which provides expertise and assistance in
  the ASIC design process, may be either part of an ASIC supplier or
  run independently.

### Design methodology

* The process used to develop a system from concept-to-silicon. Refer to
  [vertical](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vertical-design-methodology)
  and
  [horizontal design methodology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#horizontal-design-methodology).

### DFT

* Design for Test - A system model with the capability for testing.

### DHDL

* Digital Hardware Description Language - A subset of
  [HDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hdl)
  for designing digital
  systems.

### DHL

* Digital Hardware Language - A subset of
  [HL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hl)
  for designing digital hardware.

### DHSL

* Digital Hardware/Software Language - A Subset of
  [HSL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hsl).
  Merger of
  [PL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#pl)
  and
  [DHL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#dhl).

### Dice

* Plural of
  [die](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#die).

### Dichotomy

* Two mutually exclusive areas such as the control and process sections of
  a microprocessor.

### Die

* A system on a single silicon substrate before being placed into a package.
  Usually cut from a silicon wafer.

### DIP

* Dual Inline Package - A standard rectangular IC package with pins extending
  from two larger edges.

### DL

* Design Language - A multi-abstraction level language with refinement
  capabilities.

### DOD

* Department of Defense - A United States government defense agency.

### DRC

* Design Rule Checker - An EDA tool that detects errors in a system
  model.

### DSP

* Digital/Discrete Signal Processing - Processing of discrete signals.

### ECL

* Emitter-Coupled Logic - A digital logic family used for very high speed
  designs where heat and power consumption can be tolerated.

### EDA

* Electronic/Engineering Design Automation - An automated process for use
  in the design of electronic circuits.

### EDA tool

* A
  [CAD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cad)
  program that assists a designer during system development usually with
  part or all of the process automated (e.g.
  [simulators](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#simulator),
  [compilers](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#compiler),
  synthesizers and design entry tools).

### Emulate

* Refer to [emulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#emulation).

### Emulation

* A process in which a system model, containing functional and structural information
  is used to predict it's overall behavior for any given sequence of inputs.
  Different from simulation.

### Emulator

* An emulator tool.

### EPLD

* Erasable
  [PLD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#pld).

### Fabrication

* The process of fabricating an IC.

### Falcon Framework

* Mentor Graphics software framework.

### Fan-in

* The number of output signals driven by a single output.

### Fan-out

* The number of input signals driven by a single input.

### Fault

* A failure.

### Firmware

* Software on a machine which is not changeable by the end user
  (i.e.
  [microprogram](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#microprogram)).

### First-silicon

* The system models were prototyped and verified to work correctly the first time.

### Flip-flop

* A sequential device that samples its input and changes its output only at
  times determined by a clocking signal. Refer to
  [latch](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#latch).

### Floor plans

* In reference to the basic sections of a chip.

### Flowchart

* A graphical representation of an algorithm.

### Formalism

* Strict adherence to set forms.

### Foundry

* A manufacturer of silicon chips.

### FPLA

* Field Programmable Logic Array - A type of programmable logic that has both a
  programmable AND array whose output feeds a programmable OR array.

### FPLD

* Field Programmable Logic Array **(sic)** - A PLD technology, different
  from an
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga).

### FPGA

* Field Programmable Gate Array - A semi-custom device with highly structured
  gates that is programmed by the designer instead of a foundry. Some are
  reprogrammable.

### Framework

* A basic structure of ideas. Refer to
  [design framework](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#design-framework).

### FRITS

* FRamework Including Test Systems - Alternative System Concepts framework
  that is part of
  [VBIT](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vbit).

### Full-custom VLSI

* All masks in a
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi)
  process are designed by a user.

### Functional-block level

* One of five basic abstraction levels using such model styles as state
  equations, registers and floor plans to represent a system.

### Functional synthesis

* Also called
  [RTL synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#rtl-synthesis).
  It starts with a set of states and a set of
  register-transfers for each state which follows a clock cycle.
  The synthesis process allocates a datapath and schedules a control unit.
  The datapath contains the storage elements and functional units that
  perform the given register-transfer. The control unit commands the sequence
  of states for the register-transfer.
  
### Fusemap

* Design file containing a list of
  [antifuse](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#antifuse)
  addresses used to program a device such as an
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga).

### Gate

* Refer to
  [logic gate](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-gates).

### Gate array

* A semi-custom device with highly structured gates in which the metal layers are
  fabricated at a foundry.

### Glue logic

* Simple SSI and MSI logic used to get more complex LSI or VLSI components to
  work together.

### HDL

* Hardware Descriptive Language - Merger of DL and HSL. A multi-abstraction level
  language with refinement capabilities for designing circuitry.

### High-level

* Refers to abstractions **(sic)** levels above the logic level.

### High-level design framework

* Contains system models, EDA tools and design methodologies that are above the
  logic level of abstraction.  This framework has all the capabilities of the
  low-level framework plus the ability to use both a vertical and horizontal
  design methodology.

### High-level synthesis

* A synthesis process above the logic level of abstraction, inherent to the
  high-level design framework.

### HISC

* Host Interface Serial Controller - A digital system used to control up to seven
  correlator processors. Refer to
  [Appendix B](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md#appendix-b).

### HL

* Hardware Language - Are graphic/textual notations which may be used for
  the description of the structural, behavioral and the physical domains of
  hardware at one or more abstraction levels.

### HLS

* High-Level Synthesis - A synthesis process above the logic level of abstraction.

### Horizontal design methodology

* Refer to
  [technology migration](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#technology-migration).

### HSL

* Hardware/Software Language - Merger of
  [PL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#pl)
  and
  [HL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hl).

### IBM

* International Business Machines - A designer and manufacturer of computer
  systems.

### IC

* Integrated Circuit - A system on a silicon substrate.

### IEEE

* Institute of Electrical and Electronics Engineers - An international
  organization of professional engineers known for its publications.

### In-house

* System development that can be accomplished at one place.

### Insertion

* The process of adding a subsystem to a model (e.g. test insertion).

### Instruction set

* The list of all available operations a CPU can perform, written as
  pneumonics to use with a low-level assembly language (i.e. add, sub and AND).

### Integrated-engineering

* Extension of concurrent engineering which includes such issues like human
  factors, total quality and management

### Intel

* A manufacturer of microprocessors.

### I/O

* Input/Output.

### IOB

* Input Output Block - Within
[LCA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#lca).
From
[Xilinx](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#xilinx).

### JEDEC

* Joint Electron Device Engineering Council - A standard making body for
  integrated circuit packages.

### Karnaugh map

* Graphical representation of a logic functions
  [truth table](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#truth-table).

### KGD

* Known-Good
  [Dice](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#dice) -
  Fully tested and working bare dice.

### Language

* A textual form of abstraction used for the representation of a digital system.

### Latch

* A sequential device that watches its inputs and changes its outputs at any time,
  independent of a clocking signal. Refer to
  [flip-flop](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#flip-flop).

### LCA

* Logic Cell Array - Another name for a
  Xilinx
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga),
  From
  [Xilinx](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#xilinx).

### LCC

* Leadless Chip Carrier - A small type of chip package suitable for surface mounting.

### Lead

* A pin on a chip package.

### LIT

* Logic Integration Tool - A software tool used to select the appropriate technology
  based on the design model and design objectives. From Texas Instruments.

### Logic gates

* The primitive components used to perform the logic functions.

### Logic level

* The most widely used of five basic abstraction levels describing the logical
  function of digital systems using such models styles as AND/OR gates,
  Boolean equations and standard-cells.

### Logic module

* The basic logic building block of a TI/Actel FPGA from which all logical functions
  are built. Can be combinatorial or sequential.  Refer to
  [TI-ALS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti-als).

### Logic synthesis

* Very well documented. It starts with Boolean equations that are translated
  into a wirelist of components from a given part library. Usually, vendors
  use the term 'logic synthesis' to represent the end result of any synthesis
  process used to reach the logic level. In reality, many distinctive types
  of synthesis are used.

### Low-level

* Refers to abstractions levels including and below the logic level.

### Low-level design framework

* It contains system models, EDA tools and design methodologies that are below and
  include the logic level of abstraction. It uses only a vertical design methodology.

### Low-level synthesis

* A synthesis process below and including the logic level of abstraction,
  inherent to the
  [low-level design framework](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#low-level-design-framework).

### LSI

* Large Scale Integration - The density of devices having between 100 and 1000
  equivalent gates.

### Magic

* Layout software for
  [CMOS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cmos)
  VLSI circuits.

### Mask

* One of the glass lithographs used in an IC fabrication process.

### MCM

* Multichip Module - A package technology based on placing silicon dice close
  together with interconnections on a substrate.

### MCM-C

* MCM assembly consisting of a thick-film multilayer cofired ceramic.

### MCM-D

* tbd

### MCM-L

* tbd

### MCM-Si

* tbd

### MCM Station

* tbd

### Mentor Graphics

* tbd

### Methodology

* tbd

### Microcode

* tbd

### Microprogram

* tbd

### Micro­ programming

* tbd

### Microsystem technologies

* tbd

### MMC

* tbd

### Model

* tbd

### Model enhancement

* tbd

### Model style

* tbd

### Model Technology

* tbd

### Modeling

* tbd

### Moore's Law

* tbd

### Morphology

* tbd

### Mosis

* tbd

### Multi-level description environment

* tbd

### Multi-level HDL

* tbd

### Multi-level simulation

* tbd

### Multiplexer

* tbd

### MUX

* tbd

### MS-DOS

* tbd

### MSI

* tbd

### MSU

* tbd

### NASA

* tbd

### Netlist synthesis

* tbd

### Non-procedural class

* tbd

### NRE

* tbd

### OEM

* tbd

### Open Windows

* tbd

### Optimization

* tbd

### PAL

* tbd

### Paradigm

* tbd

### PC

* tbd

### PC-Board

* tbd

### PCW

* tbd

### Pentium

* tbd

### PGA

* tbd

### Physical domain

* tbd

### Physical synthesis

* tbd

### PL

* tbd

### PLA

* tbd

### PLA_Table

* tbd

### PLCC

* tbd

### PLD

* tbd

### Powerview

* tbd

### Procedural class

* tbd

### Propagation delay

* tbd

### Prototyping

* tbd

### RAM

* tbd

### Random logic

* tbd

### Real-time

* tbd

### Register

* tbd

### Reverse engineering

* tbd

### Reverse synthesis

* tbd

### ROM

* tbd

### RPST

* tbd

### RT

* tbd

### RTL

* tbd

### RTL

* tbd

### RTL synthesis

* tbd

### Semantics

* tbd

### Semi-conductor

* tbd

### Semi-custom VLSI

* tbd

### Semi-procedural class

* tbd

### Sequential logic

* tbd

### Simulate

* tbd

### Simulation

* tbd

### Simulator

* tbd

### SMD

* tbd

### Solder bump

* tbd

### SPARCstation

* tbd

### SSI

* tbd

### Standard-cell

* tbd

### Standard part

* tbd

### State diagram

* tbd

### State equations

* tbd

### State machine

* tbd

### State table

* tbd

### State transitions

* tbd

### Structural Domain

* tbd

### Sum-of-products

* tbd

### Sun Microsystems

* tbd

### SunOS

* tbd

### Syntax

* tbd

### Synthesis

* tbd

### Synthesis process

* tbd

### Synthesis system

* tbd

### System

* tbd

### System level

* tbd

### System model

* tbd

### System representation

* tbd

### System synthesis

* tbd

### TAB

* tbd

### Taxonomy

* tbd

### TCE

* tbd

### Technology

* tbd

### Technology­-dependent

* tbd

### Technology­-independent

* tbd

### Technology migration

* tbd

### Testability

* tbd

### Thick-film

* tbd

### Thin-film

* tbd

### TI

* tbd

### TI-ALS

* tbd

### TI/Actel

* tbd

### Time-dependent

* tbd

### Time-independent

* tbd

### Time-to-market

* tbd

### TMS320

* tbd

### Tool-dependent

* tbd

### Tool-independent

* tbd

### Top-down methodology

* tbd

### Topology

* tbd

### TPC10

* tbd

### TPC12

* tbd

### TPC14

* tbd

### Transactional class

* tbd

### Translation

* tbd

### Transition table

* tbd

### Transistor functions

* tbd

### Truth table

* tbd

### TTL

* tbd

### ULSI

* tbd

### ULTRIX

* tbd

### UNH

* tbd

### UNIX

* tbd

### VBIT

* tbd

### Verilog

* tbd

### Vertical design methodology

* tbd

### VHDL

* tbd

### VHSIC

* tbd

### Viewlogic

* tbd

### Virtual

* tbd

### Virtual time

* tbd

### VLSI

* tbd

### Wave/Particle Correlator

* tbd

### Wire bond

* tbd

### Workview

* tbd

### WSI

* tbd

### XC3000

* tbd

### XC4000

* tbd

### Xilinx

* tbd

## II. CAE Environment Acronyms and Technical Terms

### Attribute

* tbd

### Back annotation

* tbd

### Block

* tbd

### Bus

* tbd

### Critical net

* tbd

### Critical path

* tbd

### Component

* tbd

### CUI

* tbd

### Delay simulation

* tbd

### Design file

* tbd

### Design manager

* tbd

### EDIF

* tbd

### Fixed macro

* tbd

### Functional simulation

* tbd

### GUI

* tbd

### Hard macro

* tbd

### Hierarchy

* tbd

### IGES

* tbd

### Instance

* tbd

### Instantiate

* tbd

### IPC

* tbd

### Label

* tbd

### Level

* tbd

### Library

* tbd

### Module

* tbd

### Net

* tbd

### Netlist

* tbd

### Parts list

* tbd

### Path

* tbd

### Pin

* tbd

### Primitive

* tbd

### Schematic

* tbd

### Schematic capture

* tbd

### Schematic capture description tool

* tbd

### Schematic editor

* tbd

### Sheet

* tbd

### Soft macro

* tbd

### Symbol

* tbd

### System level

* tbd

### System hierarchy

* tbd

### Test vectors

* tbd

### Text

* tbd

### Timing simulation

* tbd

### Tool framework

* tbd

### Tools

* tbd

### Verification

* tbd

### Wirelist

* tbd
