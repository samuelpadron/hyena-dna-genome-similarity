#!/bin/bash -e
#SBATCH --account=cseduproject
#SBATCH --partition=csedu
#SBATCH --gres=gpu:1
#SBATCH --qos=csedu-normal
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --time=7:00:00
#SBATCH --mail-user=samuel.padronalcala@ru.nl
#SBATCH --output=%j.out
#SBATCH --error=%j.errs

project_dir=.

source "$project_dir"/venv/bin/activate
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
python -m test_model panTro6_true.csv panTro6_evaluation.txt