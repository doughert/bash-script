#!/bin/bash

i=1;
for file in `find . -name "*.jpeg"`
do
	mv $file $(printf %02d.jpeg $i)
	i=$((i+1))
done
