#!/bin/bash
#PBS -l ncpus=12,ngpus=1
#PBS -l mem=90GB
#PBS -l jobfs=200GB
#PBS -q gpuvolta
#PBS -P iv96
#PBS -l walltime=12:00:00
#PBS -l storage=gdata/wa66+gdata/po67+gdata/ey69
#PBS -l wd

export HF_HOME="/g/data/wa66/Xiangyu/cache/huggingface"
module load python3/3.9.2
module load openmpi/4.0.2
module load hdf5/1.10.5
source /home/561/xz4320/enviroment/pytorch_3.9.2/bin/activate

model_dir='/g/data/wa66/Xiangyu/Result/waveletTTS_VCTK/cnn/cdf53cnn'
data_dirs='/g/data/ey69/xiangyu_ey69/data/DS_10283_2651/wav48'
waveletbase='cdf53'
max_steps=1000000

python3 /home/561/xz4320/WaveD_TTS/diffwave/src/diffwave/__main__.py ${model_dir} ${data_dirs} --waveletbase ${waveletbase} --max_steps ${max_steps} &> ./cdf53.log