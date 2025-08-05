#!/usr/bin/env bash

source /home/ssobti/miniconda3/etc/profile.d/conda.sh
conda activate mave
for i in /home/ssobti/projects/mir_tud/notebooks/mave_troubleshooting_notebooks/groupA/MAVE_trial_trblshoot_weight_shifting_*.ipynb
do
	 nohup jupyter nbconvert --to notebook --execute --allow-errors "${i}" &
done


