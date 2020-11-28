if [ -d "device/realme/X2-prebuilts" ]; then
  if [ -z "$(ls -A device/realme/X2-prebuilts)" ]; then
     echo "Prebuilts directory is empty, cloning"
     git clone https://github.com/CannedShroud/android_device_realme_X2-prebuilts device/realme/X2-prebuilts
  fi
else
  echo "Prebuilts missing, cloning..."
  git clone https://github.com/CannedShroud/android_device_realme_X2-prebuilts device/realme/X2-prebuilts
fi
