# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [
      ./modules/common.nix
      ./modules/wayland.nix
      ./modules/laptop.nix
      ./modules/home-services.nix
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot = {
    initrd = {
      availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
  };

  swapDevices = [ ];

  networking = {
    interfaces = {
      enp0s31f6.useDHCP = true;
      wlan0.useDHCP = true;
      wwp0s20f0u6i12.useDHCP = true;
    };

    hostId = "CC221B11";
    hostName = "muspus";
  };

  hardware = {
    cpu.intel.updateMicrocode = true;
    opengl.extraPackages = with pkgs; [
      vaapiIntel
      libvdpau-va-gl
      vaapiVdpau
    ];
  };
}
