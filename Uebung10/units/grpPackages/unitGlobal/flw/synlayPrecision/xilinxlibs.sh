#! /bin/sh
NPX_PLUGIN_PATH=${XILINX}/java/lin/jre/plugin/sparc/ns4
export NPX_PLUGIN_PATH
if [ -n $LD_LIBRARY_PATH ]
then
LD_LIBRARY_PATH=${XILINX}/bin/lin:/lib/:${LD_LIBRARY_PATH}
export LD_LIBRARY_PATH
else
LD_LIBRARY_PATH=${XILINX}/bin/lin:/lib/
export LD_LIBRARY_PATH
fi
PATH=${XILINX}/bin/lin:$PATH
export PATH
LMC_HOME=${XILINX}/smartmodel/lin/installed_lin
export LMC_HOME
LD_ASSUME_KERNEL=2.4.7
export LD_ASSUME_KERNEL
