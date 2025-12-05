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
