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
(Registration Number [TXu000610236](https://cocatalog.loc.gov/cgi-bin/Pwebrecon.cgi?Search_Arg=TXu000610236&Search_Code=REGS&PID=lloaWKm0G2JQphbL-_dy2nn9IG994&SEQ=20200928153521&CNT=25&HIST=1))

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

**1 [INTRODUCTION](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-1/chapter-1.md)**

**2 [DESIGN DOMAIN, DESIGN FRAMEWORK AND TECHNOLOGY MIGRATION IN MICROSYSTEM DEVELOPMENT](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-2/chapter-2.md)**

* 2.1 Design Domain
  * 2.1.1 Schematic Capture View of the Design Domain
  * 2.1.2 VHDL View of the Design Domain
* 2.2 Design Framework
* 2.3 Technology Migration (Horizontal Design Methodology)
  * 2.3.1 Technology Migration using Schematic Capture
  * 2.3.2 Technology Migration using VHDL
* 2.4 Summary

**3 [SYSTEM MODELS, DESCRIPTION TOOLS AND SIMULATION](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-1/chapter-3.md)**

* 3.1 TBD
  * 3.1.1 TBD
  * 3.1.2 TBD
* 3.2 TBD

**4 [TBD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-4/chapter-4.md)**

* 3.1 TBD
  * 3.1.1 TBD
  * 3.1.2 TBD
* 3.2 TBD

**5 [TBD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-5/chapter-5.md)**

* 3.1 TBD
  * 3.1.1 TBD
  * 3.1.2 TBD
* 3.2 TBD

**6 [TBD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-6/chapter-6.md)**

* 3.1 TBD
  * 3.1.1 TBD
  * 3.1.2 TBD
* 3.2 TBD

**7 [TBD](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-7/chapter-7.md)**

* 3.1 TBD
  * 3.1.1 TBD
  * 3.1.2 TBD
* 3.2 TBD

**8 [CONCLUSIONS](https://github.com/JeffDeCola/my-masters-thesis/blob/master/chapters/chapter-8/chapter-8.md)**

* [REFERENCES](https://github.com/JeffDeCola/my-masters-thesis/blob/master/references/references.md)
* [GLOSSARY](https://github.com/JeffDeCola/my-masters-thesis/blob/master/glossary/glossary.md)

* [APPENDIX A](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-a/appendix-a.md)
* [APPENDIX B](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-b/appendix-b.md)
* [APPENDIX C](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-c/appendix-c.md)
* [APPENDIX D](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-d/appendix-d.md)
* [APPENDIX E](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-e/appendix-e.md)
* [APPENDIX F](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-f/appendix-f.md)
* [APPENDIX G](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-g/appendix-g.md)
* [APPENDIX H](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-h/appendix-h.md)
* [APPENDIX I](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-i/appendix-i.md)
* [APPENDIX J](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-j/appendix-j.md)
* [APPENDIX K](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-k/appendix-k.md)
* [APPENDIX L](https://github.com/JeffDeCola/my-masters-thesis/blob/master/appendices/appendix-l/appendix-l.md)
