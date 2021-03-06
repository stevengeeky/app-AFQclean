#!/bin/bash
module load matlab/2017a

cat > build.m <<END
addpath(genpath('/N/u/brlife/git/jsonlab'))
addpath(genpath('/N/u/brlife/git/afq'))
addpath(genpath('/N/u/brlife/git/vistasoft'))

mcc -m -R -nodisplay -d compiled afqcleantracts
exit
END
matlab -nodisplay -nosplash -r build && rm build.m
