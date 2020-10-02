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
[[RuHl93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ruhl93).

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

MCMs are hailed as the packaging technology of the 1990s, where surface mount
was the packaging technology of the 1980s. Since MCMs are a fairly new
technology, there are few comprehensive books on the subject; most information
is gathered by reading newspaper articles, periodicals and selected papers.
Most of the information in this section came from a collection of papers in
[[JoTB91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#jotb91).

### 5.5.1 A New Technology

There has always been motivation to develop high density devices that are cost
effective and have reduced design times. Density is usually achieved at the
chip level. There is now a trend to increase the density at the interconnect
level. MCMs allow this to happen.

An MCM is a new packaging technology in which dice (chips without a package)
are interconnected on a substrate (metal, silicon or ceramic) at the silicon
level, not at the PC-board, hybrid or backplane level. This allows the
dice to be placed extremely close together, with short interconnections
between them.

Figure 5.2 illustrates a general MCM configuration. An MCM consists of an
assembly and various dice that contain the digital systems. The assembly
unit is the structure that contains the interconnections between the dice
and the external environment. As an analogy, an MCM is a very small PC-board.

![Figure-5.2-General-MCM-Assembly-Unit-and-Dice.jpg](figures/image-coming-soon.png)

**Figure 5.2** *General MCM Assembly Unit and Dice*

International Business Machines (IBM) was one of the first companies to
embrace this new technology with its use of an MCM in one of its mainframe
computers in the early 1980s. The cost at the time was much higher than
with conventional interconnection methods, but IBM justified the cost
with an increase in circuit performance. This was due to the shorter
interconnections between the dice, allowing shorter path delays.

Besides performance, there are many other advantages to using MCMs.
The size of the system is reduced due to dice proximity. The weight
is also reduced due to the smaller size. Size and weight are
important for many applications such as notebook PCs, pagers and
hand-held phones.

With wide-spread use, the cost of MCMs will go down, making them more
affordable for many companies. Also, current chip manufacturers will
offer dice that designers can use in their MCMs. Intel's 8086 line of
microprocessors are now available in die form
[[Cost92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#cost92).

### 5.5.2 Design Issues

In order to make this technology acceptable and feasible to industry, many
obstacles still need to be addressed; the high cost of prototyping, questions of
testing, difficulty of repairing and the low-yield. To overcome these obstacles,
four basic design issues are explored; testing requirements, known-good dice
(KGD), sophisticated EDA tools and adequate design and process standards
[[Chin93]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#chin93).

The first issue, testing, helps increase the yield of MCMs. Testing MCMs needs
to happen at all phases in the design process. At the MCM assembly level,
signal integrity, thermal analysis and functionality must be tested. Signal
integrity involves cross-talk, noise and speed limits. Thermal analysis is
important because MCMs can dissipate huge amounts of heat, sometimes as much
as 1,000 watts. This can cause cracking and welting of the material. Materials,
chip placement and packaging must be utilized to help reduce heat
[[BrBu92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#brbu92).
Testing is also performed during the manufacturing process. For example,
each layer of the assembly must be tested and repaired before the next layer
is fabricated. This insures proper functionality of the interconnections
[[Donl92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#donl92).

Secondly, KGD must be addressed. KGD must be used with MCMs to further
increase the yield. Defective dice, when attached to MCMs are disastrous,
because repairing can be difficult. If possible, the die must be removed and replaced
[[Bind91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#bind91).
KGD means that the dice must be unpackaged, ready for MCM assembly, electrically
reliable and functionally guaranteed. The reason for the shortage of KGD is
that testing bare dice is costly, difficult, slow and potentially harmful. Most
silicon vendors will not do this because of the small market
[[Donl92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#donl92)
[[PoGa92]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#poga92).

Lastly, advanced EDA tools and design/process standards for MCMs are just now
being addressed by industry.

### 5.5.3 Multichip Module Assemblies

The MCM assemblies and chip attachment methods offer a huge variety of choices,
each with their own limitations and problems. To discuss all of the various
technologies would be a book in itself. It is the intention here to give an
overview (Refer to Figure 5.2 throughout this discussion).

There are many MCM mutilayer **(sic)** assemblies that provide the structure to hold
the dice. An assembly consists of insulating levels containing conductive
interconnections and a substrate used to support the levels. A package is
used to hold the substrate, providing the pins and a heat sink
[[JoTB91]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#jotb91).

The first MCM assembly used a cofired multilayer ceramic technology referred to
as MCM-C. The assembly is built up with alumina ceramic tape and cofired with
metal to produce the interconnections. The assembly provided enough structural
support to hold the dice. A drawback is that the high dielectric constant of
ceramic alumina limits the interconnection density per layer. A lower
dielectric material will increase the interconnection density because the
layers can be made thinner. Decreasing the dielectric thickness per layer
brings the ground planes closer to the layers which reduces the cross­talk
around the interconnections. Reduced cross-talk allows the interconnections
to be closer, hence increased interconnection density per layer.

Another MCM multilayer assembly uses the familiar silicon integrated circuit
processing technology ref erred to as MCM-Si. This silicon-on-silicon process
starts with a silicon substrate and deposits layers of a silicon dioxide
dielectric on the silicon sub,strate with aluminum metallization for the
interconnects. This is called thin-film multilayer modules on. silicon.
The name thin-film is used because the silicon dielectric layers are thin
due to their low dielectric constant whereas MCM-C is referred to as a
thick-film because the dielectric layers are much thicker.

A silicon-on-silicon process has many advantages. The widths of the
interconnects can be reduced to 1O-microns because of the lower dielectric
constant. Silicon processing technology is widely known and is highly available
because of the many silicon fabrication plants. The thermal coefficient of
expansion (TCE) between the die and substrate is the same since it is the
same material. A matched TCE is extremely important for structural integrity.
An unmatched TCE can rip apart the assembly when heat is introduced, because
the materials will expand differently, creating stress on the assembly.
The main problems with silicon-on-silicon are that multiple layers of silicon
dioxide are difficult to produce and the high resistance of aluminum limits
speed. Moreover, silicon as a substrate is not mechanically strong enough to
hold the dice, reinforcements such as alumina ceramics must be used to provide
support and protection (package). This is a problem because the adhesives
(used between the substrate and package) such as aluminum nitride or silicon
carbide provide inefficient heat transfer; although on the positive side
they do adhere the ceramic to the silicon and provide a resilience which
makes up for unmatched TCE.

A variation of the above technology called MCM-D uses an organic polymer
dielectric instead of silicon dioxide for the insulating layers.
A silicon substrate is still used to hold up the layers, as well as the
ceramic package utilized to reinforce the silicon. The polymer layer process
is easier to produce and allows the use of a lower resistance interconnection
metal such as copper rather than aluminum. Polymide is a popular dielectric
polymer because of its low dielectric constant, which. as explained above,
can increase increase interconnection density. A disadvantage is that some
polymers, during the layering process can leave bumps where the metal
lines are located. New levels added, using the standard photolithogmphic
process, will be unevenly focused and produce poor interconnections.
The solution is to use a costly polishing process before each polymer
layer is added.

It became evident that the silicon substrate in a MCM-D assembly can be
removed because it is not needed to hold up the organic polymer dielectric
layers. A new substrate that can still match the TCE of the dice can be used,
such as certain metals and ceramics. The dice are directly attached to the new
substrate through holes in the dielectric. The result is called thin-film
multilayer modules on metal or ceramic substrates. In summary, for an
enhanced MCM-D, the layers use a low dielectric organic polymer such as
polymide, the interconnections use a low resistance metal such as copper and
the substrate has a matched TCE to silicon such as metal or ceramics.

Lastly, MCM-L is a technology that is a variation of the epoxy PC-board process.
It uses a high-density laminate printed-circuit board technique.

The die attachment methods are as varied as the assembly technologies.
They include tape-automated bonding (TAB), solder bump, wirebond
and direct on chip metallization. Figure 5.2 illustrates a solder bump.

## 5.6 Selecting a Technological Device

Technology is chosen from a marriage between the designer's objectives
and the device's technological characteristics. Choosing an appropriate
technology based on the design objectives is not an easy task because of
the tremendous amount of information the designer must consider.
Evaluating the trade-offs between all the available devices
(microsystem technologies) is extremely time consuming and tedious.

Technology selection is traditionally done at the beginning of the design
process because the implementation tools are available, the designer is
familiar with them or some sort of quick analysis justified the decision.
This early selection locks the designer into the device's constraints such
as power consumption, pin count or size.

Selecting a technology later in the design process, after the system has
been somewhat modeled, provides a better way for the designer to focus on
the right technology. This process works best with high-level models as
they are not yet technology-dependent. In contrast, low-level models are
too dependent on the technology and could force the selection of an inefficient
device.

Using a software aided selection tool is invaluable in this process.
It does all the calculations, recommending a specific technology based on
the system model and the design objectives. It can reduce the tedium and
time spent in determining which logic device best meets the design objectives.
It is a powerful tool in the design framework as illustrated in Figure 5.3.

![Figure-5.3-Design-Framework-Illustrating-Software-Aided-Device-Selection.jpg](figures/image-coming-soon.png)

**Figure 5.3** *Design Framework Illustrating Software Aided Device Selection*

### 5.6.1 The Logic Integration Tool (LIT)

Laboratory 1 introduces the Logic Integration Tool (LIT) from TI (Refer to
[Appendix C](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-c/appendix-c.md#appendix-c)).
The LIT aids the designer in choosing the most appropriate technology based on
the design objectives and the system model. It takes the tedious work out
of mulling over design objectives. The LIT can be used to analyze a new or
old models
[[Texa93a,d]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa93a)
[[Texa92a]](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#texa92a).

The program allows the designer to graphically experiment, in real-time, with
the effects of varying the design objectives. A detailed explanation of why a
particular technology was chosen is also given. The seven basic design
objectives considered are cost, NRE, power, area, lead time (time-to-market),
design flexibility and volume. Each one has a trade off with the other.
For example, reduced power can increase cost, while reduced area can affect
lead time.

Although the LIT is limited only to TI parts, this tool demonstrates a step in
the right direction. Eventually a comprehensive database which evaluates all
available microsystem technologies will be developed.

### 5.6.2 Software Aided Selection Issues

There are some basic issues that the designer must be aware of when using
software aided device selection tools. For instance, designers must not
rely solely upon the selection program to think for them. They must not
be satisfied with the program's chosen technological device as the only
possible choice. Therefore, it is necessary that the designer fully
understand how the program works and how it reaches its conclusions.
This will provide the designer with the ability to understand and prove
that the chosen device is able to meet the system's objectives.

Another important point is that some programs, such as the LIT, are
vendor specific. That is, the programs are geared only towards particular
technologies. This is limiting in that the programs will not consider
devices from other vendors that could be better choices.

Lastly, the choice derived from the program can only be as good as the
information supplied. Therefor, the programs must provide the designer
with the ability to enter relevant system objectives.
