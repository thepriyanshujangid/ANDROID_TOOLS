#!/bin/bash
brotli -d ./system.new.dat.br -o ./system.new.dat 
brotli -d  ./vendor.new.dat.br -o  ./vendor.new.dat

sdat2img.py ./system.transfer.list  ./system.new.dat ./system.img 
sdat2img.py ./vendor.transfer.list  ./vendor.new.dat ./vendor.img 


img2simg ./system.img ./system_sparse.img 
img2simg ./vendor.img ./vendor_sparse.img 


exit 
