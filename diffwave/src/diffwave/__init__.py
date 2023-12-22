import torch
from pytorch_wavelets import DWTForward
import pywt

# 假设你的声音信号是一个大小为 [16, 15872] 的张量
# ound_signal = torch.randn([16,16872])
# sound_signal = sound_signal.numpy()
# dwt = pywt.Wavelet('haar')
# cA,cD = pywt.dwt(sound_signal,dwt,mode='zero')
# #cA, cD = pywt.dwt(sound_signal, dwt)
# cA = torch.tensor(cA)
# cD = torch.tensor(cD)
# print(cA.size(),cD.size())

# # Reshape the signal to have a spatial dimension
# sound_signal = sound_signal.unsqueeze(1).unsqueeze(-1)
# # 创建 DWTForward 实例F
# dwt = DWTForward(J=1, mode='zero', wave='haar')

# # 执行 DWT
# coeffs = dwt(sound_signal)

# # coeffs 包含了 DWT 的近似系数和细节系数
# # coeffs 是一个元组 (cA, cD)，其中 cA 是近似系数，cD 是细节系数
# xll, xh = coeffs  # [b, 3, h, w], [b, 3, 3, h, w]
# xlh, xhl, xhh = torch.unbind(xh[0], dim=2)
# real_data = torch.cat([xll, xlh, xhl, xhh], dim=2)
# real_data = real_data.squeeze(-1)
# print(xll.size())
# print(xlh.size(),xhl.size(),xhh.size())
# print(real_data.size())

      # # discrete inverse wavelet transform (IWT)
      # cA = predicted[:, 0:1, :].squeeze(1)
      # cD = predicted[:, 1:2, :].squeeze(1)
      # predicted_iwt = pywt.idwt(cA.numpy(), cD.numpy(), 'haar', mode='zero')
import numpy as np
noise = np.linspace(1e-4, 0.05, 50).tolist()
print(len(noise))