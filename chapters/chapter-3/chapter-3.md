[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

# CHAPTER 3

## SYSTEM MODELS, DESCRIPTION TOOLS AND SIMULATION

This chapter provides an overview of system models - the first element in the
design framework - as well as an overview of description tools and
simulation - both EDA tools, the second element in the design framework.
This information is useful because it explains the types of models and
description tools that are necessary for realizing technology migration.
[Section 3.1](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#31-five-levels-of-abstraction)
shows that system models fall into five basic levels of abstraction.
Three basic domains of the abstraction levels are explained in
[Section 3.2](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#32-domains-and-classes-of-abstractions),
obtaining a total of fifteen separate system model representations. Classes of
the system representations are also illustrated in this section.
[Section 3.3](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#33-schematic-capture-and-simulation)
illustrates that traditional schematic capture description tools take up a very
small area of the system representations, an area that can limit the designer
in productivity and can limit technology migration. HDL description tools are
discussed in
[Section 3.4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#34-hardware-description-languages-and-simulation).
They provide a more expansive view of the system
representations allowing the designer more flexibility and productivity as well
as the ability for technology migration. The merger of schematic capture and
HDLs is examined in
[Section 3.5](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#35-multi-level-description-environment-and-multi-level-simulation),
providing a very powerful multi-level
description environment for complex system development.
[Section 3.6](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#36-vhdl)
concludes with an overview of VHDL a popular HDL, used as a vehicle for technology
migration.

## 3.1 Five Levels of Abstraction

As of today, there are a total of five basic abstraction levels that system
models are represented as: circuit, logic, functional-block, algorithmic and
system. Figure 3.1 illustrates these levels and the common model styles associated
with each one (the three domains will be explained in the next section). Abstraction
levels are used to differentiate between the low and high-level design frameworks
and the three basic elements (system models, EDA tools and design methodologies).
The also provide a way to visualize various EDA tools, classify system models
(by model style) and characterize design methodologies. Figure 3.1 will be
expanded upon throughout this thesis to illustrate these points.

![Figure-3.1-Fifteen-Basic-System-Representations-Five-Basic-Abstraction-Levels-and-Three-Associated-Domains-with-Various-Model-Styles.jpg](figures/image-coming-soon.png)

**Figure 3.1** *Fifteen Basic System Representations - Five Basic Abstraction Levels
and Three Associated Domains - with Various Model Styles*

* The *circuit level* is the lowest abstraction level using such model styles as
  differential equations, transistors and cell details to represent a system.
  Systems modeled at this level are closest to and contain the most detail of the
  underlying technology.
* The *logic level* is the most widely used abstraction level describing the
  logical function of digital systems using such model styles as AND/OR gates,
  Boolean equations and standard-cells.
* The *functional-block level* uses blocks (modules) that contain underlying logic,
  describing their function. Floor plans, basic logic functions and chips
  are common model styles at this level. It also contains a register transfer (RT)
  description method that describes the flow of data from one place to another.
  The RT description has a much more powerful set of primitives than the logic
  level such as assignments and conditional operations.
* At the *algorithmic level*, the designer is able to model systems using procedural
  concepts. Flowcharts describing a digital system, data structures and even FPGA
  architectures are common model styles of this level.
* The *system level* is the highest abstraction level and is the most conceptual.
  Thus, the most removed from the underlying technology. It contains design
  specifications and high-level blocks used to represent a system. CPUs, bus
  structures and MCMs are common to this level. Designers should start modeling
  at the system level because it can give a conceptual description of the entire
  system
  [[Hart87b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87b).

These levels are not set in stone, there are many gray areas between them. It is
not the intent to set highly defined bounds, but to use these levels as a way to
understand how system models are classified relative to one another. A main
benefit gives the designer the ability to identify between low and high-level
design frameworks.

## 3.2 Domains and Classes of Abstractions

Each abstraction level is further subdivided into three basic domains, also
illustrated in Figure 3.1. The physical, structural and behavioral domains
allow a total of fifteen possible system model representations
[[Hart87b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87b).

### 3.2.1 Domains of the Abstraction Levels

The domains of each abstraction level provide additional characterization to
system model representations. Each level has its own behavioral, structural
and physical domain.

* The *behavioral domain* is the highest of the three domains. It provides the
  description of the input/output (I/O) relationships of the system model using
  such model styles as RTL, state equations, Boolean functions and differential
  equations. In this domain, the focus is on what the design does, not how it is
  built. It is very much removed from the underlying technology. The behavioral
  domain also includes constraints imposed upon the system, such as power
  consumption and delay times
  [[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
  Furthermore, it is highly dependent on the
  abstraction levels; movement up or down the levels is extremely difficult
  [[Hart87b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87b).
* The *structural domain* describes the partitioning, interfacing and
  interconnections of the different components or modules of a digital system.
  Partitioning defines how a given system is broken up into
  modules, which is the basis for hierarchy. Interfacing specifies the external
  view of the system and its modules -the ports that are used for the
  interconnections. The structural domain can be described as a wirelist of
  interconnected components. In contrast to the behavioral domain, the structural
  domain is less dependent on the abstraction levels, thus, very little effort
  is needed to go from one level to another. For example, movement from the
  functional-block level to the logic level requires less effort than in
  the behavioral domain.
* Finally, the *physical domain* covers the physical characteristics of the
  different technologies, such as topology (relative placement) and geometry.
  It ignores, as much as possible, the functionality of a system. Its only
  interest is binding its structure in space or to silicon
  [[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
  Like the
  structural level, it is not as dependent on the abstraction levels,
  hence movement from one to another level is performed with little effort
  [[Hart87b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87b).

The goal of any digital system is to eventually have the models represented at the
physical circuit level. This level and domain is needed for the manufacturing process.

### 3.2.2 Classes of the Abstraction Levels

The above fifteen system representations, containing various model styles,
can be further partitioned into four classes: transactional, procedural,
semi-procedural and non­-procedural as shown in Figure 3.2.
The classes overlap both the abstraction levels and the domains.
These classes offer insight into how software algorithms and hardware
characteristics interact with one other. This will be expanded upon in
[Section 3.4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#34-hardware-description-languages-and-simulation),
when illustrating the taxonomy of common design languages
[[Hart87b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87b).

![Figure-3.2-Fifteen-Basic-System-Representations-Illustrating-Four-Basic-Classes.jpg](figures/image-coming-soon.png)

**Figure 3.2** *Fifteen Basic System Representations Illustrating Four Basic Classes*

* The *non-procedural class* contains no software algorithms. The term itself
  means no procedures are used. It covers the entire physical and most of
  the structural domain. This class can be exclusively described using physical
  symbols such as logic gates, chips and floor plans
  [[Hart 87b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87b).
  **(sic)**.
* The *semi-procedural class* is related to software, but not algorithmically.
  State machine, differential equations and Boolean equations fall into this class.
  These descriptions can act concurrently, no algorithms are needed to make
  them function.
* The *procedural class* contains algorithmic data processes proceeding in a
  sequence of steps. The time sequence execution of instructions primarily
  depends upon the spatial sequence of these instructions within the procedural
  text. This class easily falls into the upper algorithmic level.
  There are two different software classes at the procedural level,
  software and a combination of both hard ware and software structures.
  The former can be sequential or concurrent. The latter contains several
  executing processes which run concurrently. As a comparison, a software
  language can describe what a microprocessor is doing as compared to a
  hardware/software language (HSL) which describes how the microprocessor
  is doing it. Microprogramming, describing the register­register transfer
  of information, is an HSL useful for co-design.
* The *transactional class* includes network, communication protocols, channels,
  links, messages, network structure, and LAN s. It falls into the upper system
  abstraction level. No procedures are used with this class. Very few software
  languages are written as yet for the transactional class. For example, Ada
  is one of the few languages written at the upper system level.

## 3.3 Schematic Capture and Simulation

Today, schematic capture is the most common form of design entry.
It provides a graphical interface for designers to create, display and change
a digital system. The schematic capture description tool not only provides
pre-drawn components and their associated functional significance from a parts
library, but also provides attribute information attached to those components.
Attribute information includes such characteristics as component values,
part numbers, power ratings, tolerances and delay times.
In industrial environments, all of the components usually require approval
in order to be used for schematic capture; this assures quality in the system
models. A system hierarchy is common to this method of description,
adding structured partitioning modules) of the basic system model.
A parts list and a wirelist can be generated from a schematic drawing and
be used as the input for a manufacturing process. Most EDA environments are
based upon this type of description tool
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#wake90).

Figure 3.3 displays how the schematic capture description tool fits into the
system model representations. It covers the entire structural domain.
As already explained, lower levels lack comprehensibility and tend to be
technology dependent. Low-levels also lock the designer into a bottom-up
modeling approach. The system must be modeled from the logic gates up.
For a design of 50,000 gates or more, modeling each logic gate can be extremely
time consuming. Obviously, the entire system cannot be simulated until
it is completely modeled. If errors are found at this stage, additional time
is required changing the logic gates. Higher levels of abstraction
surpass these problems; a higher level description tool allows this to happen.

![Figure-3.3-Schematic-Capture-Description-Tool-Area-of-System-Representations.jpg](figures/image-coming-soon.png)

**Figure 3.3** *Schematic Capture Description Tool Area of System Representations*

## 3.4 Hardware Description Languages and Simulation

An HDL is a language used to describe electronic circuitry for the purpose of
simulation, modeling, testing, teaching, designing and documenting
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91).
HDLs -in some form - have been around a long time, almost since hardware was
developed. They are found in many forms, such as textual, tabular and waveform
and are usually hierarchical
[[Hart87a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87a).
For example, ABEL is a popular low-level HDL used for modeling general state
machine structures for programmable logic devices (PLDs)
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#wake90).
HDL description tools can and do go beyond the logic level (into the behavioral
domain) as shown in Figure 3.4. These are called high-level HDLs.
This thesis is concerned with the high-level HDLs only; such as VHDL and
Verilog. In general, a high-level HDL is not bound to technology
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91).
All the benefits discussed thus far that pertain to high abstraction levels can
now be realized with the use of an HDL
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
It has already been stated that higher levels facilitate technology migration
and comprehension, but these are only two of the benefits.

![Figure-3.4-HDL-Description-Tool-Area-of-System-Representations.jpg](figures/image-coming-soon.png)

**Figure 3.4** *HDL Description Tool Area of System Representations*

### 3.4.1 High-Level HDL Applications and Benefits

It can be seen in Figure 3.4 that the behavioral domain is now being utilized
with high-level HDLs. At these levels, a top-down modeling approach can be
realized. First, the system is quickly modeled at a high abstraction level
(top system level), usually partitioning the system into modules. Then, more
and more details of these high-level modules can be modeled at lower abstraction
levels. This step-wise refinement can be accomplished with a synthesis system.
The synthesis process transfers the system model from abstraction level and
domain to a lower one. It is crucial that a multi-level HDL is used in order
to prevent having to switch to other description tools during the synthesis
process.

* A *multi-level HDL* is a description tool that can model a
  system at more then one abstraction level and domain, usually above
  and including the logic level of abstraction.

During this top-down modeling process, full functional simulation can be
performed at any time. When the lowest abstraction level has been achieved,
the initial model has evolved into a detailed description of the hardware which
can be used for manufacturing
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92)
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91)
[[Hart87a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87a).

High-level HDL system models are created more quickly than schematic capture
models because the number of objects a designer must consider is reduced by an
order of magnitude. The reduced notational complexity is due to the use of
high-level primitives. For example, some HDLs bundle vectors of bits into words.
A 32-bit register can be conveniently represented as a word such as RegC or
RegB. This can be used to perform a multiplication that can be modeled as an RT
operation (e.g. RegC <= RegB * RegD - Register C takes on the multiplied
product of registers B and D). Schematic capture can also accomplish this using
components and buses, but there are more objects to consider.

As a result, faster modeling time reduces the overall design time which
translates to faster time-to-market. It also allows time for the designer
to experiment with different architecture styles in order to find the one
that is most efficient and meets the system's objectives
[[Hart87a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87a).

A top-down modeling approach and reduced design time paves the way for early
simulation in the design process. Hence, errors in the HDL models can be fixed
early. Errors are also easier to fix at higher abstraction levels because of
the powerful HDL primitives.

Early simulation is important in the first-silicon approach because the
fuctionality of the system can be verified before a run through the fabrication line.

* *First-silicon* means the system models were prototyped and verified to
  work correctly the first time.

Early simulation avoids the need for expensive additional prototype runs
to correct logical errors or inefficient architectures. Also, since the system
is functioning early in the design process, firmware development can begin.
The firmware can be verified even before a hardware prototype is built.
This can help reduce the number of fabrication runs to only one
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92)
[[Hart87a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87a).

Multi-level HDLs are also useful for designers, managers, users, testers,
simulators, and EDA tools
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91).
For instance, the designer not familiar with higher levels, a smooth change
from lower to upper levels using the same description tool (e.g. HDL) is easier
to accomplish then with different tools
[[CaWa91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#cawa91).

A multi-level HDL can also be used to increase system performance.
For example, if a synthesized high-level HDL model doesn't meet the system's
speed requirements, modeling the system at a lower abstraction level, closer
to the characteristics of the technology might solve the problem.
This is because the designer can create optimum hardware configurations a
synthesis system might not be able to accomplish.

### 3.4.2 Limitations - Industry View of an HDL

The limitations of an HDL are best described in terms of what industry desires
in a description tool. Design methodologies at the logic level are well
documented and supported. It is difficult for a company to switch to a
high-level description tool when the current description tool and methodology
is working well. Switching usually requires a lot of training and new EDA
tools, all of which translate into cost. Many questions arise. Some of them
are: Will the high-level HDLs be supported three years from now? Will the EDA
vendor go bankrupt? How much is the total cost of an HDL EDA environment?
A company h as to b e Sure that the new HDL will be beneficial to the design
team and the company fi or th e long tenn whenever possible.

Developing both standards and education are required for change to materialize.
When standards are developed (i.e. for system models and description tools),
companies and EDA vendors will begin to embrace HDLs. Companies will know they
can port to other EDA environments if there is a need, brining with them, there
standardized (portable) system models. EDA developers will know that time and
energy spent on developing tools will not be wasted because of the standardized
HDL languages. VHDL and Verilog are achieving these goals through the use of
IEEE standardization
[[Hart87a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87a).

Furthermore, HDLs are limiting because they lack a visual source media.
Most designers like to physically 'see' a component rather then have it
represented as a textual string. The solution is the merger of a high-level
HDL with a visual description tool such as schematic capture.

### 3.4.3 The Language Tree

In this subsection, the taxonomy of various language types is presented to
illustrate the position of HDLs. Knowing how HDLs fit into the language realm is
important in showing that HDLs are not just regular programming languages;
they are much more focused on hardware systems.

Figure 3.5 shows the language tree starting with the two basic language
forms - programming and hardware. Ovals represent a type (category) of language
while the rectangles represent a more specific form.

![Figure-3.5-The-Language-Tree-for-Electronic-Design.jpg](figures/image-coming-soon.png)

**Figure 3.5** *The Language Tree for Electronic Design*

A programming (procedural) language (PL) is used strictly to describe
procedures or algorithms in a sequential manner. Pascal, Modula-2 and C are
popular examples. A hardware language (HL) uses textual or graphical forms
to describe hardware at a certain abstraction level. It contains no algorithms.
Spice is a popular example of a hardware language. A digital hardware language
(DHL) belongs to a subset of HLs used for describing digital systems.
Caltech Intermediate Form (CIF) is a good example of a language in this category
[[Hart87b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87b).

The combination of these two language types (PL and HL) creates a
hardware/software language (HSL) containing both procedures and hardware
constructs. A HSL is useful for co-design. Again, as with DHL, a subset
containing digital hardware/software language (DHSL) is shown. Register
transfer (RT) languages fall into this type.

The merger of an HSL and a design language (DL) creates a hardware description
language (HDL) that is used to design electrical hardware circuitry.
The difference between an HSL and an HDL is that an HDL has the characteristics
of a DL; that is, it represents a multi-level language with refinement
capabilities. HDLs contain the sequential properties of a programming language
and the detail of a hardware language. HDL implies hardware to be built,
not just an execution of statements on a machine, therefore the language has
additional constructs such as clocking and asynchronous abilities.

HDLs have their own digital subset called a digital hardware description
language (DHDL). Most of the time HDL and DHDL are used interchangeably,
but to be precise, the term DHDL should be used. The applications, benefits
and limitations of DHDLs have already been discussed. Verilog and VHDL are
common DHDLs. It is also noted that DHDLs are further classified into a
subset called computer hardware description languages (CHDL), also known as a
computer hardware language (CHL). CHDLs have an extra feature to model the
dichotomy of computer systems; the control and process sections.

### 3.4.4 Classification of Common Languages

Classification of the various language types gives the designer insight into
choosing which language should be used for modeling a system. To summarize,
there are many types of criteria for classifying a language: the language class
(software-{PL}, hardware/software-{HSL or DHSL} or hardware languages
{HL, HDL, DHDL or CHDL} ), the particular class of the system model
representations (transactional, procedural, semi-procedural or
non-procedural), the particular domain of the system
model representations (behavioral, structural or physical),
the level of abstraction (system, algorithmic, functional-block, logic or
circuit), the source medium that is used (e.g. graphical or textual) and
the languages' specific area of strength (e.g. synthesis, simulation
or modeling). Figure 3.6 represents all of the above criteria - except the
last two - bringing together all of the definitions and concepts introduced
earlier in this chapter.

![Figure-3.6-Language-Classifications.jpg](figures/image-coming-soon.png)

**Figure 3.6** *Language Classifications*

The figure is self-explanatory illustrating which areas common languages cover.
This figure can help a designer find a language that is good for a particular
area of system development. For example, if a designer needs a sequential
software language to model a system in the behavioral domain - from the figure,
C, ADA, Modula-2 and VHDL may all be good candidates. Not illustrated is the
specific area of expertise - in this case, which language is good for modeling.
VHDL is the best choice since this is a modeling language. If programming were
the objective, then C or Modula-2 should be chosen. As seen in this example,
many criteria must be examined to make a wise decision
[[Hart87b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87b).

It is interesting to note that even though VHDL is classified as a hardware
language, it covers the software language and hardware/software language classes.
This is quite surprising, showing that high-level HDLs such as VHDL are not
really hardware languages at all, but are actually software languages, in the
strictest sense. They are called HDLs because they contain hardware constructs
in the higher levels. It will be interesting to see if VHDL will expand,
covering lower abstraction levels as well as areas of analog and mechanical
design, at the least.

## 3.5 Multi-Level Description Environment and Multi-Level Simulation

As briefly explained, a multi-level description tool can provide a means for
top­down modeling as well as a means for the design team to work efficiently.
It was also stated that while a multi-level HDL can solely accomplish this,
one element is missing - a visual source media. A visual data input for a
designer is much more powerful and faster to understand then a textual string.
This is the forte of schematic capture
[[Hart87a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87a).
The solution is to provide more than one description tool to cover the many
levels of abstraction. Most EDA vendors provide environments with both a
graphical schematic capture and a textual HDL such as Verilog or VHDL.

* A *multi-level description* environment is a collection of more than one
description tool covering different as well as overlapping abstraction levels.

Several description tools are used because finding the ultimate tool which
satisfies every person in the design team is difficult. For example, usually
the designer has mastered a description tool covering one or two abstraction
levels. Other designers have mastered their respective description tools and
abstraction levels. As explained, different description tools are used
depending on the task, each tool having its own form of entry such as textual,
graphical or tabular and its own area of strength. Finding a tool that suits
everyone for verification, maintainability, manageability and manufacturability
is difficult and probably impossible. For this reason, more than one description
tool is placed in the design environment
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92)
[[Gajs91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#gajs91).

To fully utilize a multi-level description environment, multi-level simulation
is required to verify the functionality of the system.

* *Multi-level simulation* is the ability to simulate system models that contain
  integrated models of various abstraction levels developed from one or more
  description tools.

A mixed form of entry using various description tools was utilized in the TI
laboratories, proving that design team members can work at a certain level and
still use the same EDA environment. For example, in Laboratory 3B
([Appendix I](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-i/appendix-i.md#appendix-i)),
a top-level schematic drawing linked the system modules to underlying VHDL
models. This provides a means for a high-level designer to model the entire
system in VHDL while another designer who is more familiar with schematic
capture can incorporate the VHDL models within the schematic drawing.
Both designers can simulate any part of the design at any time
(i.e. multi-level simulation), checking its functionality. Hence, the
expertise of both designers can be fully exploited in a common multi-level
description environment.

## 3.6 VHDL

VHDL is a good example of a multi-level hardware description language. Even
though it is mainly a software language, it has hardware constructs and embedded
concurrent statements allowing a designer to think in terms of hardware. VHDL
stops short of specifying the physical characteristics and layout of a circuit.

VHDL arose out of the United States Department of Defense (DOD) VHSIC program
in the early 1980s. There was a need to develop a department-wide CHDL standard
enabling contractors to work together and share design information. The aim was
to have a single language that would support the design, description and
simulation of hardware structures. VHDL is now a mandated CHDL standard in all
DOD hardware design contracts and has been an Institute of Electrical and
Electronic Engineers (IEEE) standard since 1987
[[Dasg89b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dasg89b)
[[Ashe90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ashe90).

### 3.6.1 Benefits and Limitations of VHDL

VHDL has all the benefits of HDLs mentioned earlier. It is a multi-level
description tool and is technology-independent. It allows early simulation,
faster modeling time, reduced notational complexity and technology migration.
These benefits will now be elaborated on in the context of VHDL.

VHDL supports top-down modeling and the first-silicon approach. Top-down
modeling can be achieved only with high-level abstraction models. The entire
system is first modeled using the behavioral domain, thus allowing for early
simulation. After the system is functionally correct, the lower level models
can be obtained with a synthesis process or manual low-level modeling. Along
the way, functional simulation is possible. The first-silicon approach is
possible with VHDL since the system can be functionally
tested without being committed to hardware, thus helping to eliminate the
expense of multiple hardware prototypes
[[Ashe90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ashe90).

The design team also benefits from using VHDL since it was written to be
understood and used by managers, designers, testers and simulators.
This understanding is due to the multi-level description environment,
different levels appealing to different designers
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91).
Furthermore, because VHDL has constructs that are rich in pneumonic meaning (at the
behavioral level), it serves as a good documentation and communication medium
between the designers. To provide graphical capabilities, VHDL is usually
used with other description tools, such as schematic capture.

VHDL was originally written as a simulation language, so its semantics are
well suited for an event-driven simulator. VHDL can also be used as excitation
for simulators. As an example, this feature was used in the 8-bit microprocessor
design. All VHDL models were functionally simulated using VHDL testing vectors.
A template of VHDL simulation input is shown in
[Appendix L](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md#appendix-l)
[[Deco92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#deco92).
[[CLSI91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#clsi91).

Because of VHDL's standardization at both the DOD and IEEE, the models are
portable across many platforms and tools. Many vendors, such as Mentor Graphics
and Viewlogic, are now supporting VHDL in their design environments
[[View93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#View93)
[[Ment91c,e-f]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ment91c).
Also, system models of popular chips, such as Intel's Pentium microprocessor
are being modeled in VHDL. These models can be incorporated into the simulation
environment without the need for buying costly emulation systems. Of course,
synthesis of these models would be possible, but it would not perform as
efficiently as the real chip. The limitations of synthesis tools are discussed in
[Chapter 4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4).

The limitations of HDLs must be kept in mind, especially in regard to the
underlying technology. In VHDL, a designer can create a system with a billion
gigabytes of RAM, but the question arises as to how this can actually be
implemented with today's technology.  In effect, VHDL is supposed to be
technology independent, but in practice, the feasibility of the technology
implementation should always be on the designer's mind. The synthesis tools
also play a role in an HDL's limitations. This is explained in
[Chapter 4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4).

### 3.6.2 Four Types of VHDL Models

VHDL offers four types of description models; the structural, the register
transfer (dataflow), the behavioral and a mixture of the above three
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91).
Figure 3.7 illustrates how these models fit into the system representation diagram.

![Figure-3.7-VHDL-Description-Tool-Area-of-System-Representations.jpg](figures/image-coming-soon.png)

**Figure 3.7** *VHDL Description Tool Area of System Representations*

The syntax and constructs of VHDL are beyond the scope of this thesis.
For this information, the reader may refer to
[[Dasg89b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dasg89b)
[[CLSI91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#clsi91)
[[RuHl93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ruhl93)
[[Ashe90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ashe90)
[[Ment91e­-f]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ment91e)
[[IEEE88]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ieee88).
It is important however to review some of the basic model types and design
units to gain insight into this language.

Starting with the highest and most abstract description, *behavioral models*
specify a component's function using sequential statements, much like those
used in common high-level languages. It is located in and above the algorithmic
level in the behavioral domain (See Figure 3.7) and is characterized by the use
of concurrently executing process statements that, in turn, contain sequential
statements. The contents of the process statement can be controlled by the use
of a sensitivity list (i.e. if a signal changes its value, then the process is
started or suspended). Standard programming language constructs such as
CASE, IF and ELSE, can be used for conditional and repetitive behavior
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).
As expected, behavioral models provide little detail of the technology used
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91).

The behavioral model is essential for top-down modeling and most appropriate for
simulating large complex hardware modules. It is also a valuable method for
documenting a design. It can be understood by managers and non-engineers who
may have a limited knowledge of digital hardware
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91).

The second model type is the *register transfer level* (RTL) model,
also known as the data flow model. It is still in the behavioral domain
and is characterized by the use of concurrent signal assignment statements.
It represents the flow of data and control. RTL models imply a hardware
implementation. Because hardware is introduced, the RTL models do not provide
as good a documentation media as the behavioral models. Simulation is
also slower than with the behavioral models because of the extra lines of code
that describe the flow of data through buses and registers
[[Nava91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#nava91).

The third model type is the *structural model* which is the lowest, most detailed
and is characterized by the use of component instantiation statements.
As an analogy, it is a textual representation of a schematic drawing.
It contains a wirelist of components and interconnections.
It can also model components as a collection of gates and provides a base for
hierarchical design. It is usually the top-level model in the system
[[DGLW92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dglw92).

The structural model takes the longest time to simulate, but is the
easiest for the synthesis system to process. This is further explained in
[Chapter 4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4).
As with a schematic drawing, the function of the hardware is less
comprehensible than with the other two types, making it a less desirable choice
for documentation. However, since it exactly describes the interconnections
between modules, it provides good interface documentation.

### 3.6.3 VHDL Library Design Units

VHDL has five basic design units: entity declaration, architecture body,
package declaration, package body and configuration declaration.
There are entity declaration/architecture body pairs, package
declaration/package body pairs or a combination of all four units.

* The *entity declaration* design unit describes the interface between the VHDL
  model type and the 1/0 ports of the model. It is like a symbol on a schematic,
  that is, the interface is known, yet the underlying architecture is not.
  Generic parameters (attributes) can also be added to the entity to customize
  the behavior for a particular instance of the model. A VHDL digital system
  consists of a collection of design entities, one of which represents the
  top-level. The other entities comprise the partitioned system modules.
* The *architecture body* defines the inside of the entity - its functionality -
  using one of the four basic model types described above. It has two parts,
  the declaration part that lists the necessary variables and the statement
  part that describes the entity's behavior. The architecture body can
  also use generics to specify additional information about the model.

The separation of the entity and the architecture design units is very useful
because an entity can have more than one underlining architecture.
Usually with a top­down modeling approach, the architecture body starts with a
behavioral model, then a more refined RTL model, and finally a structural model.
The ability of step-wise refinement during the design process is crucial to
top-down modeling. VHDL facilitates this well with the entity/architecture pair
[[Dasg89b]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#dasg89b).

The package declaration is used to declare subprograms (procedures and
functions), constants and types separate from the entity/architecture pair.
Its contents can be used in various architectures, much like the language C
utilizes nested functions. As the entity declaration has a architecture body,
so the package declaration has a package body.

* The package body contains the functionality of the subprograms.
  Subprograms define algorithms for computing values or exhibiting behavior.
  They can be used to convert types, define output resolution or define ports
  in a process. The two forms of a subprogram are functions and procedures.
* Lastly, the configuration declaration design unit describes how design
  entities are put together to form a complete system.
