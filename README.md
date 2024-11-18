# **Proxmox VE 8 Setup on Debian 12 with Add-ons and Tuning**

This repository provides a streamlined setup for deploying Proxmox Virtual Environment (VE) 8 on Debian 12, particularly for cloud bare-metal environments like Oracle, AWS, or similar providers. The scripts include network configurations, repository updates, package installations, and system optimizations tailored to enhance the user experience and system performance.

---

## **Overview**

The scripts automate critical setup steps, from configuring network interfaces to installing essential tools and packages, making this repository ideal for IT administrators aiming to deploy a robust and optimized Proxmox VE on cloud-hosted Debian systems. 

### **Key Features**
- Network setup with IPv6 disabling and custom SSH configurations.
- Localization and timezone adjustments.
- Repository and Proxmox development source setup.
- Kernel installation and cleanup of old kernels.
- Optimized system tuning for better performance.
- Multipath tools for storage management.
- A collection of IT admin tools for troubleshooting and monitoring.

---

## **Scripts Summary**

1. **`00-network-interface-setup-and-disable-NetworkManager.sh`**  
   - Sets up network interfaces, disables NetworkManager.  
   - Enables root login via SSH (customizable).

2. **`01-locales-setup-and-check-hostname-in-host-files.sh`**  
   - Configures locales for `en_US.UTF-8`, ensures proper hostname settings, and checks system time.

3. **`02-time-zone-setup-to-IST.sh`**  
   - Configures and adjusts timezone to IST, you can change this to your local timezone.

4. **`03-basic-debian-repo-setup-with-extra-repo.sh`**  
   - Configures Debian repositories for `bookworm` and removes outdated repository settings.

5. **`04-proxmox-development-repo-setup.sh`**  
   - Adds Proxmox VE repository for non-subscription packages and updates the system.

6. **`05-tunning-for-ease-of-use-for-it-admin.sh`**  
   - Includes:
     - Disabling IPv6 and enabling IPv4 forwarding.
     - Adding admin-friendly aliases and bashrc configurations.
     - Creating and enabling `rc.local` for startup scripts.
     - Configuring SSH keep-alive settings.

7. **`06-update-microcode-for-cpu-updates.sh`**  
   - Installs CPU microcode updates for AMD and Intel processors.

8. **`07-proxmox-ve-kernel-install-and-reboot.sh`**  
   - Installs the Proxmox VE kernel and prepares for reboot.

9. **`08-after-reboot-proxmox-packages-setup.sh`**  
   - Installs essential Proxmox packages like `postfix`, `wireguard`, and troubleshooting tools (e.g., `vnstat`, `ipmitool`).

10. **`09-remove-old-debian-kernel.sh`**  
   - Cleans up old Debian kernels to free space and streamline the boot process.

11. **`10-multipath-tools-extra-packages.sh`**  
    - Installs `multipath-tools` and `open-iscsi` for improved storage configurations in Proxmox.

---

## **Essential Add-ons and Tools**

The setup includes a wide range of utilities for system management and troubleshooting:

- **Admin Tools**: `mc`, `vim`, `screen`, `pssh`, `net-tools`, `ethtool`.
- **Networking**: `wireguard`, `vnstat`, `openvswitch-switch`.
- **Monitoring**: `iotop`, `htop`, `sysstat`, `lm-sensors`.
- **Scripting**: `php-cli`, `sendemail`, `perl`.
- **Storage**: `zfs-zed`, `multipath-tools`.
- **Miscellaneous**: `dos2unix`, `curl`, `wget`, `dnsutils`.

---

## **Installation**

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
