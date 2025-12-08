Updated desktop-launch script *within* amd64 snap and arm64 snap

Added this:
cat amd64_rootfs/x86_rootfs/usr/share/vulkan/icd.d/nvidia_icd.json
{
    "file_format_version" : "1.0.1",
    "ICD": {
        "library_path": "libGLX_nvidia.so.0",
        "api_version" : "1.4.312"
    }
}
^ This is what fixed the "missing vulkan" errors


amd64_rootfs/x86_rootfs/usr/lib/x86_64-linux-gnu/nvidia/wine was rwx for owner only, for some reason. some version of it will be needed for DLSS (but we should bind mount).
With it sitting in that location, it fails to get copied and causes proton launches to fail until we chmod +r everything in it.
