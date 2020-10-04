[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

# GLOSSARY

## I. General Acronyms and Technical Terms

### ABEL

* Advanced Boolean Expression Language - a structured language that generates
  a fuse map (JEDEC Expression load Language file) for PLDs from Boolean
  equations, truth tables or state diagrams.

### Abstraction

* A way to tangibly describe a digital system. Refer to abstraction level.

### Abstraction level

* A classification of the system model determined from the model style. As of today,
  system algorithmic models or can system. be at one of five basic levels:
  circuit, logic, functional-block, algorithmic or system.

### Actel

* A manufacturer of FPGAs. Refer to TPClO, TPC12 and TPC14.

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

* Action Logic System - Refer to TI-ALS.

### Analog/Digital

* Referring to creating analog and/or digital components
  using a VLSI process with all masks available for use.

### ANSI

* American National Standards Institute - A standards setting organization.

### Antifuse

* A term for the type of programming element used in TPC arrays (TI/Actel
  FPGA family). An antifuse is an element which is normally open. but converts
  to a resistive connection when programmed. Refer to TI-ALS.

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

* Refer to Boolean equation.

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

* Refer to standard-cell.

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

* Computer Hardware Language -Refer to CHDL.

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

* Outputs depends only on its current inputs. Refer to sequential logic.

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

* The building block of a language. Refer to syntax and semantics.

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

* Refer to RTL.

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

* Refer to system model.

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
  vertical and horizontal design methodology.

### DFT

* Design for Test - A system model with the capability for testing.

## II. CAE Environment Acronyms and Technical Terms
