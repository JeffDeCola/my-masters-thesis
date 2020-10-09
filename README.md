# my-masters-thesis

**A HIGH-LEVEL DESIGN FRAMEWORK ILLUSTRATING TECHNOLOGY MIGRATION**

BY Jeffry A. DeCola

Submitted to the University of New Hampshire
in Partial Fulfillment of the Requirements for the Degree of
Master of Science
in
Electrical Engineering

Copies of my thesis are located at the
[UNH Diamond Library](https://unh.primo.exlibrisgroup.com/permalink/01USNH_UNH/121i3ml/alma991007116219805221)
and the
[UNH Engineering, Math & CS Library](https://unh.primo.exlibrisgroup.com/permalink/01USNH_UNH/121i3ml/alma991007116219805221)

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

* [TITLE AND COPYRIGHT](https://github.com/JeffDeCola/my-masters-thesis/blob/master/title-and-copyright/title-and-copyright.md)
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

**3 [SYSTEM MODELS, DESCRIPTION TOOLS AND SIMULATION](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#chapter-3)**

* 3.1 [Five Levels of Abstraction](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#31-five-levels-of-abstraction)
* 3.2 [Domains and Classes of Abstractions](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#32-domains-and-classes-of-abstractions)
  * 3.2.1 [Domains of the Abstraction Levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#321-domains-of-the-abstraction-levels)
  * 3.2.2 [Classes of the Abstraction Levels](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#322-classes-of-the-abstraction-levels)
* 3.3 [Schematic Capture and Simulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#33-schematic-capture-and-simulation)
* 3.4 [Hardware Description Languages and Simulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#34-hardware-description-languages-and-simulation)
  * 3.4.1 [High-Level HDL Applications and Benefits](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#341-high-level-hdl-applications-and-benefits)
  * 3.4.2 [Limitations - Industry View of an HDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#342-limitations---industry-view-of-an-hdl)
  * 3.4.3 [The Language Tree](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#343-the-language-tree)
  * 3.4.4 [Classification of Common Languages](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#344-classification-of-common-languages)
* 3.5 [Multi-Level Description Environment and Multi-Level Simulation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#35-multi-level-description-environment-and-multi-level-simulation)
* 3.6 [VHDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#36-vhdl)
  * 3.6.1 [Benefits and Limitations of VHDL](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#36-vhdl)
  * 3.6.2 [Four Types of VHDL Models ](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#362-four-types-of-vhdl-models)
  * 3.6.3 [VHDL Library Design Units](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-3/chapter-3.md#363-vhdl-library-design-units)

**4 [DESIGN SYNTHESIS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md#chapter-4)**

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

**5 [OVERVIEW OF MICROSYSTEM TECHNOLOGIES](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#chapter-5)**

* 5.1 [Technology Breakdown](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#51-technology-breakdown)
* 5.2 [Standard Parts and PLDs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#52-standard-parts-and-plds)
* 5.3 [All-Mask ASICs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#53-all-mask-asics)
* 5.4 [Gate Arrays and FPGAs](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#54-gate-arrays-and-fpgas)
  * 5.4.1 [Gate Arrays](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#541-gate-arrays)
  * 5.4.2 [FPGA Architectures and Programming](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#542-fpga-architectures-and-programming)
* 5.5 [Multichip Modules (MCMs)](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#55-multichip-modules-mcms)
  * 5.5.1 [A New Technology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#551-a-new-technology)
  * 5.5.2 [Design Issues](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#552-design-issues)
  * 5.5.3 [Multichip Module Assemblies](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#553-multichip-module-assemblies)
* 5.6 [Selecting a Technological Device](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#56-selecting-a-technological-device)
  * 5.6.1 [The Logic Integration Tool (LIT)](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#561-the-logic-integration-tool-lit)
  * 5.6.2 [Software Aided Selection Issues](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md#562-software-aided-selection-issues)

**6 [LOW-LEVEL VERTICAL DESIGN METHODOLOGY](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#chapter-6)**

* 6.1 [Low-Level Design Methodology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#61-low-level-design-methodology)
  * 6.1.1 [Bottom-Up Modeling](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#611-bottom-up-modeling)
  * 6.1.2 [General Low-Level EDA Environment](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#612-general-low-level-eda-environment)
  * 6.1.3 [General Low-Level Steps](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#613-general-low-level-steps)
* 6.2 [Evaluation of Low-Level Vertical Design Methodology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#62-evaluation-of-low-level-vertical-design-methodology)
  * 6.2.1 [Goals of a Design Methodology](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#621-goals-of-a-design-methodology)
  * 6.2.1 [Evaluation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md#621-evaluation)

**7 [HIGH-LEVEL HORIZONTAL DESIGN METHODOLOGY (TECHNOLOGY MIGRATION)](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#chapter-7)**

* 7.1 [High-Level Design Methodology (Technology Migration)](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#71-high-level-design-methodology-technology-migration)
  * 7.1.1 [Top-Down Modeling](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#711-top-down-modeling)
  * 7.1.2 [General High-Level EDA Environment](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#712-general-high-level-eda-environment)
  * 7.1.3 [General High-Level EDA Environment](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#713-general-high-level-eda-environment)
* 7.2 [Evaluation of Technology Migration](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md#72-evaluation-of-technology-migration)

**8 [CONCLUSIONS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-8/chapter-8.md#chapter-8)**

**[REFERENCES](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md)**

* [I. General Related Documentation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#i-general-related-documentation)
* [II. Alternative System Concepts and CAD Language Systems, Inc. Related Documentation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#ii-alternative-system-concepts-and-cad-language-systems-inc-related-documentation)
* [III. Mentor Graphics Related Documentation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#iii-mentor-graphics-related-documentation)
* [IV. Texas Instruments and Actel Related Documentation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#iv-texas-instruments-and-actel-related-documentation)
* [V. Viewlogic Related Documentation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#v-viewlogic-related-documentation)
* [VI. Xilinx Related Documentation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#vi-xilinx-related-documentation)
* [VII. Other Related Documentation](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md#vii-other-related-documentation)

**[GLOSSARY](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md)**

* [I. General Acronyms and Technical Terms](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#i-general-acronyms-and-technical-terms)
* [II. CAE Environment Acronyms and Technical Terms](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md#ii-cae-environment-acronyms-and-technical-terms)

**APPENDICES**

* [APPENDIX A](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-a/appendix-a.md)
  * [HARDWARE AND SOFTWARE USED](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-a/appendix-a.md#hardware-and-software-used)
    * [I. HARDWARE USED](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-a/appendix-a.md#i-hardware-used)
    * [II. SOFTWARE USED](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-a/appendix-a.md#ii-software-used)
* [APPENDIX B](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md)
  * [HOST INTERFACE SERIAL CONTROLLER (HISC) (CORRELATOR CONTROLLER) ARCHITECTURE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md#host-interface-serial-controller-hisc-correlator-controller-architecture)
    * [I. NASA CORRELATOR](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md#i-nasa-correlator)
    * [II. CORRELATOR PROCESSOR ARCHITECTURE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md#ii-correlator-processor-architecture)
    * [III. HOST INTERFACE SERIAL CONTROLLER](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md#iii-host-interface-serial-controller)
* [APPENDIX C](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-c/appendix-c.md)
  * [LABORATORY 1: SOFTWARE AIDED DEVICE SELECTION WITH THE TI LOGIC INTEGRATION TOOL (LIT)](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-c/appendix-c.md#laboratory-1-software-aided-device-selection-with-the-ti-logic-integration-tool-lit)
* [APPENDIX D](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-d/appendix-d.md)
  * [LABORATORY 2A: SCHEMATIC CAPTURE WITH VIEWLOGIC'S VIEWDRAW](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-d/appendix-d.md#laboratory-2a-schematic-capture-with-viewlogics-viewdraw)
* [APPENDIX E](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-e/appendix-e.md)
  * [LABORATORY 3A: SCHEMATIC CAPTURE HIERARCHICAL DESIGN WITH VIEWLOGIC'S VIEWDRAW](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-e/appendix-e.md#laboratory-3a-schematic-capture-hierarchical-design-with-viewlogics-viewdraw)
* [APPENDIX F](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-f/appendix-f.md)
  * [LABORATORY 4A: SCHEMATIC CAPTURE SIMULATION WITH VIEWLOGIC'S VIEWSIM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-f/appendix-f.md#laboratory-4a-schematic-capture-simulation-with-viewlogics-viewsim)
* [APPENDIX G](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-g/appendix-g.md)
  * [LABORATORY 5A: PROGRAMMING A TI TPC12 FPGA WITH TI-ALS TOOLS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-g/appendix-g.md#laboratory-5a-programming-a-ti-tpc12-fpga-with-ti-als-tools)
* [APPENDIX H](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-h/appendix-h.md)
  * [LABORATORY 2B: VHDL MODEL AND LOGIC SYNTHESIS WITH VIEWLOGIC'S VHDL TOOLS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-h/appendix-h.md#laboratory-2b-vhdl-model-and-logic-synthesis-with-viewlogics-vhdl-tools)
* [APPENDIX I](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-i/appendix-i.md)
  * [LABORATORY 3B: VHDL HIERARCHICAL DESIGN WI1H VIEWLOGIC'S TOOLS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-i/appendix-i.md#laboratory-3b-vhdl-hierarchical-design-wi1h-viewlogics-tools)
* [APPENDIX J](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-j/appendix-j.md)
  * [LABORATORY 4B: VHDL SIMULATION WI1H VIEWLOGIC'S VIEWSIM](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-j/appendix-j.md#laboratory-4b-vhdl-simulation-wi1h-viewlogics-viewsim)
* [APPENDIX K](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-k/appendix-k.md)
  * [LABORATORY 5B: PROGRAMMING A TI TPC12 FPGA WI1H TI-ALS TOOLS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-k/appendix-k.md#laboratory-5b-programming-a-ti-tpc12-fpga-wi1h-ti-als-tools)
* [APPENDIX L](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md)
  * [PROGRAMABLE 8-BIT MICROPROCESSOR](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md#programable-8-bit-microprocessor)
    * [I. TOP-LEVELS OF THE MICROPROCESSOR](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md#i-top-levels-of-the-microprocessor)
    * [II. GENERIC VHDL TEST GENERATION TEMPLATE](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md#ii-generic-vhdl-test-generation-template)
    * [III. STRUCTURAL VHDL DESCRIPTION OF THE 8-BIT MICROPROCESSOR](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md#iii-structural-vhdl-description-of-the-8-bit-microprocessor)
