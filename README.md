# my-masters-thesis

**A HIGH-LEVEL DESIGN FRAMEWORK ILLUSTRATING TECHNOLOGY MIGRATION**

BY Jeffry A. DeCola

B.S.E.E., University of New Hampshire, 1991

Submitted to the University of New Hampshire
in Partial Fulfillment of the Requirements for the Degree of
Master of Science
in
Electrical Engineering,
December, 1993

Copies of my thesis are located at the
[UNH Diamond Library](https://unh.primo.exlibrisgroup.com/permalink/01USNH_UNH/121i3ml/alma991007116219805221)
and the
[UNH Engineering, Math & CS Library](https://unh.primo.exlibrisgroup.com/permalink/01USNH_UNH/121i3ml/alma991007116219805221)

ALL RIGHTS RESERVED
&copy;1993 Jeffry A. DeCola
(Registration Number [TXu000610236](https://www.copyright.gov))

## ABSTRACT

This thesis presents a comprehensive high-level design framework which
embodies the multiplicity of system models (from physical to behavioral)
and microsystem technologies (from standard parts to multichip modules (MCMs))
as well as the interrelations between them (vertical and horizontal design
methodologies). This framework is used as a guide to understand, view and
analyze all areas of complex system development, especially technology
migration (e.g. integrating logic using field programmable gate arrays (FPGAs)
instead of standard parts). The description tool VHDL provides a means to
accomplish technology migration as demonstrated in two practical applications:
laboratory experiments of a NASA Host Interface Serial Controller (HISC) and
an 8-bit microprocessor design, both functionally implemented using an
FPGA technology.

## TABLE OF CONTENTS

* [EXAMINED AND APPROVED](https://github.com/JeffDeCola/my-masters-thesis/blob/master/examined-and-approved/examined-and-approved.md)
* [DEDICATION](https://github.com/JeffDeCola/my-masters-thesis/blob/master/dedication/dedication.md)
* [ACKNOWLEDGMENTS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/acknowledgements/acknowledgements.md)
* [PREFACE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/preface/preface.md)
* [LIST OF FIGURES](https://github.com/JeffDeCola/my-masters-thesis/blob/master/list-of-figures/list-of-figures.md)
* [LIST OF TABLES](https://github.com/JeffDeCola/my-masters-thesis/blob/master/list-of-tables/list-of-tables.md)
* [TRADEMARKS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/trademarks/trademarks.md)
* [ABSTRACT](https://github.com/JeffDeCola/my-masters-thesis/blob/master/abstract/abstract.md)

**1 [INTRODUCTION](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-1/chapter-1.md#chapter-1)**

**2 [DESIGN DOMAIN, DESIGN FRAMEWORK AND TECHNOLOGY MIGRATION IN MICROSYSTEM DEVELOPMENT](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#chapter-2)**

* 2.1 [Design Domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#21-design-domain)
  * 2.1.1 [Schematic Capture View of the Design Domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#211-schematic-capture-view-of-the-design-domain)
  * 2.1.2 [VHDL View of the Design Domain](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#212-vhdl-view-of-the-design-domain)
* 2.2 [Design Framework](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#22-design-framework)
* 2.3 [Technology Migration (Horizontal Design Methodology)](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#23-technology-migration-horizontal-design-methodology)
  * 2.3.1 [Technology Migration using Schematic Capture](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#231-technology-migration-using-schematic-capture)
  * 2.3.2 [Technology Migration using VHDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#232-technology-migration-using-vhdl)
* 2.4 [Summary](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md#24-summary)

**3 [SYSTEM MODELS, DESCRIPTION TOOLS AND SIMULATION](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-1/chapter-3.md#chapter-3)**

* 3.1 [Five Levels of Abstraction]()
* 3.2 [Domains and Classes of Abstractions]()
  * 3.2.1 [Domains of the Abstraction Levels]()
  * 3.2.2 [Classes of the Abstraction Levels]()
* 3.3 [Schematic Capture and Simulation]()
* 3.4 [Hardware Description Languages and Simulation]()
  * 3.4.1 [High-Level HDL Applications and Benefits]()
  * 3.4.2 [Limitations - Industry View of an HDL]()
  * 3.4.3 [The Language Tree]()
  * 3.4.4 [Classification of Common Languages]()
* 3.5 [Multi-Level Description Environment and Multi-Level Simulation]()
* 3.6 [VHDL]()
  * 3.6.1 [Benefits and Limitations of VHDL]()
  * 3.6.2 [Four Types of VHDL Models ]()
  * 3.6.3 [VHDL Library Design Units]()

**4 [DESIGN SYNTHESIS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4)**

* 4.1 [Synthesis]()
* 4.2 [Types of Synthesis]()
* 4.3 [Synthesis for Technology Migration ]()
* 4.4 [Synthesis System ]()
  * 4.4.1 [Design Automation ]()
  * 4.4.2 [Benefits of High-Level Synthesis Systems]()
  * 4.4.3 [Limitations of High-Level Synthesis Systems]()
* 4.5 [Modeling for the Synthesis System]()
  * 4.5.1 [Modeling for the Synthesis System using VHDL]()
  * 4.5.2 [Modeling for the Target Technology using VHDL]()

**5 [OVERVIEW OF MICROSYSTEM TECHNOLOGIES](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#chapter-5)**

* 5.1 [Technology Breakdown]()
* 5.2 [Standard Parts and PLDs]()
* 5.3 [All-Mask ASICs]()
* 5.4 [Gate Arrays and FPGAs]()
  * 5.4.1 [Gate Arrays]()
  * 5.4.2 [FPGA Architectures and Programming]()
* 5.5 [Multichip Modules (MCMs)]()
  * 5.5.1 [A New Technology]()
  * 5.5.2 [Design Issues]()
  * 5.5.3 [Multichip Module Assemblies]()
* 5.6 [Selecting a Technological Device]()
  * 5.6.1 [The Logic Integration Tool (LIT)]()
  * 5.6.2 [Software Aided Selection Issues]()

**6 [LOW-LEVEL VERTICAL DESIGN METHODOLOGY](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#chapter-6)**

* 6.1 [Low-Level Design Methodology]()
  * 6.1.1 [Bottom-Up Modeling]()
  * 6.1.2 [General Low-Level EDA Environment]()
  * 6.1.3 [General Low-Level Steps]()
* 6.2 [Evaluation of Low-Level Vertical Design Methodology]()
  * 6.2.1 [Goals of a Design Methodology]()
  * 6.2.1 [Evaluation]()

**7 [HIGH-LEVEL HORIZONTAL DESIGN METHODOLOGY (TECHNOLOGY MIGRATION)](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#chapter-7)**

* 7.1 [High-Level Design Methodology (Technology Migration)]()
  * 7.1.1 [Top-Down Modeling]()
  * 7.1.2 [General High-Level EDA Environment]()
  * 7.1.3 [General High-Level EDA Environment]()
* 7.2 [Evaluation of Technology Migration]()

**8 [CONCLUSIONS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-8/chapter-8.md#chapter-8)**

* **[REFERENCES](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md)**
* **[GLOSSARY](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md)**

APPENDICES

* **[APPENDIX A](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-a/appendix-a.md)**
  * [HARDWARE AND SOFTWARE USED]()
* **[APPENDIX B](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md)**
  * [HOST INTERFACE SERIAL CONTROLLER (HISC) (CORRELATOR CONTROLLER) ARCHITECTURE]()
* **[APPENDIX C](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-c/appendix-c.md)**
  * [LABORATORY 1: SOFIWARE AIDED DEVICE SELECTION WITI-1 THE TI LOGIC INTEGRATION TOOL (LIT)]()
* **[APPENDIX D](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-d/appendix-d.md)**
  * [LABORATORY 2A: SCHEMATIC CAPTURE WITH VIEWLOGIC'S VlEWDRAW]()
* **[APPENDIX E](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-e/appendix-e.md)**
  * [LABORATORY 3A: SCHEMATIC CAPTURE IIlERARCHICAL DESIGN WITH VIEWLOGIC'S VIEWDRAW]()
* **[APPENDIX F](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-f/appendix-f.md)**
  * [LABORATORY 4A: SCHEMATIC CAPTURE SIMULATION WITH VIEWLOGIC'S VlEWSIM]()
* **[APPENDIX G](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-g/appendix-g.md)**
  * [LABORATORY 5A: PROGRAMMING A TI TPC12 FPGA WITH TI-ALS TOOLS]()
* **[APPENDIX H](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-h/appendix-h.md)**
  * [LABORATORY 2B: VHDL MODEL AND LOGIC SYNTIIESIS WITH VIEWLOGIC'S VHDL TOOLS]()
* **[APPENDIX I](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-i/appendix-i.md)**
  * [LABORATORY 3B: VHDL HIERARCHICAL DESIGN WI1H VIEWLOGIC'S TOOLS]()
* **[APPENDIX J](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-j/appendix-j.md)**
  * [LABORATORY 4B: VHDL SIMULATION WI1H VIEWLOGIC'S VIEWSIM]()
* **[APPENDIX K](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-k/appendix-k.md)**
  * [LABORATORY 5B: PROGRAMMING A TI TPC12 FPGA WI1H TI-ALS TOOLS]()
* **[APPENDIX L](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md)**
  * [PROGRAMABLE 8-BIT MICROPROCESSOR]()
