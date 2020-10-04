# CHAPTER 4

[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

* 4.1 [Synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#41-synthesis)
* 4.2 [Types of Synthesis](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#42-types-of-synthesis)
* 4.3 [Synthesis for Technology Migration ](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#43-synthesis-for-technology-migration)
* 4.4 [Synthesis System ](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#44-synthesis-system)
  * 4.4.1 [Design Automation ](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#441-design-automation)
  * 4.4.2 [Benefits of High-Level Synthesis Systems](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#442-benefits-of-high-level-synthesis-systems)
  * 4.4.3 [Limitations of High-Level Synthesis Systems](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#443-limitations-of-high-level-synthesis-systems)
* 4.5 [Modeling for the Synthesis System](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#45-modeling-for-the-synthesis-system)
  * 4.5.1 [Modeling for the Synthesis System using VHDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#451-modeling-for-the-synthesis-system-using-vhdl)
  * 4.5.2 [Modeling for the Target Technology using VHDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#452-modeling-for-the-target-technology-using-vhdl)

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

![Figure-4.4-System-Representations-Illustrating-Synthesis-and-Design-Automation-(Model-Enhancement).jpg](figures/image-coming-soon.png)

**Figure 4.4** *System Representations Illustrating Synthesis and Design
Automation (Model Enhancement)*

In Figure 4.4, two types of model enhancements are illustrated: insertion and
optimization. These operations are explained:

* *Insertion* is the process of adding a subsystem to a model (e.g. test insertion).
* *Optimization* is the process of refining a model to optimize the designer's
  specifications.

Model enhancement can also be shown within the design framework (See Figure 4.5).
Enhancement can occur at two places in system development - at the model level or
during a synthesis process. As shown in both figures, design automation does
not change abstraction levels or domains.

![Figure-4.5-Design-Framework-Illustrating-Model-Enhancement.jpg](figures/image-coming-soon.png)

**Figure 4.5** *Design Framework Illustrating Model Enhancement*

There is an obvious question of the supremacy of design automation over
human ability (not in terms of design time, but design quality).
There is an opinion that a human designer with years of experience
exceeds an automated process. Other opinions claim humans can find optimized
solutions to a small number of objects, but in terms of thousands of objects,
design automation is better suited
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).

Yet another question is the correctness of automated design tools.
Theoretically, a synthesized system should not require any type of
verification because the integrity of the system is kept throughout the
synthesis process, but in practice verification is a necessity.
This is justified by the fact that a synthesis system cannot possibly
synthesize the endless amounts of different model styles, correctly,
100% of the time. More discussion on the subject is given at the end of
this chapter.

### 4.4.2 Benefits of High-Level Synthesis Systems

A high-level synthesis process provides the designer with many benefits such as
decreased design time, technology migration, increased circuit speeds, higher
yield and more flexibility to experiment with different design styles.
Most of the benefits are due to the high-level abstraction models as explained
in previous chapters.

Expanding on the design framework diagram, Figure 4.6 shows that by using a
high-level synthesis system, different architectural styles can be created
from the same model. Creation of various architecture styles can happen for
all microsystem technologies. The most efficient technology implementation
can then be chosen based on the designer's objectives
[[Gajs91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#gajs91).

![Figure-4.6-Design-Framework-Illustrating-Different-Architecture-Styles.jpg](figures/image-coming-soon.png)

**Figure 4.6** *Design Framework Illustrating Different Architecture Styles*

Another benefit of using high-level synthesis is that it gives the designer the
ability to prototype systems before commitment to expensive technology.
For example, if an MCM technology is desired, the system can be first prototyped
using an FPGA technology. This is accomplished by using high-level system
models, synthesized down into the FPGA technology. If the prototype is
satisfactory, then the same system models can be synthesized into the
desired MCM technology.

As wide spread use of synthesis systems becomes more popular, vendors will
supply more options (i.e. insertion and optimization) to satisfy the
demands of the designer
[[CaWa91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#cawa91).

### 4.4.3 Limitations of High-Level Synthesis Systems

Two important problems in a high-level synthesis system are: the lack of an
accepted standard framework and the lack of controllable synthesis tools.

A standard framework allows a common EDA environment in which various software
tools (from different vendors) can function together. Many synthesis tools can
be combined, allowing a larger synthesis system, providing the designer with
more options to chose from. The CAD Framework Initiative (CFI) is striving
to meet standardization head on, not just for the sake of synthesis, but
for the sake of the entire EDA environment (i.e. tool framework,
EDA encapsulation, system models and intertool communication).

Controllability gives the designer the ability to interact with the synthesis
system. The designer can control synthesis criteria and the order of their
execution
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
For example, Viewlogic's Powerview environment provides such a capability.
It allows the designer the ability to select different logic synthesis
algorithms for a speed/area weighting criteria
[[View93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#View93).

## 4.5 Modeling for the Synthesis System

In the modeling process, the designer must consider the synthesis system as well
as the technology the synthesis system is targeted to. To clarify this
statement, VHDL will be used as an example.

### 4.5.1 Modeling for the Synthesis System using VHDL

Modeling for a synthesis system requires that the designer be aware of:

* a) The synthesis system capabilities (i.e. what language constructs the
  synthesis system can synthesize).
* b) The optimization range of the synthesis system (i.e. what models the
  synthesis system can efficiently synthesize).

Let us consider the VHDL description language with these two criteria.
First, the designer must be aware of the synthesis system capabilities when
modeling a system. For example, the synthesis system from Viewlogic can
synthesize only a well defined subset of the VHDL language
[[View93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#View93).
Moreover, some constructs cannot be synthesized by any synthesis system.
Let us consider the RTL statement:

```text
A <= B + C after 20ns;
```

The synthesis system will not incorporate the delay time (given here as 20ns)
into synthesized hardware. Timing is utilized only for timing simulation.

Second, the fact that a synthesis system can synthesize a certain subset
of VHDL constructs does not imply efficiency, therefore the designer must be
aware of the optimization range of the synthesis system. The particular model
styles that can be efficiently synthesized are usually explained in the
synthesis system documentation. It is almost impossible to develop a
synthesis system that will generate the same quality for all model styles
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).

### 4.5.2 Modeling for the Target Technology using VHDL

The designer. when modeling a system, must also be aware of the target
technology. This statement may seem contradictory to the idea of higher level
models being separated from the underlying technology. However, the synthesis system
algorithms are closely coupled to the architecture of the chosen technology,
therefore the model styles must be matched to the algorithms of the synthesis
system
[[Gajs91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#gajs91).

To clarify, each microsystem technology has a preferred architecture style for
optimal performance. As a rule, this optimal style is imbedded in the synthesis
system algorithms. Thus, the designer should model for the synthesis system
algorithms to obtain this optimal architecture.

Modeling for a particular technology for optimal performance does limit the
designer to a small subset of optimal models, however, this modeling practice
is very beneficial because it keeps all the models in a system uniform.
Common model styles promote good design practices, especially in a design team
environment, facilitating communication, documentation and comprehension
[[Gajs91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#gajs91).

In Laboratories 2B and 3B
([Appendices H](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-h/appendix-h.md)
and
[I](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-i/appendix-i.md)),
various VHDL model styles
were synthesized with Viewlogic's synthesis. These models were written
specifically for the synthesis system in order to obtain optimal performance.
Moreover, this small subset of models can be used as templates, allowing the
design team to use the same model styles.
