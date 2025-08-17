#!/data/data/com.termux/files/usr/bin/bash
# Script auto-setup cho Termux

# Update hệ thống
echo "[*] Đang update package..."
pkg update -y && pkg upgrade -y

# Danh sách gói cần thiết
pkgs=("bash" "curl" "git" "python")

echo "[*] Kiểm tra và cài đặt gói cần thiết..."
for pkg in "${pkgs[@]}"; do
    if ! command -v $pkg >/dev/null 2>&1; then
        echo "[*] Đang cài $pkg ..."
        pkg install -y $pkg
    else
        echo "[+] $pkg đã có."
    fi
done

echo "[*] Hoàn tất setup. Bắt đầu chạy Python..."

# Đoạn code python đơn giản
python <<'EOF'
ten = input("Nhập tên của bạn: ")
print("Xin chào,", ten, "🎉 Chúc bạn dùng Termux vui vẻ!")
EOF
