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

All-mask ASICs are described as follows:

* All-masks means that the designer has complete control over all the mask
  layers in the VLSI process. The term refers to both full-custom ASICs
  such as MCMs and analog/digital technologies as well as semi-custom
  standard-cells technologies.

Full-custom ASIC design inherently has higher system performance and higher
transistor density since the designer' can create a highly customized
system not mandated by a collection of pre-designed parts. Full-custom ASIC
development can be very expensive in terms of the designer's time and
non-recurring engineering (NRE) costs because all the mask layers are
customized. These costs can be justified with higher volumes and the
decrease in chip count that would have been used
[[Seid88]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#seid88)
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#wake90).

The semi-custom standard-cell approach further reduces costs, over full-custom
ASICs, by cutting down the design time and NRE
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#wake90).
Pre-designed building blocks such as decoders, registers, memories and even
PLDs can be used. The designer still has full control over all the mask
layers and can always add some custom logic when desired
[[DeSB86]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#desb86).
For example, the A VSPI design (Refer to Preface) used a CMOS semi-custom
process in which some die space was available to add a full-customized
inverter
[[Deco92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#deco92).

The standard-cells in the library are usually highly structured, having their 1/0
ports at specific places. The cells are connected by abutments, thus connecting
the ports together. This reduces the metal routing between cells which can save
a substantial amount of area
[[Hart87a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#hart87a).

One of the main problems o:f all-mask ASICs is their limited flexibility; once the
system is put into silicon, it is very difficult to change. For example, the
AVSPI design used Mississippi State University (MSU) standard-cells.
Teh objective was to get the cells extremely close together at the expense of
the flexibility to make changes later on
[[Deco91a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#Deco91a).

## 5.4 Gate Arrays and FPGAs

Gate arrays and FPGAs are semi-custom ASIC devices that are popular with industry
since they provide reduced design time and lower NRE costs than all-mask ASIC
development.

### 5.4.1 Gate Arrays

Gate arrays use a large number of_identical transistors arranged in a
pre-designed pattern with the interconnections left unspecified. Customization
is accomplished at the metal mask layers only. First, the designer uses an
EDA tool to specify the logic functions. Then, an automated process creates
a metal interconnect file that determines the interconnect configuration of
the metal mask layers, creating the desired functions. The metal layer file
is then sent to a foundry (along with test vectors) where it is combined with
the lower pre-designed mask layers for fabrication. It usually takes a few
weeks before the chip is returned
[[Texa88]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa88)
[[RuHl92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ruhl92).

The benefits and limitations of gate arrays can be understood more clearly when
compared to the standard-cell process. Both send mask layers to a foundry, but gate
arrays cost less since most of the mask layers are pre-designed.
This factor alone reduces NRE costs.  To further reduce NRE costs, higher volume
is necessary.

A disadvantage of gate arrays is that their internal transistors are the same,
arranged in an organized architecture.  This can take up more space than the standard-cell
approach - as much as 25% more
[[DeSB86]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#desb86)
[[Wake90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#wake90).
The larger size uses more power and has slower performance because of the
longer wire lengths. Also, the designer can not incorporate full-custom logic
using gate arrays, eliminating the option of customizing an area of a chip
for high performance.

### 5.4.2 FPGA Architectures and Programming

FPGAs are similar to gate arrays, but they do not have to be sent to a foundry
for fabrication. The interconnections can be programmed in-house.
FPGAs combine the highly structured architecture of gate arrays and the
programmability of PLDs to produce a very high density user programmable logic
device. FPGAs contain a large array of macrocells embedded in a matrix of
programmable interconnect segments. They also can have resistors for datapath
applications. The drawback is, as with gate arrays, they take up a large amount
of silicon because of their highly organized structure, thus reducing speed,
increasing power consumption and increasing cost. Furthermore, like gate arrays,
they cannot have full customization for performance requirements.

FPGAs are becoming extremely popular because of the reduced design time over
other ASIC processes. Also, FPGAs can be programmed and verified in a few
days as opposed to several weeks in the standard-cell and gate-array approaches.

FPGAs come in a variety of packages, 1/0 pin counts, speeds and densities.
FPGA device architecture differs from vendor to vendor, each having their
own niche in the marketplace.

In the TI laboratory experiments
(Appendices C-K),
TI/Actel FPGAs were implemented. They come in three series - TPCl0, TPC12 and
TPC14, each with their own family of devices and with their own characteristics
such as gate densities, logic modules, pin counts, power requirements and
packaging. The equivalent gate density ranges from 1,000 to 10,000 gates
and all TI/Actel FPGAs are one-time programmable. For more information
about the particular characteristics of the devices refer to
[[Texa93f]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa93f)
[[Acte92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#acte92).

The architectural elements of the TPC series consists of logic modules, routing
channels and a clock distribution network. The logic modules are set up in rows
that are separated by routing tracks. An antifuse method is used to program
the logic modules to perform a particular function and set up the required
routing track connections. The clock distribution network can supply a clock
signal to any sequential logic module. The TPC12 and TPC14 series devices have
combinational and sequential logic modules while the TPCl0 has only
combinational logic modules
[[Texa93f]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa93f)
[[RuH193]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ruhl93).

The TPC1225A was used in the laboratories (Refer to Appendix G), mainly because
it was available for use. It has 84-pins with 2,500 gates available for
programming. It uses two-metal CMOS, and employs the antifuse technology.

Xilinx is another manufacturer of FPGAs. Their products have configurable
logic blocks (CLBs) that control the functionality, input output blocks
(IOBs) for the external interface and internal interconnections that connect
the CLBs and IOBs together. Common families are the XC3l00 and XC4000,
all of which are reprogrammable
[[Xili91c-d]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#xili91c)
[[Xili92c-d]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#xili92c).

Reprogrammable FPGAs (RAM based FPGAs) have the advantage of changing the
internal architecture. They come in two forms; volatile and non-volatile.
Non-volatile FPGAs, like EPLDs, keep their customized structure until a
process, such as ultra-violet light, erases it. Volatile FPGAs lose all
customized structure when power is turned off. Volatile FPGA are programmed
upon startup by receiving information from a memory chip
(usually the configuration information is contained in a ROM).
Reprogrammability is advantageous since multiple hardware configurations
can be obtained from the same FPGA, conserving space in space limited systems
[[Tall90]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#tall90).
Some drawbacks are the amount of time it takes to program upon startup and the
susceptibility to faults caused by radiation.

For an example of programming a typical FPGA, refer to Laboratory 5A
([Appendix G](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-g/appendix-g.md)).
For reference, the main steps are listed in Table 5.1.

|       |                                           |  
|------:|:------------------------------------------|
| 1)    | Front-End Preparation                     |
| 2)    | Wirelist Optimization (Optional)          |
| 3)    | Enter Programming Environment             |
| 4)    | Select Package and Device                 |
| 5)    | Manual I/0 Pin Assignments (Optional)     |
| 6)    | Validate, Place, Route and Extract        |
| 7)    | Static Timing Verification (Optional)     |
| 8)    | Back Annotation (Optional)                |
| 9)    | Device Programming                        |
| 1O)   | Verification                              |

**Table 5.1** *TI-ALS FPGA Programming Flowchart*

## 5.5 Multichip Modules (MCMs)

### 5.5.1 A New Technology

### 5.5.2 Design Issues

### 5.5.3 Multichip Module Assemblies

## 5.6 Selecting a Technological Device

### 5.6.1 The Logic Integration Tool (LIT)

### 5.6.2 Software Aided Selection Issues
