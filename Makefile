#################################################################################
#										#
#				Generic Makefile for hello.C			#
#										#
#	make 		... make all 						#
#	make exec	... generate exec					#
#	make all	... make exec and make clean				#
#	make clean	... delete unnecessary files				#
#										#
#################################################################################


#-------------------compilers--------------------
CC = icc

#------------------compiler options--------------
#COPT ="";

#------------------- execuables-----------------
DESTDIR = ./
EXECNAME = hello
EXEC =$(DESTDIR)$(EXECNAME)

#------------------- object files --------------
OBJS = hello.o

#--------------------------------------------------------------------------------
default: all

all: 
	make hello clean
			
exec:
	$(MAKE) $(EXEC)  

clean: 
	rm -f *.o
#------------------------------------------------------------------------- 
$(EXEC): $(OBJS)
	$(CC) -o $(EXEC) $(OBJS)
#-------------------------------------------------------------------------
$(OBJS): Makefile

  		
#-----------------------------generate object files-----------------------
.C.o:
	$(CC) -c $<											
