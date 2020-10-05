# GLOSSARY

[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

* [I. General Acronyms and Technical Terms](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#i-general-acronyms-and-technical-terms)
* [II. CAE Environment Acronyms and Technical Terms](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ii-cae-environment-acronyms-and-technical-terms)

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

* A manufacturer of
  [FPGAs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga).
  Refer to
  [TPCl0](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tpc10),
  [TPC12](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tpc12)
  and
  [TPC14](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tpc14).

### Algorithmic level

* One of five basic
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  using procedural concepts to model
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
  process. The term refers to both full-custom
  [ASIC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#asic)s
  such as
  [MCMs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm)
  and analog/digital technologies as well as semi-custom
  [standard-cells](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#standard-cell)
  technologies.

### ALU

* Arithmetic and Logic Unit - Part of the
  [CPUs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cpu)
  processing section that performs arithmetic and logic functions.

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

* A term for the type of programming element used in TPC arrays
  ([TI/Actel](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tiactel)
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  family). An antifuse is an element which is normally open. but converts
  to a resistive connection when programmed. Refer to
  [TI-ALS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti-als).

### Architecture style

* A particular configuration of the microsystem  hardware. Some examples are pipelining,
  [sequential](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#sequential-logic),
  parallel and
  [combinational](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#combinational-logic).

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

* A set of
  [Mentor Graphics](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mentor-graphics)
  [EDA tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool)
  used for the design of simple to complex printed circuit designs.

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

* Slang for an integrated circuit. Refer to
  [IC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ic).

### CHL

* Computer Hardware Language - Refer to
  [CHDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#chdl).

### CIF

* Caltech_ Intermediate Form - Language for describing the layout of a
  chip, popular with universities.

### Circuit level

* The lowest of five basic
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  using such model styles as
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
  layer, a model of a system.
  [Schematic capture](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#schematic-capture)
  and
  [HDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hdl)
  are two popular tools.

### Design automation

* Stays at the same
  [abstraction level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  and domain whereas a
  [synthesis process](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#synthesis-process)
  changes levels or domains. In effect, synthesis is a superset of
  [design automation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#design-automation).

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
  development: system models,
  [EDA tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool),
  microsystem technologies and
  [design methodologies](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#design-methodology).
  Refer to
  [low-level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#low-level-design-framework)
  and
  [high-level design framework](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#high-level-design-framework).

### Design-house

* An
  [ASIC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#asic)
  design facility which provides expertise and assistance in
  the
  [ASIC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#asic)
  design process, may be either part of an
  [ASIC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#asic)
  supplier or
  run independently.

### Design methodology

* The process used to develop a system from
  [concept-to-silicon](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#concept-to-silicon).
  Refer to
  [vertical](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vertical-design-methodology)
  and
  [horizontal design methodology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#horizontal-design-methodology).

### DFT

* Design for Test - A system model with the capability for testing.

### DHDL

* Digital Hardware Description Language - A subset of
  [HDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hdl)
  for designing digital systems.

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

* Dual Inline Package - A standard rectangular
  [IC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ic)
  package with pins extending
  from two larger edges.

### DL

* Design Language - A multi-abstraction level language with refinement
  capabilities.

### DOD

* Department of Defense - A United States government defense agency.

### DRC

* Design Rule Checker - An
  [EDA tool](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool)
  that detects errors in a system model.

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
  Different from
  [simulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#simulation).

### Emulator

* An emulator tool.

### EPLD

* Erasable
  [PLD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#pld).

### Fabrication

* The process of fabricating an
  [IC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ic).

### Falcon Framework

* [Mentor Graphics](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mentor-graphics)
  software framework.

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

* Simple
  [SSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ssi)
  and
  [MSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#msi)
  logic used to get more complex
  [LSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#lsi)
  or
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi)
  components to work together.

### HDL

* Hardware Descriptive Language - Merger of
  [DL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#dl)
  and
  [HSL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hsl).
  A multi-abstraction level
  language with refinement capabilities for designing circuitry.

### High-level

* Refers to abstractions **(sic)** levels above the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level).

### High-level design framework

* Contains system models,
  [EDA tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool)
  and design methodologies that are above the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level)
  of abstraction. This framework has all the capabilities of the
  [low-level framework](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#low-level-design-framework)
  plus the ability to use both a
  [vertical](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vertical-design-methodology)
  and
  [horizontal design methodology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#horizontal-design-methodology).

### High-level synthesis

* A synthesis process above the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level)
  of abstraction, inherent to the
  [high-level design framework](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#high-level-design-framework).

### HISC

* Host Interface Serial Controller - A digital system used to control up to seven
  correlator processors. Refer to
  [Appendix B](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md#appendix-b).

### HL

* Hardware Language - Are graphic/textual notations which may be used for
  the description of the
  [structural](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#structural-domain),
  [behavioral](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#behavioral-domain)
  and the
  [physical domains](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#physical-domain)
  of hardware at one or more
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level).

### HLS

* High-Level Synthesis - A synthesis process above the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level)
  of abstraction.

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

* The list of all available operations a
  [CPU](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cpu)
  can perform, written as
  pneumonics to use with a low-level assembly language (i.e. add, sub and AND).

### Integrated-engineering

* Extension of concurrent engineering which includes such issues like human
  factors, total quality and management.

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
  Fully tested and working bare
  [dice](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#dice).

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
  based on the design model and design objectives. From
  [Texas Instruments](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti).

### Logic gates

* The primitive components used to perform the logic functions.

### Logic level

* The most widely used of five basic
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  describing the logical
  function of digital systems using such models styles as AND/OR gates,
  [Boolean equations](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#boolean-equation)
  and
  [standard-cells](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#standard-cell).

### Logic module

* The basic logic building block of a
  [TI/Actel](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tiactel)
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  from which all logical functions are built. Can be
  [combinatorial](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#combinational-logic)
  or
  [sequential](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#sequential-logic).
  Refer to
  [TI-ALS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti-als).

### Logic synthesis

* Very well documented. It starts with
  [Boolean equations](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#boolean-equation)
  that are translated
  into a wirelist of components from a given part library. Usually, vendors
  use the term 'logic synthesis' to represent the end result of any synthesis
  process used to reach the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level).
  In reality, many distinctive types of synthesis are used.

### Low-level

* Refers to abstractions levels including and below the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level).

### Low-level design framework

* It contains
  [system models](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-model),
  [EDA tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool)
  and
  [design methodologies](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#design-methodology)
  that are below and include the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level)
  of abstraction. It uses only a
  [vertical design methodology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vertical-design-methodology).

### Low-level synthesis

* A synthesis process below and including the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level)
  of abstraction, inherent to the
  [low-level design framework](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#low-level-design-framework).

### LSI

* Large Scale Integration - The density of devices having between 100 and 1000
  equivalent gates.

### Magic

* Layout software for
  [CMOS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cmos)
  VLSI circuits.

### Mask

* One of the glass lithographs used in a
  [IC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ic)
  fabrication process.

### MCM

* Multichip Module - A package technology based on placing silicon dice close
  together with interconnections on a substrate.

### MCM-C

* MCM assembly consisting of a thick-film multilayer cofired ceramic.

### MCM-D

* MCM assembly consisting of a thin-film multilayer deposited organic on
  silicon, metal or ceramic substrate.

### MCM-L

* MCM assembly consisting using a high-density laminated printed-circuit board
  technology.

### MCM-Si

* MCM assembly consisting of a thin-film multilayer silicon dioxide on a
  silicon substrate.

### MCM Station

* A set of
  [Mentor Graphics](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mentor-graphics)
  [EDA tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool)
  used for the design of
  [MCMs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm).

### Mentor Graphics

* A
  [CAE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cae)
  company.

### Methodology

* A process used to accomplish a goal.

### Microcode

* Refer to
  [microprogram](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#microprogram).

### Microprogram

* An extremely low-level form of software that executes an instruction from the
  [instruction set](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#instruction-set).
  Can be considered on-silicon firmware.

### Micro­-programming

* The process of creating a
  [microprogram](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#microprogram).

### Microsystem technologies

* The available physical means to implement a system
  (e.g.
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi),
  [MCMs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm),
  [standard parts](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#standard-part)
  and
  [FPGAs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)).

### MMC

* Massachusetts Microelectronics Center - A fabrication plant for the purpose of
  education.

### Model

* Refer to
  [system model](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-model).

### Model enhancement

* Adds a capability to a
  [system model](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-model),
  usually through a
  [design automation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#design-automation)
  process.

### Model style

* A particular classification of a
  [system model](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-model)
  that is at a certain
  [abstraction level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  ( e.g.
  [Boolean equations](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#boolean-equation),
  [flowcharts](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#flowchart)
  and
  [logic gates](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-gates)).

### Model Technology

* A
  [CAE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cae)
  company.

### Modeling

* The process of creating a
  [system model](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-model)
  using a
  [description tool](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#description-tool).

### Moore's Law

* A law that predicts the doubling in transistor density every two years.

### Morphology

* Geometrical and topological information.

### Mosis

* An organization which provides low volume, low cost
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi)
  services managed by DARPA and NSF.

### Multi-level description environment

* A collection of more than one
  [description tool](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#description-tool)
  covering different as well as overlapping
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level).

### Multi-level HDL

* A
  [description tool](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#description-tool)
  that can model a system at more then one
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level),
  usually above and including the
  [logic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-level)
  of abstraction.

### Multi-level simulation

* The ability to simulate system models that contain integrated models of various
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  developed from one or more
  [description tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#description-tool).

### Multiplexer

* A digital switch connecting data from one of n sources (chosen from a
  select input) to its output.

### MUX

* Another term for
  [multiplexer](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#multiplexer).

### MS-DOS

* Microsoft Disk Operating System - A PC-based operating system.

### MSI

* Medium Scale Integration - The density of devices having between 12 and 100
  equivalent gates.

### MSU

* Mississippi State University - In reference to a library of
  [standard-cells](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#standard-cell)
  used for a
  [CMOS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cmos)
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi)
  process.

### NASA

* National Aeronautics and Space Agency - The United States government's space agency.

### Netlist synthesis

* Refer to
  [physical synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#physical-synthesis).

### Non-procedural class

* Class of system representations that contains no software algorithms.
  The term itself means no procedures are used. It covers the entire
  [physical](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#physical-domain)
  and most of the
  [structural domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#structural-domain).
  This class can be exclusively described
  using physical symbols such as
  [logic gates](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#logic-gates),
  chips and
  [floor plans](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#floor-plans).

### NRE

* Non-Recurring Engineering/Expenses - One time expense, not occurring over
  and over.

### OEM

* Original Equipment Manufacturer.

### OpenWindows

* Sun microsystems windows environment that runs on UNIX-based workstations.

### Optimization

* The process of refining a model to optimize the designer's specifications.

### PAL

* Programmable Array Logic - A type of programmable logic that implements a
  [sum-of-products](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#sum-of-products)
  logic by using a programmable AND array whose output feeds
  a fixed OR array.

### Paradigm

* A model or pattern.

### PC

* Personal Computer - A computer for one user. Usually used to represent an
  [IBM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ibm)
  or an IBM-clone.

### PC-Board

* Printed Circuit Board -
  [ICs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ic)
  that are interconnected on a multilayer board
  (usually made of copper laminated between layers of fiberglass).

### PCW

* Printed Wiring **(sic)** Board - Refer to PCB **(sic)**.

### Pentium

* A microprocessor from
  [Intel](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#intel).

### PGA

* Pin Grid Array - A type of microelectronics packaging.

### Physical domain

* Covers the physical characteristics of the different technologies, such
  as topology (relative placement) and geometry. It ignores, as much as
  possible, the functionality of a system. Its only interest is binding
  its structure in space or to silicon. Like the structural level,
  it is not as dependent on the abstraction levels, hence movement from one
  to another level is performed with little effort.

### Physical synthesis

* One synthesis step because of the ease of movement from one abstraction level
  to the next in the
  [structural domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#structural-domain).

### PL

* Procedural Language (Programming Language) - Express procedures or algorithms
  by means of a control structure and data structure or sequences of instructions.

### PLA

* Programmable Logic Array - A type of programmable logic that implements a
  [sum-of-products](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#sum-of-products)
  logic by using a fixed AND array whose output feeds a
  programmable OR array.

### PLA_Table

* A table that contains output information for a given input.

### PLCC

* Plastic Leaded Chip Carrier - A type of microelectronics surface mount
  packaging that has J-leads on four sides with uniform spacing between leads.

### PLD

* Programmable Logic Device - Any device supplied with an uncommitted logic
  array, which the designer programs to a specific function.

### Powerview

* A set of
  [Viewlogic's](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#viewlogic)
  EDA tools that runs on a Sun
  [SPARCstation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#sparcstation)
  using Openwindows.

### Procedural class

* A class of system representations that contains algorithmic data processes
  proceeding in a sequence of steps. The time sequence execution of instructions
  primarily depends upon the spatial sequence of these instructions within the
  procedural text. This class easily falls into the upper
  [algorithmic level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#algorithmic-level).
  There are two different software classes at the procedural level, software
  and a combination of both hardware and software structures. The former can be
  sequential or concurrent. The latter contains several executing processes
  which run concurrently.

### Propagation delay

* The amount of time it takes for a change in the input signal to produce a
  change in the output signal of a signal path.

### Prototyping

* Developing a preliminary version of a system.

### RAM

* Random Access Memory - Volatile memory. A memory in which every location can
  be accessed in equal time. A combinational circuit with n-inputs corresponding
  to 2<sup>n</sup> memory locations. Two main types: dynamic
  [RAM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ram)
  (DRAM) and static
  [RAM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ram)
  (SRAM).

### Random logic

* Logic functions that do not correspond to a common, structured operation.

### Real-time

* Logic functions that do not correspond to a common, structured operation.

### Register

* A group of
  [flip-flops](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#flip-flop)
  (usually in powers of two), each clocked with the same
  clock signal. Some have the ability to perform elementary operation such as
  shift and increment.

### Reverse engineering

* A procedure, often unethical, which unveils the functionality and details of a
  product.

### Reverse synthesis

* Sometimes loosely defined as reverse engineering, is a
  [synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#synthesis)
  process which travels in the opposite direction, towards a higher
  [abstraction level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  or domain.

### ROM

* Read Only Memory - Unalterable memory. A combinational circuit with n-inputs
  corresponding to 2<sup>n</sup> memory locations. Really just non-volatile
  [RAM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ram).
  Other types such as PROM, EPROM and EEPROM.

### RPST

* Rapid Prototyping Synthesis Tool - A
  [synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#synthesis)
  tool part of
  [VBIT](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vbit).

### RT

* Register transfer - The flow and processing of information from
  [register](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#register)
  to
  [register](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#register).

### RTL

* Register Transfer Level - At the
  [functional block abstraction level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#functional-block-level)
  and behavioral domain that describes the operation of synchronous systems.

### RTL

* Register Transfer Language - A language used to describe the operation of
  synchronous systems with the use of register transfer equations.

### RTL synthesis

* Refer to
  [functional synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#functional-synthesis).

### Semantics

* Meaning of language constructs. Refer to
  [constructs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#constructs)
  and
  [syntax](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#syntax).

### Semi-conductor

* A material, such as silicon, which is between an insulator and a conductor
  used to make transistors.

### Semi-custom VLSI

* The designer uses pre-designed
  [mask](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mask)
  layers, cells or architectures.

### Semi-procedural class

* A class of system representations that are related to software, but not
  algorithmically.
  [State machine](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-machine),
  differential equations and Boolean
  equations fall into this class. These descriptions can act concurrently,
  no algorithms are needed to make them function.

### Sequential logic

* Outputs depend only on its current inputs and also the past sequence of
  events. Refer to
  [combinational logic](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#combinational-logic).

### Simulate

* Refer to
  [simulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#simulation).

### Simulation

* A process in which a
  [system model](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-model),
  containing functional and structural information, is used to predict it's
  overall behavior for any given sequence of inputs. Different from
  [emulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#emulation).

### Simulator

* A simulation
  [EDA tool](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool).

### SMD

* Surface Mount Device - A packaged integrated circuit which fastens to the
  surface of a circuit board. Many popular packaging techniques, such as DIPs,
  have leads which extend through the board and are, therefor, not surface
  mounted.

### Solder bump

* A technique used to connect
  [die](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#die)
  pads to
  [MCM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm)
  assemblies.

### SPARCstation

* Sun's workstation family that runs
  [SunOS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#sunos).

### SSI

* Small Scale Integration - The density of devices having up to 12 equivalent
  gates.

### Standard-cell

* Partial masks in a
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi)
  process are designed by the user. A library of pre-designed cells are
  available for the designer to use.

### Standard part

* A collection of pre-designed components.

### State diagram

* The information in a
  [state table](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-table)
  that is represented graphically.

### State equations

* Boolean equations for the inputs to the
  [flip-flops](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#flip-flop)
  in a
  [state machine](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-machine).
  See
  [state transitions](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-transitions).

### State machine

* A sequential circuit There are finite and infinite
  [state machines](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-machine).

### State table

* A time sequence of inputs, outputs, and
  [flip-flops](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#flip-flop)
  states containing four
  basic sections; present state, input, next state and output. Some texts
  refer to this as a variation of a
  [transition table](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#transition-table).

### State transitions

* One
  [abstraction level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  below
  [state equations](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-equations).

### Structural Domain

* Describes the partitioning, interfacing and interconnections of the different
  components or modules of a digital system. Partitioning defines how a given
  system is broken up into modules, which is the basis for hierarchy.
  Interfacing specifies the external view of the system and its modules -
  the ports that are used for the interconnections. The
  [structural domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#structural-domain)
  can be described as a wirelist of interconnected components. In contrast to the
  [behavioral domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#behavioral-domain),
  the
  [structural domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#structural-domain)
  is less dependent on the
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level),
  thus, very little effort is needed to go from one level to another. For
  example, movement from the
  [functional-block level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#functional-block-level)
  to the logic level requires less effort than in the
  [behavioral domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#behavioral-domain).

### Sum-of-products

* A logical sum of product terms.

### Sun Microsystems

* A designer and manufacturer of computers and other digital systems.

### SunOS

* A
  [UNIX](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#unix)
  operating system clone by
  [Sun Microsystems](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#sun-microsystems).

### Syntax

* The precise way the constructs of a language can be used. Refer to constructs
  and semantics.

### Synthesis

* Refer to
  [synthesis process](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#synthesis-process).

### Synthesis process

* The movement of a system from a higher to a lower abstraction level or domain.
  Synthesis adds another significant layer of detail to the system model,
  refining it more towards a particular technology (a translation is a
  one-to-one mapping).

### Synthesis system

* Contains one or more synthesis tools used to accomplish a
  [synthesis process](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#synthesis-process).

### System

* Used in reference to a digital system. Refer to
  [system model](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-model).

### System level

* The highest of five basic
  [abstraction levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level)
  using such model styles as performance,
  [CPUs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cpu)
  or
  [MCMs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm)
  to represent a system.

### System model

* A collection of one or more design files (at the same
  [abstraction level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#abstraction-level))
  developed from a
  [description tool](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#description-tool)
  that represents a designer's idea.

### System representation

* Referring to one of fifteen basic types of system models.

### System synthesis

* The most abstract of synthesis types that transfers performance
  specifications into one or more interconnected structural modules.

### TAB

* Tape-Automated Bonding - A technique used to connect
  [die](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#die)
  pads to
  [MCM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm)
  assemblies.

### Taxonomy

* A classification.

### TCE

* Thermal Coefficient of Expansion - A coefficient for determining the linear
  dimensional change of a material, per unit change in temperature.
  Usually expressed as parts per million or as inch per inch,
  per degrees centigrade.

### Technology

* Refer to
  [microsystem technology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#microsystem-technologies).

### Technology­-dependent

* A system model that is dependent on a particular technology.

### Technology­-independent

* A system model that is independent of any technology.

### Technology migration

* It pertains to the design process which targets a given system model
  to more than one
  [microsystem technology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#microsystem-technologies).
  It offers the ability to change
  from one technology to another (i.e.
  [migration](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#technology-migration)).
  For example,
  the replacement of a design implemented using standard parts to one
  with
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  devices.

### Testability

* The ability to determine to what extent faults can be identified. Combines
  controllability and observability.

### Thick-film

* Referring to a
  [MCMs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm)
  dielectric layer being thick, relative to the
  [thin-film](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#thin-film).

### Thin-film

* Referring to a
  [MCMs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm)
  dielectric layer being thin, relative to the
  [thick-film](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#thick-film).

### TI

* Texas Instruments - A company that designs and manufactures electronic
  components and
  [CAE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cae)
  systems.

### TI-ALS

* Action Logic System - A set of tools that includes programs to automatically
  place and route
  [TI/Actel](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tiactel)
  [FPGAs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga).
  From
  [Texas Instruments](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti).

### TI/Actel

* Referring to
  [Texas Instrument](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti)
  and
  [Actel](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#actel)
  [FPGAs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga).
  Refer to
  [TPC10](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#tpc10).

### Time-dependent

* Dependent on time.

### Time-independent

* Independent on time.

### Time-to-market

* A relative time of speed a product takes to get into the commercial market.

### TMS320

* A
  [DSP](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#dsp)
  [IC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ic)
  family from
  [Texas Instruments](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ti).

### Tool-dependent

* A model that is dependent on a particular tool.

### Tool-independent

* A model that is independent on a particular tool.

### Top-down methodology

* A methodology that follows a high-to-low progression in which higher system
  level models are designed first, refining the system with lower system level
  models, progressing down the
  [system hierarchy](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-hierarchy).

### Topology

* Abstractions of geometric information showing relative placement.

### TPC10

* [Actel](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#actel)
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  family consisting of the TPC1010 and TPC1020 devices.

### TPC12

* [Actel](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#actel)
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  family consisting of the TPC1225, TPC1240 and 1PC1280 devices.

### TPC14

* [Actel](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#actel)
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  family in preliminary form.

### Transactional class

* A class of system representations that includes network, communication
  protocols, channels, links, messages, network structure, and LANs.
  It falls into the upper system abstraction level. No procedures are
  used with this class. Very few software languages are written as yet
  for the transactional class. For example, Ada is one of the few
  languages written at the upper system level.

### Translation

* A one-to-one mapping. Refer to
  [Synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#synthesis).

### Transition table

* Refer to
  [state table](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-table).

### Transistor functions

* Mathematical equations that describe the function of transistors.

### Truth table

* A table of combinations of the binary variables (list of all that possible
  combinations of O's and l's) showing the relationship between the values
  that the variables take and the result of the operation. Refer to
  [state table](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#state-table).

### TTL

* Transistor-Transistor Logic - The most popular logic family that has many
  forms such as Schottky and low-power Schottky.

### ULSI

* Ultra Large Scale Integration - The density of devices having more then
  [VLSI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vlsi).

### ULTRIX

* A
  [UNIX](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#unix)
  operating system clone by Digital Equipment Corporation.

### UNH

* University of New Hampshire - Located in Durham, New Hampshire.

### UNIX

* A multi-user operating system.

### VBIT

* VHDL Built-In Test - An
  [EDA tool](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool)
  used to incorporate
  [testability](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#testability)
  into digital systems.

### Verilog

* A hardware description language.

### Vertical design methodology

* It corresponds to the traditional design process which targets a given
  system model to a specific
  [microsystem technology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#microsystem-technologies).
  It is very well documented and widely used.

### VHDL

* [VHSIC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#vhsic)
  Hardware Description Language - A
  [hardware description language](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#hdl)
  ([IEEE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ieee)
  1076-1987 Standard).

### VHSIC

* Very High Speed Integrated Circuit - A United States
  [DOD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#dod)
  program used to develop high speed
  [ICs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ic).

### Viewlogic

* A
  [CAE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cae)
  company.

### Virtual

* In effect or in essence, but not strictly defined.

### Virtual time

* Having the essence of time, although not strictly defined.

### VLSI

* Very Large Scale Integration - The density of devices having over 1000
  equivalent gates.

### Wave/Particle Correlator

* A
  [NASA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#nasa)
  device used to examine the cause and effect of electrons
  and electromag­netic energy. Refer to
  [Appendix B](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md#appendix-b).

### Wire bond

* A technique used to connect die pads to
  [MCM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#mcm)
  assemblies.

### Workview

* A set of
  [Viewlogic's](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#viewlogic)
  [EDA tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool)
  that runs on a PC-based system using
  [MS-DOS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ms-dos).

### WSI

* Wafer Scale Integration - The use of an entire wafer for a single system.

### XC3000

* [Xilinx](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#xilinx)
  reprogrammable
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  family.

### XC4000

* [Xilinx](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#xilinx)
  reprogrammable
  [FPGA](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga)
  family.

### Xilinx

* A manufacturer of
  [FPGAs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#fpga).

## II. CAE Environment Acronyms and Technical Terms

### Attribute

* Text usually assigned to a schematic or symbol that provides additional
  information about a design, such as capacitance, delay or current direction.
  An attribute is not used to reference an object. Refer to
  [label](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#label)
  and
  [text](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#text).

### Back annotation

* Post-layout delay information that is back annotated to a
  [simulator](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#simulator)
  for timing analysis.

### Block

* Refer to
  [module](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#model).

### Bus

* A collection of nets that can operate as a group or as a single unit.

### Critical net

* A net whose signal propagation delay is part of the critical path in the
  system.

### Critical path

* The slowest path in the system. Determines the speed of the design.

### Component

* Instantiation of a symbol in a schematic drawing.

### CUI

* Common User Interface - Each application in a software environment,
  usually part of a common framework, having the same user interface.

### Delay simulation

* Refer to
  [timing simulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#timing-simulation).

### Design file

* A file that contains all or part of the information of the system model.

### Design manager

* A tool used to manage files and other
  [EDA tools](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#eda-tool).

### EDIF

* Electronic Design Interchange Format - A standard file format for
  representing data for
  [IC](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ic)
  design so that data can be transferred from the design environment to the
  fabrication environment. Handles data from the gate to the physical level.

### Fixed macro

* A hard macro that has a user-assigned location in the array that is not
  altered by automatic placement.

### Functional simulation

* Simulation that uses a unit delay to catch logical errors in a design.
  Refer to
  [timing simulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#timing-simulation).

### GUI

* Graphical User Interface - A graphical user interface that can be
  part of a
  [CUI](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cui).

### Hard macro

* Unit level macros with fixed relative placement.

### Hierarchy

* Style of organizing a system where a level of a logic system
  is expressed in terms of lower level modules. Lower level modules, in turn,
  be expressed in terms of other lower level modules. Refer to
  [system hierarchy](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-hierarchy).

### IGES

* Initial Graphics Exchange Specification - A standard that handles both graphical,
  mechanical and electrical design data, allowing it to be exchanged between
  [CAD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#cad)
  systems from different vendors.

### Instance

* Each placement of a library element into a design file that defines a unique
  instance of that element.

### Instantiate

* Reference, "Copy of', a symbol.

### IPC

* Institute for Interconnecting and Packaging Electronic Circuits -
  A standard that covers the physical layout of printed circuit boards;
  the artwork, assembly, schematic, and parts drawings; netlists;
  board-testing information; and internal and external design data
  libraries.

### Label

* Text that is attached to and is used as a way to identify and refer
  to a net, component, bus or pin. Refer to
  [attribute](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#attribute)
  and
  [text](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#text).

### Level

* Refer to
  [system level](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#system-level).

### Library

* A collection of graphic symbols and their corresponding functional descriptions.

### Module

* A partition of a system, usually major functional areas.

### Net

* Electrical connection between components. Represents a physical wire.

### Netlist

* A list of all the connections in a design. For each signal name,
  the pins of a particular component is listed.  Used as an input for most
  back-end manufacturing tools.

### Parts list

* List of all the components used in a design.

### Path

* An implied connection of one or more
  [nets](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#net)
  with two adjacent
  [nets](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#net)
  always passing through the same component.

### Pin

* Part of a component used for interconnecting
  [nets](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#net)
  or
  [buses](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#bus).

### Primitive

* Basic building blocks of a description tool that are structural
  (uniform at all levels) or functional (uniform at one level).

### Schematic

* Part or all of a system model represented using components and their
  interconnections on a system level. Enough detail is given to construct
  the system. They can either be flat or hierarchical.

### Schematic capture

* The process of editing a schematic using a schematic capture description tool.

### Schematic capture description tool

* An EDA graphical tool that allows the editing of symbols and primitives
  on a schematic and connects them together using
  [nets](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#net)
  or
  [buses](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#bus).

### Schematic editor

* Refer to
  [schematic capture description tool](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#schematic-capture-description-tool).

### Sheet

* Section of a schematic on a system level.

### Soft macro

* Unit level macros with fixed relative placement that a designer can define.

### Symbol

* Usually a custom black box created in a schematic capture program to represent
  some sort of functionality.

### System level (cae)

* A level containing a full schematic in the system hierarchy.

### System hierarchy

* A way to design a system in which larger modules are partitioned
  into smaller modules, and so forth, thus creating a hierarchy of modules.

### Test vectors

* A set of input combinations for use in
  [verification](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#verification).

### Text

* Text on a schematic sheet that has no functional value other then to
  write notes on a schematic. Refer to
  [attribute](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#attribute)
  and
  [label](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#label).

### Timing simulation

* Simulation that uses real delay information from back annotation to
  analyze delay paths in a system. Refer to
  [functional simulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#functional-simulation).

### Tool framework

* tbd

### Tools

* tbd

### Verification

* tbd

### Wirelist

* tbd
