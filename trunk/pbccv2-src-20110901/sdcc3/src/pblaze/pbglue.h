/*-------------------------------------------------------------------------
  pbglue.h - glues everything we have done together into one file.

    Written By:  
	Sandeep Dutta . sandeep.dutta@usa.net (1998)
	&&
	Jakub Hornik, xhorni00<at>stud.fit.vutbr.cz
    Master Thesis Project:
	Compiler Back-End of Subset of Language C for 8-Bit Processor
    Date:
	2011
    
   This program is free software; you can redistribute it and/or modify it
   under the terms of the GNU General Public License as published by the
   Free Software Foundation; either version 2, or (at your option) any
   later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

   In other words, you are welcome to use, share and improve this program.
   You are forbidden to forbid anyone else to use, share and improve
   what you give them.   Help stamp out software-hoarding!
-------------------------------------------------------------------------*/
#include "common.h"

#ifndef PBGLUE_H
#define PBGLUE_H 1

void pblaze_glue(void);

extern symbol *interrupts[];
extern set *pblaze_publics;



#endif
