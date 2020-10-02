[Table of Contents](https://github.com/JeffDeCola/my-masters-thesis#table-of-contents)

# CHAPTER 5

## OVERVIEW OF MICROSYSTEM TECHNOLOGIES

Microsystem technologies is the third element in the design framework. The
characteristics of the underlying technology are important for the designer to
understand in order to model a system efficiently. As explained in the previous
chapter, low-level models directly relate to the technology and high-level
models relate to the synthesis tools, which in turn relate to the technology.
This model/technology relationship is important for technology migration since
the system must be modeled in such a way to benefit all technologies.

[Section 5.1](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#51-technology-breakdown)
gives an overview of current microsystem technologies. Standard parts and PLDs
are explored in
[Section 5.2](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#52-standard-parts-and-plds).
[Section 5.3](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#53-all-mask-asics)
explains all-mask ASICs.
[Section 5.4](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#54-gate-arrays-and-fpgas)
discusses gate arrays and FPGAs. FPGA device architectures, reprogrammability
and programming will also be explored. MCMs are introduced in
[Section 5.5](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#55-multichip-modules-mcms).
Lastly,
[Section 5.6](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#56-selecting-a-technological-device)
will introduce software aided device selection, a new tool in the design
framework that assists the designer in the selection of the most appropriate
technology. Technology selection is a practical aspect of digital system
development somewhat neglected so far.

## 5.1 Technology Breakdown

Figure 5.1 shows the current integrated circuit (IC) technology, broken down for
easy comprehension. The ovals represent an area of technology while the
rectangles represent a physical technology. Most of the technologies shown can
be manufactured using any technological family such as the transistor-transistor
logic (TTL), emitter-coupled logic (ECL) or the complementary metal
oxide semiconductor (CMOS) family.

![Figure-5.1-Integrated-Circuit-Technology-Breakdown.jpg](figures/image-coming-soon.png)

**Figure 5.1** *Integrated Circuit Technology Breakdown*

The first major division in Figure 5.1 is between standard parts and ASIC
technologies. Standard parts are a collection of pre-designed components
while ASICs are further divided into semi-custom and full-custom areas.
ASICs are customized for a specific purpose. Full-custom ASICs have all
the mask layers available for use. For example, analog/digital and
MCM microsystem technologies. Since it is rarely practical to fully
customize an entire system, often a semi-custom ASIC process
is used in which a portion of the ASIC has been pre-designed.
For example, gate arrays have pre-designed mask layers while standard-cells
use pre-designed cells,, both of which have to be submitted to a foundry
for fabrication
[[EBCH86]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ebch86).

Semi-custom ASICs also contain user programmable FPGAs and Programmable logic
devices (PLDs). These devices do not have to be submitted to a foundry
for fabrication, the can be programmed in-house.

## 5.2 Standard Parts and PLDs

Standard parts and PLDs are well documented, inexpensive, easy to work with
and range from small scale integration (SSI) to large scale integration (LSI)
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#Wake90).
They both have predictable time delays because standard parts are already built
and PLDs have a highly structured architecture. Both technologies are easily
incorporated into an EDA design environment because of their simplicity and
popularity
[[Seid88]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#seid88).
EDA environments routinely have the standard part 7400 TTL series and some PLD
components in their parts libraries.

Standard parts provide a way to design a system from a collection of
pre-designed (off-the-shelf) parts. The 7400 TIL family is very common and
constitutes a set of basic logic functions
[[Texa85]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa85).
Because of their popularity, they come in a wide variety of families and
packages. Standard parts are usually used for miscellaneous glue logic on a
board. They are rarely used for complex system design. Unfortunately, they require
substantial PC-board space and consequently, use a lot of power
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#wake90).

User programmable PLDs are available in two main forms, programmable logic array
(PLA) and programmable array logic (PAL). They are used to replace random
SSI and medium scale integration (MSI) standard parts, thus reducing chip count
(integration), power and PC-board area while increasing reliability. This is a classic
 technology migration example, the movement from standard parts to PLDs.
 PLDs also have the advantage of flexibility. If minor functional changes
 need to be done to the system and it is confined to a PLD, the old PLD
 is removed and replaced by a new PLD · This eliminates the need for costly
 PC-Board modifications. PLDs can be sequential or combinational and are
 programmed by a designer to perform a particular logic function.
 Long delay times and poor density however, are major drawbacks of PLDs
[[ObCD86]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#obcd86).

PLDs have a highly structured architecture which is programmed by making
connections between metal signal lines, thereby creating the desired logical
function. A common way to make proper connections is by blowing or not
blowing particular fuses. Some PLDs have security fuses that prevent the
reverse engineering of the internal proprietary logic. PLDs can use
programming languages such as the Advanced Boolean Expression Language
(ABEL) or Pascal to aid the designer by specifying the logic functions
symbolically. ABEL is the industry standard PLD programming language in which
complex designs can be described using Boolean equations, truth tables or state
machine diagrams
[[Texa93g]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa93g).

PLAs have a fixed AND array whose output feeds a programmable OR array.
They are proven to be effective devices because they can implement multiple
output switching functions or combinational logic. They can realize any
sum-of-products logic expression, subject to the size and number of pins of
the device
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#wake90).
PLAs are a variant of the read-only memory (ROM) concept in which ROMs use
every input combination tied to a unique output combination
[[Texa93g]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa93g).

PALs, on the other hand, have the reverse architecture of PLAs, a programmable
AND array whose output feeds a fixed OR array. This structure can no longer
realize any sum-of-products logic expression, but is still very useful
for most applications.

There are other variations of PLDs. A field programmable logic array (FPLA) has
both a programmable AND and OR a1ray offering high versatility, but is usually
impractical in most low complexity applications because of its larger die size, expense
and power consumption.  another type of programmable logic is the erasable
programmable logic device (EPLD) that provides a designer with the ability to reprogram
the device
[[Texa93g]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa93g)
[[Xili92e]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#xili92e).

## 5.3 All-Mask ASICs

## 5.4 Gate Arrays and FPGAs

### 5.4.1 Gate Arrays

### 5.4.2 FPGA Architectures and Programming

## 5.5 Multichip Modules (MCMs)

### 5.5.1 A New Technology

### 5.5.2 Design Issues

### 5.5.3 Multichip Module Assemblies

## 5.6 Selecting a Technological Device

### 5.6.1 The Logic Integration Tool (LIT)

### 5.6.2 Software Aided Selection Issues
