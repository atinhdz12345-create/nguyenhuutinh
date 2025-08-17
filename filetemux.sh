 #!/data/data/com.termux/files/usr/bin/bash
# Script mẫu chạy trên Termux

# Cập nhật và cài gói cần thiết
pkg update -y && pkg upgrade -y
pkg install -y git curl wget

# In ra màn hình
echo "✅ Xin chào, script Termux đã chạy thành công!"
echo "📌 Môi trường đã sẵn sàng để dùng."
