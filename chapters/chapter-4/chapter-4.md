[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

# CHAPTER 4

## DESIGN SYNTHESIS

In this chapter, synthesis is shown to be an essential EDA tool - part of
the second element in the design framework. Synthesis helps the designer manage
system size, reduce design time and provides a means for technology migration.
In
[Section 4.1](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#41-synthesis),
synthesis basics are explained.
[Section 4.2](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#42-types-of-synthesis)
explores the various types of synthesis with the help of the system
representation diagram.
[Section 4.3](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#43-synthesis-for-technology-migration)
illustrates the synthesis tool in the design framework, showing its usefulness
for technology migration. Synthesis system tools are examined in
[Section 4.4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#44-synthesis-system),
illustrating their applications, benefits, limitations and problems.
Lastly,
[Section 4.5](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#45-modeling-for-the-synthesis-system)
closes with a practical discussion of modeling for a synthesis system.

## 4.1 Synthesis

Synthesis helps the designer develop complex digital systems.

* A *synthesis process* is the movement of a system model from a higher to a
  lower abstraction level or domain. Synthesis adds another significant layer
  of detail to the system model, refining it more towards a particular
  technology (a translation is a one-to-one mapping).
* A *synthesis system* contains one or more synthesis tools used to
  accomplish a synthesis process.

The goal of the designer is to use a synthesis system to reach the physical
domain for manufacturing purposes. There are some basic synthesis processes
defined as:

* *High-level synthesis*, like a high-level HDL, is a process above the
  logic level of abstraction, inherent to the high-level design framework.
* *Low-level synthesis* is a process below and including the logic level
  of abstraction, inherent to the low-level design framework.
* *Reverse synthesis*, sometimes loosely defined as *reverse engineering*,
  is a synthesis process which travels in the opposite direction,
  towards a higher abstraction level or domain.

In all synthesis processes, the integrity of the design specifications
must be maintained
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).

## 4.2 Types of Synthesis

The system representation diagram, from Figure 3.1, is used in this section
to illustrate the various types of synthesis (See Figure 4.1 ).
The arrows represent a distinct type of synthesis process, a subset of a
design methodology, if you will. If the arrows were in the reverse direction,
they would represent a reverse synthesis process. Every one of the
fifteen separate system representations has a synthesis process associated
with its abuttable neighbors. For a high-level model to reach the physical
domain (the goal of the designer), it must pass through many types of synthesis.

![Figure-4.1-Synthesis-View-of-System-Representations.jpg](figures/image-coming-soon.png)

**Figure 4.1** *Synthesis View of System Representations*

Since the system representation diagram has many gray areas of interpretation,
there are likewise many gray areas in defining the types of synthesis.
But the diagram can be used as a foundation to explain basic synthesis
processes. Each type of synthesis is concisely characterized below.

In the behavioral domain, movement from one abstraction level to another
is extremely difficult, as was explained in
[Chapter 3](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#chapter-3).
Thus, a separate synthesis process must be used between each level.
This is shown in Figure 4.1 by the ovals between the abstraction levels.
Synthesis names are not given between these levels for the sake of brevity.

As depicted in Figure 4.1, between the behavioral and structural domain there
are five common types of synthesis: circuit, logic, functional, algorithmic and system.

* *Circuit synthesis* generates a transistor schematic from a set of
  input/output current, voltage or frequency characteristic equations
  [[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
* *Logic synthesis* is very well documented. It starts with Boolean equations
  that are translated into a wirelist of components from a given parts library
  [[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
  Usually, vendors use the term 'logic synthesis' to represent the end
  result of any synthesis process used to reach the logic level.
  In reality, many distinctive types of synthesis are used. For example,
  Viewlogic defines logic synthesis as the transfer of a behavioral VHDL
  model into a wirelist of gates (logic level). Clearly, many synthesis
  steps are involved in this process
  [[View93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#View93).
* *Functional synthesis*, also called RTL synthesis, starts with a set of
  states and a set of register-transfers for each state which follows a
  clock cycle. The synthesis process allocates a datapath and schedules
  a control unit. The datapath contains the storage elements and the
  functional units that perform the given register-transfer.
  The control unit commands the sequence of states for the register-transfer.
* The last two types, *algorithmic* and *system synthesis* prove to be difficult
  to define because of the lack of accepted theoretical formalisms at these
  abstraction levels. This stems from a deficiency of unique unambiguous
  ways to model a system. Algorithmic synthesis, sometimes referred to as
  behavioral synthesis, transfers the algorithms to structural hardware modules
  or data structures. System synthesis is the most abstract and transfers
  performance specifications into one or more interconnected structural modules
  [[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92)
  [[Gajs91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#gajs91).

Between the structural and physical domain there is only one synthesis type shown.

* *Physical* or *netlist synthesis* is represented here as one synthesis step
  because of the ease of movement from one abstraction level to the next in
  the structural domain. This justifies the absence of ovals as were shown in
  the behavioral domain. For example, a wirelist generated in the
  functional-block level can be used to place and route standard-cells
  for VLSI in the logic level.

Finally, the physical domain, like the structural domain, is independent
of the abstraction levels. Synthesis between these levels is accomplished
quite readily.

## 4.3 Synthesis for Technology Migration

In
[Chapter 2](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#chapter-2),
higher abstraction levels in the design framework were characterized as being
less technology-dependent and more geared towards technology migration
(Refer to Figure 2.6). A more formal view of technology migration is shown in
Figure 4.2, which includes a synthesis system. The box represents the entire
synthesis process from system model to technology manufacturing.
This process might be a combination of many different types of synthesis.
The figure also shows a low-level schematic capture model limited to a
particular technology.

![Figure-4.2-Design-Framework-Illustrating-Synthesis-Tools-used-for-Technology-Migration.jpg](figures/image-coming-soon.png)

**Figure 4.2** *Design Framework Illustrating Synthesis Tools used for
Technology Migration*

Some synthesis systems also provide a solution to salvage older system models
through the process of reverse synthesis. Figure 4.3 illustrates this process,
synthesizing a schematic capture model into a VHDL model. From the VHDL model,
technology migration is more feasible.

![Figure-4.3-Design-Framework-Illustrating-Reverse-Synthesis-Tools-for-Technology-Migration.jpg](figures/image-coming-soon.png)

**Figure 4.3** *Design Framework Illustrating Reverse Synthesis Tools for
Technology Migration*

## 4.4 Synthesis System

As stated earlier, a synthesis system is a collection of EDA tools used to
perform the synthesis process. This process includes compilation,
transformation, scheduling, allocation, partitioning and output.
The synthesis process is discussed and documented in
[[CaWa91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#cawa91)
[[CaWo91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#cawo91)
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92)
[[Gajs91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#gajs91).
In this section, synthesis systems applications, benefits, limitations and
problems are elaborated upon. First is a discussion of design automation which
is the prime ingredient of a synthesis system.

### 4.4.1 Design Automation

An explanatory note is needed to avoid some confusion in terminology.
Synthesis is sometimes referred to as design automation. These two meanings are
quite similar as both refine a model, but design automation is defined as follows:

* *Design automation* stays at the same abstraction level and domain whereas
  a synthesis process changes levels or domains. In effect, synthesis is a
  superset of design automation.

Figure 4.4 shows a three-dimensional view of the system representation
diagram illustrating the relationship between the design automation and
synthesis process. The diagram is used to represent the subtle differences
between the two. The synthesis process is represented by the arrows in the
x and z directions and the design automation process is represented by the
arrows in the y direction. The synthesis process is represented to be the
movement from an abstraction level or domain to a lower abstraction level
or domain. The_ design automation process, as shown in this figure,
demonstrates model enhancement.

* *Model enhancement* adds a capability to a system model, usually through a
  design automation process.

### 4.4.2 Benefits of High-Level Synthesis Systems

### 4.4.3 Limitations of High-Level Synthesis Systems

## 4.5 Modeling for the Synthesis System

### 4.5.1 Modeling for the Synthesis System using VHDL

### 4.5.2 Modeling for the Target Technology using VHDL
