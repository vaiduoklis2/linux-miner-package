export MONITOR=:0

sudo nvidia-settings -a "[gpu:0]/GPUFanControlState=1"
sudo nvidia-settings -a "[fan:0]/GPUTargetFanSpeed=70"
sudo nvidia-settings -a "[gpu:0]/GPUMemoryTransferRateOffset[4]=1600"
sudo nvidia-settings -a "[gpu:0]/GPUGraphicalClockOffset=-200"

sudo nvidia-settings -a "[gpu:1]/GPUFanControlState=1"
sudo nvidia-settings -a "[fan:1]/GPUTargetFanSpeed=70"
sudo nvidia-settings -a "[gpu:1]/GPUMemoryTransferRateOffset[4]=1600"
sudo nvidia-settings -a "[gpu:1]/GPUGraphicalClockOffset=-200"

