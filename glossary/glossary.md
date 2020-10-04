[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

# GLOSSARY

## I. General Acronyms and Technical Terms

### ABEL

* Advanced Boolean Expression Language - a structured language that generates
  a fuse map (JEDEC Expression load Language file) for PLDs from Boolean
  equations, truth tables or state diagrams.

### Abstraction

* A way to tangibly describe a digital system. Refer to
  [abstraction level]().

### Abstraction level

* A classification of the system model determined from the model style. As of today,
  system algorithmic models or can system. be at one of five basic levels:
  circuit, logic, functional-block, algorithmic or system.

### Actel

* A manufacturer of FPGAs. Refer to
  [TPClO](),
  [TPC12]()
  and
  [TPC14]().

### Algorithmic level

* One of five basic abstraction levels using procedural concepts to model
  a system using such model styles as algorithms, data structures and FPGA
  architectures.

### Algorithmic synthesis
  
* Transfers the algorithms to structural hardware modules or data structures.

### Algorithms

* An unambiguous, clear procedure.

### All-masks

* The designer has complete control over all the mask layers in the
  VLSI process. The term refers to both full-custom ASICs such as MCMs
  and analog/digital technologies as well as semi-custom standard-cells
  technologies.

### ALU

* Arithmetic and Logic Unit - Part of the CPUs processing section that
  performs arithmetic and logic functions.

### ALS

* Action Logic System - Refer to
  [TI-ALS]().

### Analog/Digital

* Referring to creating analog and/or digital components
  using a VLSI process with all masks available for use.

### ANSI

* American National Standards Institute - A standards setting organization.

### Antifuse

* A term for the type of programming element used in TPC arrays (TI/Actel
  FPGA family). An antifuse is an element which is normally open. but converts
  to a resistive connection when programmed. Refer to
  [TI-ALS]().

### Architecture style

* A particular configuration of the microsystem  hardware. Some examples are
  pipelining, sequential, parallel and combinational.

### ASCII

* American Standard Code for Information Interchange - A standard protocol
  that uses code values ranging from 0 to 127 to represent the alphabet
  (lower and upper case), numbers, punctuation and various non-printing
  control information (ANSI standard No. X3.4-1968).

### ASIC

* Application Specific Integrated Circuit - Custom and/or semi-custom integrated
  circuits used for a particular application.

### ATG

* Automatic Test Generation -Software used to help generale test vectors.

### AVSPI

* Aydin Vector Serial/Parallel Interface - Part of a larger NASA system used
  to gather gamma ray information in the upper atmosphere.

### Behavioral domain

* The highest of the three domains. It provides the description of the
  I/O relationships of the system model using such model styles as RTL,
  state equation, Boolean function and differential equations. In this
  domain, the focus is on what the design does, not how it is built.
  It is very much removed from the underlying technology. The behavioral
  domain also includes constraints imposed upon the system, such as power
  consumption and delay times. Furthermore, it is highly dependent on the
  abstraction. levels; movement up or down the levels is extremely difficult.

### Behavioral synthesis

* Refer to algorithmic synthesis.

### Board Station

* A set of Mentor Graphics EDA tools used for the design of simple to complex
  printed circuit designs.

### Boolean equation

* Algebraic type equations that deals with binary variables and logical
  operations using three basic operators (AND, OR and NOT).

### Boolean function

* Refer to
  [Boolean equation]().

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

* Correlator Controller - Refer to HISC.

### CE

* Concurrent Engineering - A teamwork approach to design that happens
  concurrently, with systems for sharing and managing design information.

### Cell

* Refer to
  [standard-cell]().

### CFI

* CAD Framework Initiative - A non-profit organization working to establish
  framework standards that will completely standardize the operating
  environment. The focus is on: design representations, intertool
  communication, tool encapsulation and working environment.

### CHDL

* Computer Hardware Description Language - A subset of DHSL with dichotomy
  capabilities for designing digital computers.

### Chip

* Slang for an integrated circuit. Refer to IC.

### CHL

* Computer Hardware Language - Refer to
  [CHDL]().

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

* Configurable Logic Block-Within LCA. From Xilinx.

### Clock skew

* In the same synchronous system, the difference between arrival times of
  the clock at different areas.

### CLSI

* CAD Language Systems, Inc. -A CAE company.

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
  [sequential logic]().

### Compile

* The means to translate source code into object code, checking for errors
  along the way.  May or may not include a linker.

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

* Happening or operating at the same time. Refer to CE.

### Constructs

* The building block of a language. Refer to
  [syntax]()
  and
  [semantics]().

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
  [RTL]().

### Debugger

* A program to help find errors in language programs.

### DEC

* Digital Equipment Corporation -A company that designs and manufactures
  computers and other digital systems.

### DECstation

* Digital Equipment Corporation's workstation family that runs ULTRIX.

### DECwindows

* Digital Equipment Corporation's windows environment that runs on
  UNIX-based workstations.

### Description

* Refer to
  [system model]().

### Description tool

* A software tool used to help a designer create, at a certain abstraction
  layer, a model of a system. Schematic capture and HDL are two popular tools.

### Design automation

* Stays at the same abstraction level and domain whereas a synthesis process
  changes levels or domains. In effect, synthesis is a superset of design
  automation.

### Design domain

* A time-independent (static) graphical representation of three basic
  interrelated elements: microsystem technologies, description tools and
  conceptual-system; used for viewing a digital system.

### Design framework

* A basic structure used to view and analyze the four basic elements of system
  development: system models, EDA tools, microsystem technologies and design
  methodologies. Refer to low-level and high-level design framework.

### Design-house

* An ASIC design facility which provides expertise and assistance in
  the ASIC design process, may be either part of an ASIC supplier or
  run independently.

### Design methodology

* The process used to develop a system from concept-to-silicon. Refer to
  [vertical]()
  and
  [horizontal design methodology]().

### DFT

* Design for Test - A system model with the capability for testing.

### DHDL

* Digital Hardware Description Language - A subset of HDL for designing digital
  systems.

### DHL

* Digital Hardware Language - A subset of HL for designing digital hardware.

### DHSL

* Digital Hardware/Software Language - A Subset of HSL. Merger of PL and DHL.

### Dice

* Plural of die.

### Dichotomy

* To mutually exclusive areas such as the control and process sections of
  a microprocessor.

### Die

* A system on a single silicon substrate before before being placed into a package.
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

* A CAD program that assists a designer during system development usually with
  part or all of the process automated (e.g. simulators, compilers, synthesizers
  and design entry tools).

### Emulate

* Refer to [emulation]().

### Emulation

* A process in which a system model, containing functional and structural information
  is used to predict it's overall behavior for any given sequence of inputs.
  Different from simulation.

### Emulator

* An emulator, tool.

### EPLD

* Erasable PLD.

### Fabrication

* The process of fabricating an IC.

### Falcon Framework

* Mentor Graphics software framework.

### Fan-in

* The number of output signals driven by a single output.

### Fan-out

* The number of input si gn al s dri ven by a single input.

### Fault

* A failure.

### Firmware

* Software on a machine which is n ot changeable by the end user (i.e. microprogram).

### First-silicon

* The system models were prototyped and verified to work correctly the first time.

### Flip-flop

* A sequential device that samples its input and changes its output only at
  times determined by a clocking signal. Refer to
  [latch]().

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
  from an FPGA.

### FPGA

* Field Programmable Gate Array - A semi-custom device with highly structured
  gates that is programmed by the designer instead of a foundry. Some are
  reprogrammable.

### Framework

* A basic structure of ideas. Refer to
  [design framework]().

### FRITS

* FRamework Including Test Systems - Alternative System Concepts framework
  that is part of VBIT.

### Full-custom VLSI

* All masks in a VLSI process are designed by a user.

### Functional-block level

* One of five basic abstraction levels using  such model styles as state
 equations, registers and floor plans to represent a system.

### Functional synthesis

* Also called RTL synthesis. It starts with a set of states and a set of
  register-transfers for each state which follows a clock cycle.
  The synthesis process allocates a datapath and schedules a control unit.
  The datapath contains the storage elements and functional units that
  perform the given register-transfer. The control unit commands the sequence
  of states for the register-transfer.
  
### Fusemap

* Design file containing a list of antifuse addresses used to program a
  device such as an FPGA.

### Gate

* Refer to
  [logic gate]().

### Gate array

* A semi-custom device with highly structured gates in which the metal layers are
  fabricated at a foundry.

### Glue logic

* tbd

### HDL

* tbd

### High-level

* tbd

### High-level design framework

* tbd

### High-level synthesis

* tbd

### HISC

* tbd

### HL

* tbd

### HLS

* tbd

### Horizontal design methodology

* tbd

### HSL

* tbd

### IEEE

* tbd

### In-house

* tbd

### Instruction set

* tbd

### Integrated-engineering

* tbd

### Intel

* tbd

### I/O

* tbd

### IOB

* tbd

### JEDEC

* tbd

### Karnaugh map

* tbd

### KGD

* tbd

### Language

* tbd

### Latch

* tbd

### LCA

* tbd

### LCC

* tbd

### Lead

* tbd

### LIT

* tbd

### Logic gates

* tbd

### Logic level

* tbd

### Logic module

* tbd

### Logic synthesis

* tbd

### Low-level

* tbd

### Low-level design framework

* tbd

### Low-level synthesis

* tbd

### LSI

* tbd

### Magic

* tbd

### Mask

* tbd

### MCM

* tbd

### MCM-C

* tbd

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

### TPClO

* tbd

### TPCl2

* tbd

### TPCl4

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
