[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

# CHAPTER 1

## INTRODUCTION

ASIC development has evolved substantially in the past decade,
advancing from thousands of transistors on a single silicon substrate
(i.e. die) in the early 1980s to millions in the early 1990s [DGLW92].
This increase in transistor density is due to the rapid improvement in
processes used to manufacture semiconductor chips; hence, there has
been an emergence of smaller transistor dimensions, a larger die size
and increased mask layers [DeSB86]. Moore's Law states that there is a
doubling in transistor density on substrates every two years
(eventually physical limits will endure) [Dasg89a].
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

Some of the limitations of a low-level design framework that prevent the designer from being productive are:

* a)	Low-level system models tend to be technology and tool-dependent, locking the designer into using one type of microsystem technology and EDA tool [DGLW92].
b)	In the low-level design framework technology migration is not possible ( or very limited), placing the system models in jeopardy of obsolescence.
c)	Low-level models require extensive amounts of time to develop due to the increased system size and complexity.
d)	Low-level models make it difficult for the designer to comprehend the functionality of the system. Therefore, the designer loses the ability to manage the system.
e)	Within the vertical design methodology, a bottom-up modeling approach is used in which the complete system cannot be simulated during early stages of the design process. Bottom-up modeling is a methodology which