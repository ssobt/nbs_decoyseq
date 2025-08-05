#!/bin/bash

source /home/ssobti/.bashrc


session_names=("R10kK1C1T1" "R1K1C1T1" "R10kK1C1T10-5" "R10kK1C1T10+5" "R10kK1C10-5T1" "R10kK1C10+5T1" "R10kK10-5C1T1" "R10kK10+5C1T1")

coms=("nbclick MAVE_trial_trblshoot_weight_shifting_R10000_K1_C1_T1_no_control_cells_guide_cell_cutoff_with_cell_sampling.ipynb --weights 10000 1 1 1 --batch all_batches --latent_vars 10 --max_epoch 1000" "nbclick MAVE_trial_trblshoot_weight_shifting_R10000_K1_C1_T1_no_control_cells_guide_cell_cutoff_with_cell_sampling.ipynb --weights 1 1 1 1 --batch all_batches --latent_vars 10 --max_epoch 1000" "nbclick MAVE_trial_trblshoot_weight_shifting_R10000_K1_C1_T1_no_control_cells_guide_cell_cutoff_with_cell_sampling.ipynb --weights 10000 1 1 0.00001 --batch all_batches --latent_vars 10 --max_epoch 1000" "nbclick MAVE_trial_trblshoot_weight_shifting_R10000_K1_C1_T1_no_control_cells_guide_cell_cutoff_with_cell_sampling.ipynb --weights 10000 1 1 100000 --batch all_batches --latent_vars 10 --max_epoch 1000" "nbclick MAVE_trial_trblshoot_weight_shifting_R10000_K1_C1_T1_no_control_cells_guide_cell_cutoff_with_cell_sampling.ipynb --weights 10000 1 0.00001 1 --batch all_batches --latent_vars 10 --max_epoch 1000" "nbclick MAVE_trial_trblshoot_weight_shifting_R10000_K1_C1_T1_no_control_cells_guide_cell_cutoff_with_cell_sampling.ipynb --weights 10000 1 100000 1 --batch all_batches --latent_vars 10 --max_epoch 1000" "nbclick MAVE_trial_trblshoot_weight_shifting_R10000_K1_C1_T1_no_control_cells_guide_cell_cutoff_with_cell_sampling.ipynb --weights 10000 0.00001 1 1 --batch all_batches --latent_vars 10 --max_epoch 1000" "nbclick MAVE_trial_trblshoot_weight_shifting_R10000_K1_C1_T1_no_control_cells_guide_cell_cutoff_with_cell_sampling.ipynb --weights 10000 100000 1 1 --batch all_batches --latent_vars 10 --max_epoch 1000")


for i in ${!session_names[@]}; do
  cd /home/ssobti/projects/mir_tud/notebooks/mave_troubleshooting_notebooks/tRF/parameter_set1
  screen -s "/bin/bash" -dmS "${session_names[$i]}"; screen -S "${session_names[$i]}" -X stuff "ca mave\n ${coms[$i]}\n";
done

