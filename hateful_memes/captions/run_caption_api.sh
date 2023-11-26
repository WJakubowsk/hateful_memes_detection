#!/bin/bash
#SBATCH --account=ganzha_23
#SBATCH --partition=short
#SBATCH --cpus-per-task=4
#SBATCH --gpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --mem=50G
#SBATCH --ntasks=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mikolaj.galkowski.stud@pw.edu.pl
#SBATCH --job-name=api_caption
#SBATCH --output=/home2/faculty/mgalkowski/logs/inference/api_caption.log

. /home2/faculty/mgalkowski/miniconda3/etc/profile.d/conda.sh
conda activate api_caption

uvicorn app:app --port 8088 --host 0.0.0.0
