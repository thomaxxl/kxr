#!/bin/bash
#
# $1 : vmlinux
# $2 : output directory
# $3 : kallsyms
#
#

vmlinux="$1"
outdir="$2"
kallsyms="$3"

# TODO : getopts & error checking 

mkdir $outdir && cat $kallsyms | while read sym
do
	echo disas $sym | gdb -q $vmlinux | egrep '^  ' > $outdir/$sym
done
