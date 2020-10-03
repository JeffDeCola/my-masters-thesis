[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

# CHAPTER 6

## LOW-LEVEL VERTICAL DESIGN METHODOLOGY

This chapter contains two sections.
[Section 6.1](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#61-low-level-design-methodology)
explains a low-level vertical design methodology contained within the low-level
design framework. This methodology ties together the low-level schematic capture
models discussed in
[Chapter 3](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#chapter-3),
the low-level EDA tools examined in
[Chapter 4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4)
and the microsystem technologies looked at in
[Chapter 5](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#chapter-5).
To illustrate the low-level methodology, the use of the schematic capture
description tool in implementing a Host Interface Serial Controller (IIlSC)
will be referred to (Refer to
[Appendix B](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md)
for the HISC architecture and refer to Laboratories 2A-5A
([Appendices D-G](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-d/appendix-d.md))
for the complete design process).
[Section 6.2](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#62-evaluation-of-low-level-vertical-design-methodology)
begins with an explanation of the four goals of any design methodology and
closes with an evaluation of the low-level design methodology. It is determined
that technology migration is practically non-existent in this methodology.

## 6.1 Low-Level Design Methodology

In Figure 6.1, the low-level design methodology is shown within the low-level
design framework. It can be seen that the models are tightly coupled to their
microsystem technology (vertically), precluding technology migration.
In order to better understand the low-level vertical design methodology;
bottom-up modeling, the general low-level schematic capture EDA environment,
and the general steps of the methodology are addressed.

![Figure-6.1-Low-Level-Design-Framework.jpg](figures/image-coming-soon.png)

**Figure 6.1** *Low-Level Design Framework*

### 6.1.1 Bottom-Up Modeling

Bottom-up modeling, also referred to as 'capture and simulate', is used mainly
because of the low-level system models. The process starts low in the system
hierarchy, modeling (capturing) the lowest modules (system partitions)
that make up the system. Simulation is performed on each module to
insure proper functionality (hence the name 'capture and simulate').
Modules are combined to form larger modules, creating new levels in the
system hierarchy, continuing until the top system level is reached.
Hence, the entire system (system model) is a hierarchical collection of
low-level abstraction models.

### 6.1.2 General Low-Level EDA Environment

An EDA environment contains the tools necessary for system development.
In Figure 6.2, the general schematic capture description tools and two
manufacturing processes in the lowA-level EDA environment are shown.
The rectangles represent tools; the ovals represent design files (models).
This figure is intended to be used as a guide when going through the low-level
vertical design methodology steps (next subsection). To orient the reader,
in the top right comer, the .sch file contains the information of the schematic
drawing (low-level system model).

![Figure-6.2-General-Schematic-Capture-Tool-and-File-Structure-in-the-EDA-Environment.jpg](figures/image-coming-soon.png)

**Figure 6.2** *General Schematic Capture Tool and File Structure in the EDA Environment*

### 6.1.3 General Low-Level Steps

A general low-level vertical design methodology is illustrated in Figure 6.3.
For clarity, the steps are textually shown in Table 6.1. This subsection will
highlight the main steps of the low-level design methodology with the help of
Figure 6.2. The entire low-level design methodology that was used to develop
the HISC is explained in Laboratories 2A-5A
([Appendices D-G](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-d/appendix-d.md)).

![Figure-6.3-General-Low-Level-Vertical-Design-Methodology.jpg](figures/image-coming-soon.png)

**Figure 6.3** *General Low-Level Vertical Design Methodology*

|       |                                                         |
|------:|:--------------------------------------------------------|
| 1)    | Design Capture                                          |
| 2)    | Test Vector Development                                 |
| 3)    | Functional Simulation                                   |
| 4)    | Repeat Steps One, Two and Three (Bottom-Up Modeling)    |
| 5)    | Model Enhancement (Optional)                            |
| 6)    | Software Aided Device Selection (Optional)              |
| 7)    | Pre-Manufacturing (Mapping, Validation)                 |
| 8)    | Timing Simulation (Optional)                            |
| 9)    | Manufacturing                                           |
| 10)   | Verification (Functional, Analysis, Fault)              |

**Table 6.1** *General Low-Level Vertical Design Methodology Steps*

Design capture is the first step of the low-level vertical design methodology.
Most low-level design capture tools are graphical and all must contain
hierarchical capabilities in order for bottom-up modeling to work
[[Nies86]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nies86)
[[LaMc86]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#lamc86).
Schematic capture was used in the laboratories to model the HISC. This is noted
by the schematic capture tool in Figure 6.2. Hard and soft macros, components
directly related to the FPGA architecture, were taken from a schematic capture
library, immediately making the model technology-dependent, thus making
technology migration very limited. Figure 6.2 also illustrates an analyzer,
a tool used to locate errors in the schematic drawing.

Test vector development happens concurrently, throughout the design process.
As the system gets larger, test vectors become more complicated and lengthy.
Subsets of a complete vector set must be chosen. This is where engineering
becomes an art form, selecting the smallest, yet most complete test vectors
to use. Automatic test generation (ATG) programs aid the designer in
accomplishing this. The vector file is noted as .vec in Figure 6.2.

The third step, functional simulation, uses the chosen test vectors to verify
that the model is functionally correct. In the laboratories, simulation
results were seen both in waveform and in the schematic drawing . The dashed
line in Figure 6.2 shows a link between the simulator and the schematic capture
models.

In a bottom-up modeling process, the above three steps are repeated until
the entire system is completely modeled. This could also be done concurrently,
in a design team environment. In the end, the entire system is a collection of
low-level functionally tested models. It is important to realize that a
bottom-up process is only part of the entire methodology.

Next, model enhancement can be performed on the models (Refer to
[Chapter 4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4)).
Figure 6.2 shows that model enhancement can be performed at the schematic
capture level and at the wirelist level. A wirelist (shown as a .wir file
in Figure 6.2) is a list of all the components and associated connections
in a system, usually in a particular file format specific to an EDA tool vendor.
Usually, a low-level synthesis process (more like a translation) is performed
to get the schematic file into the wirelist format.

Step six, software aided device selection, is optional and was discussed in
[Chapter 5](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#chapter-5).
It is shown in Figure 6.2 as accepting the wirelist file format.

Next, pre-manufacturing involves mapping the models to a chosen technology
as well as validation - making sure the models can be mapped to a chosen
technology. Validation tells the designer what needs to be changed in the
models in order to map to a specific technology. Validation can include
such processes as thermal analysis, signal integrity and connectivity.
In Figure 6.2, the pre-manufacturing process is contained in the wirelist
(netlist) translator, changing the wirelist file into a .pcb or .fpg file.
A pre­manufacturing problem found at this step needs to be corrected back
in step one (design capture). A design rule checker (DRC) provides the
ability to detect some of the common mapping problems early on, in the
design capture step (schematic drawing), rather than after many models have
been developed and brought down to the wirelist level.

After mapping and validation, timing simulation (step eight), also called delay
simulation, uses back annotated delay (timing) information from the technology
mapping step. As shown in the figure, the delay information can be placed in a
wirelist file or (through a SIM translator) directly used with the simulator.
Worst-case path analysis is the goal, finding the critical path through
the system - the fastest speed at which the system will operate. This type
of simulation takes longer than functional simulation because the simulator
must contend with the new timing information. It can be on the order of
10<sup>3</sup> to 10<sup>8</sup> times longer
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#wake90).
This is a reason why a subset of the complete test vector set is used.

Once the models are free from errors and meet the system requirements,
manufacturing (step nine) can begin. Manufacturing is a relative term,
meaning anything from programming FPGAs to placing standard parts on a PC-board
(these are both shown in Figure 6.2). The end result is a physical
implementation of the system. Refer to Laboratory SA
([Appendix G](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-g/appendix-g.md))
for a complete description of programming an FPGA.

Finally, the physical device must be verified. The test vectors previously
developed for functional simulation can and should be used for verification.
Verification is divided into three areas: functional (go/no go) tests,
timing analysis and fault (structural) locations. The main issue is whether the
device meets or exceeds the designers specifications. Testing is easier if the
system has design for test (DFT) capabilities and there are the necessary tools
to perform the testing. In Laboratory 5A
([Appendix G](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-g/appendix-g.md)),
the FPGA was functionally verified using a programmer. Timing analysis was also
 performed which allowed 100% real-time observation of internal nodes while
the FPGA was in a target system.

## 6.2 Evaluation of Low-Level Vertical Design Methodology

 A key to successful design is the design methodology. To evaluate a design
 methodology, there are are main goals that should be met.

### 6.2.1 Goals of a Design Methodology

Four goals of a design methodology are listed in Table 6.2. First, the
methodology must provide flexibility. Second, it must provide a complete
and effective verification system. Third, the computer resources must
be efficiently utilized. Finally, the methodology must allow a design
team to work independently and concurrently
[[LaMc86]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#lamc86).

|       |                                        |
|------:|:---------------------------------------|
| 1)    | Flexibility                            |
| 2)    | Complete Verification System           |
| 3)    | Efficient use of Computer Resources    |
| 4)    | Independent/Concurrent Design Team     |

**Table 6.2** *Goals of a Design Methodology*

### 6.2.1 Evaluation

A good way to evaluate this low-level vertical design methodology is to see if
the four goals were met.

First, does the methodology provide flexibility? In terms of the system model,
refinements or changes are possible, but are difficult and time consuming
because of the schematic capture environment. Also, because of the low-level
models, the methodology does not provide the flexibility to experiment with
various architectures and move to other technologies.

The second goal (a complete verification system) is met for the most part.
Simulation (functional and timing) can be performed at either of two steps.
Verification is possible regardless of the methodology.

Third, judging the efficiency of the computer resources is quite subjective.
A lot of time might have to be spent learning the various design environments.
For example, in the laboratories, the time spent having to learn both Viewlogic
and TI-ALS design environments was a disadvantage. Resources could have been
better utilized if both tools had been integrated, providing the look and feel
of one complete EDA environment. Furthermore, the computer system can greatly
affect this objective (i.e. using a faster microprocessor).

Lastly, the concurrent engineering teamwork approach is possible
with this methodology. Team members can work independently and concurrently
on separate modules of the system. The problem is that full functional
simulation cannot be accomplished until the system is completely modeled.
