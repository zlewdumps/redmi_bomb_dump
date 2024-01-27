#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:134217728:15c9ac3522af46a3a23139a80e87504cf95cee8c; then
  applypatch  \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):67108864:290eab5f225f3abf621d3816f72184bf209548d7 \
          --target EMMC:/dev/block/by-name/recovery:134217728:15c9ac3522af46a3a23139a80e87504cf95cee8c && \
      log -t recovery "Installing new recovery image: succeeded" && \
        echo "Installing new recovery image: succeeded" > /cache/recovery/last_install_recovery_status || \
      (log -t recovery "Installing new recovery image: failed" && \
        echo "Installing new recovery image: failed" > /cache/recovery/last_install_recovery_status)
else
  log -t recovery "Recovery image already installed" && \
  echo "Recovery image already installed" > /cache/recovery/last_install_recovery_status
fi
