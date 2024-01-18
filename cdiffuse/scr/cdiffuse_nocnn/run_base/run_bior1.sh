#!/bin/bash
#PBS -l ncpus=12,ngpus=1
#PBS -l mem=90GB
#PBS -l jobfs=200GB
#PBS -q gpuvolta
#PBS -P po67
#PBS -l walltime=48:00:00
#PBS -l storage=gdata/wa66+scratch/wa66
#PBS -l wd
export HF_HOME="/g/data/wa66/Xiangyu/cache/huggingface"
module load python3/3.9.2
module load openmpi/4.0.2
module load hdf5/1.10.5
source /home/561/xz4320/enviroment/pytorch_3.9.2/bin/activate



model_name="/g/data/wa66/Xiangyu/Result/wavSE/base/bior1_cdiffuse_nocnn"
target_wav_root="/g/data/wa66/Xiangyu/Data/Voicebank/Voicebank/Voicebank/clean_trainset_28spk_wav"
noisy_wav_root="/g/data/wa66/Xiangyu/Data/Voicebank/Voicebank/Voicebank/noisy_trainset_28spk_wav"
train_spec_list="/g/data/wa66/Xiangyu/Data/Voicebank/Voicebank/CDiffuSE/spec/voicebank_Noisy/train"
max_steps=300000

python /home/561/xz4320/WaveD_TTS/cdiffuse/scr/cdiffuse_nocnn/__main__.py ${model_name} ${target_wav_root} ${noisy_wav_root} ${train_spec_list}  --max_steps ${max_steps}  --voicebank &> ./bior1.log