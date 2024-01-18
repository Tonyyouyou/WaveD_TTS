#!/bin/bash
#PBS -l ncpus=12,ngpus=1
#PBS -l mem=90GB
#PBS -l jobfs=200GB
#PBS -q gpuvolta
#PBS -P po67
#PBS -l walltime=8:00:00
#PBS -l storage=gdata/wa66+scratch/wa66
#PBS -l wd
export HF_HOME="/g/data/wa66/Xiangyu/cache/huggingface"
module load python3/3.9.2
module load openmpi/4.0.2
module load hdf5/1.10.5
source /home/561/xz4320/enviroment/pytorch_3.9.2/bin/activate

model_dir='/g/data/wa66/Xiangyu/Result/wavTTS/large/coif1nocnn'
data_dirs='/g/data/wa66/Xiangyu/Data/LJSpeech-1.1/wavs'
max_steps=1000000
waveletbase='coif1'

python3 /home/561/xz4320/WaveD_TTS/diffwave/src/diffwave_nocnn/__main__.py ${model_dir} ${data_dirs} --waveletbase ${waveletbase} --max_steps ${max_steps} &> ./coif1.log