
sudo systemctl stop display-manager
nvidia-xconfig --allow-empty-initial-configuration --enable-all-gpus --cool-bits=28 --separate-x-screens
nvidia-smi -pm ENABLED
X :0 &
export DISPLAY=:0

sudo nvidia-smi -i 0 -pl 75
sudo nvidia-smi -i 1 -pl 75

sudo nvidia-settings -a "[gpu:0]/GPUFanControlState=1"
sudo nvidia-settings -a "[fan:0]/GPUTargetFanSpeed=70"
sudo nvidia-settings -a "[gpu:0]/GPUMemoryTransferRateOffset[4]=1600"
sudo nvidia-settings -a "[gpu:0]/GPUGraphicsClockOffset[4]=-400"


sudo nvidia-settings -a "[gpu:1]/GPUFanControlState=1"
sudo nvidia-settings -a "[fan:1]/GPUTargetFanSpeed=70"
sudo nvidia-settings -a "[gpu:1]/GPUMemoryTransferRateOffset[4]=1600"
sudo nvidia-settings -a "[gpu:1]/GPUGraphicsClockOffset[4]=-400"

