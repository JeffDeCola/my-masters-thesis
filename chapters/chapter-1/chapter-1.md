
# CHAPTER 1

[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

## INTRODUCTION

ASIC development has evolved substantially in the past decade,
advancing from thousands of transistors on a single silicon substrate
(i.e. die) in the early 1980s to millions in the early 1990s
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
This increase in transistor density is due to the rapid improvement in
processes used to manufacture semiconductor chips; hence, there has
been an emergence of smaller transistor dimensions, a larger die size
and increased mask layers
[[DeSB86]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#desb86).
Moore's Law states that there is a
doubling in transistor density on substrates every two years
(eventually physical limits will endure)
[[Dasg89a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dasg89a).
Due to the increasing transistor density, the complexity and size of
digital systems has also grown giving today's design engineer the task of
managing these systems at all phases of development. The designer
must also be able to upgrade to more advanced technologies, keep costs low
and address time-to-market concerns in a rapidly advancing technological environment.

In order to help the designer understand, view and analyze all aspects of
complex system development, an enhanced *design framework* has been developed.
This qualitative structure contains four basic elements:

* a) System models.
* b) Electronic design automation (EDA) tools.
* c) Microsystem technologies.
* d) Design methodologies.

The design framework provides a formal basis for viewing and analyzing these
four basic elements. Their definitions are:

* A *system model* is a collection of one or more design files
(at the same abstraction level) developed from a description tool
that represents a designer's idea.
* *EDA tools* are computer aided design (CAD) programs which assist a
designer during system development usually with part or all of the
process automated (e.g. simulators, compilers, synthesizers and design entry tools).
* *Microsystem technologies* are the available physical means to implement
a system (e.g. VLSI, multichip modules (MCMs), standard parts and FPGAs).
* *Design methodologies* are the processes used to develop a system from
concept-to-silicon.

Design methodologies are further subdivided into two categories.
They can be either vertical or horizontal. More precisely,
these categories are defined as:

* A *vertical design methodology* corresponds to the traditional design
process which targets a given system model to a specific microsystem technology.
It is very well documented and widely used.
* A *horizontal design methodology*, or *technology migration*, pertains to the
design process which targets a given system model to more than
one microsystem technology. It offers the ability to change from
one technology to another (i.e. migration). For example, the replacement
of a design implemented using standard parts to one with FPGA devices.

The terms vertical and horizontal will become clearer when the
design framework is graphically introduced.

It is important to understand the difference between a traditional design
framework and an enhanced design framework; defined here as a low-level
design framework and a high-level design framework. The latter is better
suited for complex system development and technology migration,
enabling the designer to be more productive. The corresponding definitions are:

* A *low-level design framework* contains system models, EDA tools and
design methodologies that are below and include the logic level of abstraction.
This framework uses only a vertical design methodology.
* A *high-level design framework* contains system models, EDA tools
and design methodologies that are above the logic level of abstraction.
This framework has all of the capabilities of the low-level framework
plus the ability to use both a vertical and horizontal design methodology.

Some of the limitations of a low-level design framework that prevent
the designer from being productive are:

* a) Low-level system models tend to be technology and tool-dependent,
  locking the designer into using one type of microsystem technology and EDA tool
  [[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
* b) In the low-level design framework technology migration is not possible
  (or very limited), placing the system models in jeopardy of obsolescence.
* c) Low-level models require extensive amounts of time to develop due
  to the increased system size and complexity.
* d) Low-level models make it difficult for the designer to comprehend the
  functionality of the system. Therefore, the designer loses the ability
  to manage the system.
* e) Within the vertical design methodology, a bottom-up modeling approach
  is used in which the complete system cannot be simulated during early
  stages of the design process. *Bottom-up modeling* is a methodology which
  follows a low-to-high progression in which lower system level models
  are integrated with higher system level models, progressing up the
  system hierarchy.
* f) Experimentation with system alternatives is limited because the designer
  lacks the necessary design environment

The high-level design framework can better manage complex system development,
solving most of the problems of the low-level framework, aiding to a designer's
productivity. The solutions include the following characteristics:

* a) High-level sytem **(sic)** models are at a higher level of abstraction,
  above the logic level, and are less technology and tool-dependent.
  This allows the designer to focus on the concept of the whole system rather
  than the intricacies of the lower level tools and technologies. It also
  allows the system models to be portable among vendor tools.
* b) Technology migration is possible which allows the models to naturally
  migrate through new generations of technological development.
* c) High-level models can be modeled faster, allowing accelerated time-to-market.
* d) The high-level models are closer to the designer's intuitive way of
  thinking. For instance, it is easier to describe a multiplier as (c = a * b),
  rather then a confusing hierarchy of complex logic gates
  [[Gajs91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#gajs91).
* e) Within the high-level vertical design methodology, a top-down modeling
  approach can be used which allows early simulation in the design process.
  *Top-down modeling* is a methodology which follows a high-to-low progression
  in which higher system level models are designed first, refining the system
  with lower system level models, progressing down the system hierarchy.
* f) Experimentation with various system alternatives is possible because of
  the design environment.

At UNH, undergraduate students are currently taught the traditional low-level
design framework, using the traditional low-level system models, low-level EDA
tools and low-level vertical design methodologies. Eventually, students will
be introduced to a high-level design framework, enabling them to design complex
digital systems comfortably and more efficiently at higher levels of abstraction.
The main advantage is technology migration, allowing future generations of
students to use the systems of today.

To make the high-level design framework a reality, a *hardware description
language* (HDL) is used. HDLs provide a means to model at high levels of
abstraction - above the logic level
[[Hart87a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87a).
VHDL (VHSIC (Very High-Speed
Integrated Circuit) Hardware Description Language), a very popular HDL, is well
suited for the high-level design framework because it can model systems at these
higher levels of abstraction. Moreover, its machine and human readable constructs
are also supported by many vendors, yielding a vast variety of EDA tools for
modeling, compilation, simulation and synthesis.

To prove that the high-level design framework is better suited for complex
system development, and to prove the existence of such a framework, a *Host
Interface Serial Controller* (RISC), a superset of a *NASA Wave/Particle Correlator*
(Refer to
[Appendix B](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md)),
was developed to use as a case study
[[Davi91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#davi91).
The HISC is modeled within both the low and high-level frameworks using
schematic capture, as well as VHDL description tools. Both a low and
high-level design methodology is illustrated in the appendices as a
series of eight laboratory experiments (Refer to
[Appendices D](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-d/appendix-d.md)-K).

These laboratory experiments were written to use Viewlogic's Workview EDA
environment, running on a IBM compatible personal computer (PC) for schematic
capture, simulation, synthesis and wirelist conversion (Refer to
[Appendix A](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-a/appendix-a.md))
[[Keny92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#keny92)
[[View 93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#view93)
**(sic)**
[[View92a-c]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#view92a)
[[View91a-x]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#view91a)
[[Xili91a-b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#Xili91a).
The laboratories also use the *TI Action Logic System* (TI-ALS)
tools for programming and analyzing a TI/Actel FPGA
[[Acte92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#acte92)
[[Texa93b-f]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa93b)
[[Texa92b-j]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa92b)
**(sic)**.

To further test the advantages and existence of the high-level framework, a ninth
laboratory experiment using TIs' *Logic Integration Tool* (LIT) is introduced.
This laboratory illustrates how to select an appropriate technology based on
the design model and the design objectives (Refer to
[Appendix C](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-c/appendix-c.md))
[[Texa92a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa92a)
[[Texa93a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa93a).

The nine laboratory experiments herein are published in the Texas Instruments book
"Introduction to FPGA-Based Microsystem Design"
[[RuHl93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ruhl93).
This is part of the TI FPGA University Program, introducing designers to FPGA design,
a vehicle for fast, in-house, complex digital system implementation.

Another case study, an 8-bit microprocessor was developed to further test the
benefits of a high-level design framework. It was completely modeled as a VHDL
structural model, synthesized into a FPGA netlist for programming (Refer to
[Appendix L](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md))
[[Deco92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#deco92).

This thesis is separated into eight chapters, each building upon the preceding
ones.
[Chapter 1](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-1/chapter-1.md#chapter-1)
(this chapter) serves as an introduction to the design framework.

[Chapter 2](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#chapter-2)
shows the development and provides a formal explanation of the design framework.
The framework is used to illustrate and analyze schematic capture, VHDL and
technology migration.

The remaining chapters explore the four basic elements of the design framework.
[Chapter 3](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#chapter-3)
explains the **system model**, the first element in the design framework,
illustrating its fifteen basic system representations. The capacities of the
low-level schematic capture and high-level HDL description tools to cover the
system representations are also shown. VHDL is formally introduced as an HDL example.

[Chapter 4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4)
analyzes design synthesis, a powerful **EDA tool** and part of the second
element in the high-level design framework. The types of synthesis, the use of synthesis
for technology migration and synthesis systems are discussed.
[Chapter 4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4)
also presents model enhancement and methods of modeling for the synthesis system.

[Chapter 5](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#chapter-5)
examines current and future **microsystem technologies**, the third element
in the design framework. MCM, a new technology, is formally introduced. Software
aided device selection, a powerful tool in the design framework, is also addressed
with TIs' Logic Integration Tool.

In
[Chapters 6](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#chapter-6)
and
[7](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#chapter-7)
the HISC architecture is used as a case study to analyze
both design methodologies.
[Chapter 6](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#chapter-6)
examines and analyzes a
**low-level vertical design methodology**, part of the fourth element
in the low-level design framework, using the schematic capture description tool.
Four goals of any design methodology are also introduced and used to evaluate
this methodology.

[Chapter 7](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#chapter-7)
examines and analyzes a **high-level horizontal design methodology
(technology migration)**, part of the fourth element in the high-level design framework,
using the VHDL description tool. This methodology includes the high-level system
models from
[Chapter 3](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#chapter-3)
, the synthesis systems discussed in
[Chapter 4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4)
and the
microsystem technologies addressed in
[Chapter 5](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#chapter-5);
creating an integrated process
for implementing complex digital systems.

Finally,
[Chapter 8](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-8/chapter-8.md#chapter-8)
concludes the thesis with a discussion of the noteworthy
results and the steps for future work.
