<div align="center">

# 🧹 Tanovix DiskCleaner Pro

**Phần mềm dọn dẹp, phân tích và tối ưu ổ đĩa Windows**

![Version](https://img.shields.io/badge/version-2.0.0-00b4d8?style=flat-square)
![Platform](https://img.shields.io/badge/platform-Windows%2010%2F11%20x64-blue?style=flat-square)
![Framework](https://img.shields.io/badge/.NET-8.0-purple?style=flat-square)
![License](https://img.shields.io/badge/license-Proprietary-orange?style=flat-square)

[⬇ Tải xuống](#-cài-đặt) · [🌐 Landing Page](https://tanovix-diskcleaner.pages.dev) · [📧 Liên hệ](mailto:truongandesignerwp@gmail.com)

---

![Dashboard](https://tanovix-diskcleaner.pages.dev/screenshots/01_tong_quan.png)

</div>

---

## 📋 Mục lục

- [Giới thiệu](#-giới-thiệu)
- [Tính năng](#-tính-năng)
- [Yêu cầu hệ thống](#-yêu-cầu-hệ-thống)
- [Cài đặt](#-cài-đặt)
- [Hướng dẫn sử dụng](#-hướng-dẫn-sử-dụng)
- [Kích hoạt Pro](#-kích-hoạt-pro)
- [Ngôn ngữ](#-ngôn-ngữ)
- [Disk Manager](#-disk-manager)
- [Liên hệ & hỗ trợ](#-liên-hệ--hỗ-trợ)

---

## 🎯 Giới thiệu

**Tanovix DiskCleaner Pro** là công cụ quản lý ổ đĩa toàn diện dành cho Windows 10/11, được xây dựng trên nền .NET 8 WPF. Phần mềm tích hợp 12 công cụ trong một giao diện tối giản, giúp bạn:

- Dọn sạch file rác, cache và dữ liệu thừa
- Phân tích cấu trúc thư mục để tìm nguyên nhân đầy ổ đĩa
- Tối ưu hiệu suất hệ thống và quản lý khởi động

---

## ✨ Tính năng

| Tính năng | Mô tả | Tier |
|-----------|-------|------|
| 🏠 **Tổng quan** | Hiển thị dung lượng tất cả ổ đĩa, cảnh báo khi gần đầy | Free |
| 📊 **Phân tích lưu trữ** | Duyệt thư mục, xem file nào chiếm nhiều dung lượng nhất | Free |
| 🧹 **Dọn dẹp hệ thống** | Xóa file rác Windows, cache trình duyệt, thumbnail, WER dumps... | Free |
| 🔗 **Junction Link** | Tạo symbolic link để di chuyển thư mục sang ổ khác | Free |
| 🗑️ **Gỡ phần mềm** | Gỡ sạch ứng dụng kèm registry và file thừa | **Pro** |
| 🔍 **Tìm file trùng & lớn** | Phát hiện file trùng lặp theo nội dung, liệt kê file lớn | **Pro** |
| 🔒 **Quyền riêng tư** | Xóa lịch sử tìm kiếm, clipboard, Recent Files, MRU lists | **Pro** |
| 🚀 **Khởi động Windows** | Quản lý chương trình chạy cùng Windows | **Pro** |
| 🛡️ **Diệt virus** | Quét nhanh các thư mục quan trọng phát hiện mã độc | **Pro** |
| ⚡ **Tối ưu hệ thống** | Giải phóng RAM, tối ưu Power Plan, điều chỉnh Visual Effects | **Pro** |
| 💚 **Điểm sức khỏe** | Chấm điểm hệ thống theo 5 tiêu chí | **Pro** |
| 💾 **Disk Manager** | Xem partition, shrink/extend/tạo/xóa phân vùng (dùng diskpart) | Free |

---

## 💻 Yêu cầu hệ thống

| Thành phần | Yêu cầu |
|------------|---------|
| Hệ điều hành | Windows 10 / 11 (64-bit) |
| Runtime | [.NET 8 Desktop Runtime x64](https://dotnet.microsoft.com/download/dotnet/8.0) |
| RAM | Tối thiểu 2 GB |
| Ổ đĩa | ~15 MB sau cài đặt |
| Quyền hạn | Administrator |

> **Lưu ý:** Nếu máy chưa có .NET 8 Desktop Runtime, installer sẽ hiện thông báo hướng dẫn tải về. Tải tại: https://dotnet.microsoft.com/download/dotnet/8.0 → **Run desktop apps** → **x64**

---

## ⬇ Cài đặt

### Bước 1 — Tải installer

[![Download](https://img.shields.io/badge/⬇_Tải_xuống-DiskCleaner_Setup_v2.0.0.exe-00b4d8?style=for-the-badge)](https://github.com/truonganDevOps/diskcleaner-pro/releases/latest/download/DiskCleaner_Setup_v2.0.0.exe)

### Bước 2 — Cài đặt

1. Double-click vào file `DiskCleaner_Setup_v2.0.0.exe`
2. Windows SmartScreen có thể hiện cảnh báo **"Windows protected your PC"** → click **More info** → **Run anyway**
   > Cảnh báo này xuất hiện do phần mềm chưa có code signing certificate. File hoàn toàn an toàn.
3. Chấp nhận **UAC** (User Account Control) để installer chạy với quyền Administrator
4. Làm theo wizard:
   - **Select Destination Location** — mặc định `C:\Program Files\DiskCleanerPro\`, có thể đổi
   - **Select Additional Tasks** — tùy chọn tạo Desktop shortcut
   - Click **Install**
5. Click **Finish** — phần mềm tự khởi động

### Bước 3 — Lần đầu chạy

Phần mềm yêu cầu quyền Administrator để truy cập file hệ thống. Windows sẽ hiện hộp thoại UAC — click **Yes** để tiếp tục.

---

## 📖 Hướng dẫn sử dụng

### 🏠 Tổng quan (Dashboard)

Màn hình chính hiển thị tất cả ổ đĩa trên máy:

![Tổng quan](https://tanovix-diskcleaner.pages.dev/screenshots/01_tong_quan.png)

- **Thanh tiến trình màu vàng**: dung lượng đã dùng (chuyển đỏ khi > 85%)
- **Đã dùng / Còn trống / Tổng cộng**: số liệu chi tiết từng ổ
- Nhấn **Refresh** để cập nhật số liệu mới nhất

---

### 📊 Phân tích lưu trữ

![Phân tích](https://tanovix-diskcleaner.pages.dev/screenshots/02_phan_tich.png)

1. Nhấn **Browse** để chọn thư mục cần phân tích (hoặc nhập đường dẫn trực tiếp)
2. Nhấn **Scan** — quét đệ quy toàn bộ thư mục
3. Kết quả hiển thị danh sách file/thư mục sắp xếp theo dung lượng giảm dần

---

### 🧹 Dọn dẹp hệ thống

![Dọn dẹp](https://tanovix-diskcleaner.pages.dev/screenshots/03_don_dep.png)

1. Tick chọn các loại file muốn xóa:
   - **Windows Temp** — file tạm của hệ thống
   - **User Temp** — file tạm của người dùng
   - **Recycle Bin** — thùng rác
   - **Browser Cache** — cache Edge, Chrome, Firefox
   - **Thumbnail Cache** — ảnh xem trước File Explorer
   - **WER Dumps** — báo cáo lỗi Windows
   - **Prefetch** — file tăng tốc khởi động ứng dụng
   - **Log Files** — file nhật ký hệ thống
2. Nhấn **Scan** để ước tính dung lượng sẽ giải phóng
3. Nhấn **Clean** để xóa

> ⚠️ Không chọn **Prefetch** nếu bạn muốn ứng dụng khởi động nhanh hơn.

---

### 🗑️ Gỡ phần mềm *(Pro)*

![Gỡ phần mềm](https://tanovix-diskcleaner.pages.dev/screenshots/04_go_phan_mem.png)

1. Danh sách tự động tải tất cả ứng dụng đã cài
2. Click chọn ứng dụng muốn gỡ
3. Nhấn **Uninstall** — chạy trình gỡ cài đặt gốc
4. Sau khi gỡ xong, danh sách tự refresh

---

### 🔍 Tìm file trùng & file lớn *(Pro)*

![Tìm file](https://tanovix-diskcleaner.pages.dev/screenshots/05_tim_file.png)

**Tab Large Files:**
1. Nhấn **Scan** để tìm các file lớn nhất trên máy
2. Danh sách hiển thị đường dẫn và dung lượng
3. Click chuột phải → **Open Location** để mở thư mục chứa file

**Tab Duplicate Files:**
1. Nhấn **Scan** để tìm file trùng theo nội dung (hash MD5)
2. Chọn file trùng cần xóa → **Delete Selected**

---

### 🔒 Quyền riêng tư *(Pro)*

![Quyền riêng tư](https://tanovix-diskcleaner.pages.dev/screenshots/06_quyen_rieng_tu.png)

Chọn loại dữ liệu muốn xóa:
- Recent Documents, Run History, Search History
- Clipboard, Typed URLs
- MRU Lists (Most Recently Used)

Nhấn **Clean** để xóa toàn bộ dữ liệu đã chọn.

---

### 🔗 Junction Link Manager

![Junction](https://tanovix-diskcleaner.pages.dev/screenshots/07_junction.png)

Dùng để di chuyển thư mục từ ổ C sang ổ khác mà không ảnh hưởng đến ứng dụng:

1. **Source**: thư mục gốc muốn di chuyển (ví dụ `C:\Users\ADMIN\Documents`)
2. **Target**: vị trí mới trên ổ khác (ví dụ `D:\Documents`)
3. Nhấn **Create Junction** — thư mục được di chuyển và tạo symlink tại vị trí cũ

> Ứng dụng vẫn thấy thư mục tại vị trí cũ nhưng dữ liệu thực sự lưu trên ổ D.

---

### 🚀 Khởi động Windows *(Pro)*

![Startup](https://tanovix-diskcleaner.pages.dev/screenshots/08_khoi_dong.png)

1. Danh sách hiển thị tất cả chương trình chạy khi Windows khởi động
2. Toggle **Enable/Disable** để tắt/bật từng mục
3. Các mục đã tắt vẫn hiển thị (trạng thái Disabled) — có thể bật lại bất kỳ lúc nào

---

### 🛡️ Diệt virus *(Pro)*

![Antivirus](https://tanovix-diskcleaner.pages.dev/screenshots/09_diet_virus.png)

1. Chọn kiểu quét: **Quick Scan** (nhanh) hoặc **Full Scan** (toàn bộ)
2. Nhấn **Scan** — quét các thư mục quan trọng
3. Kết quả hiển thị theo tab: All / Threats / Clean / Skipped

---

### ⚡ Tối ưu hệ thống *(Pro)*

![Optimizer](https://tanovix-diskcleaner.pages.dev/screenshots/10_toi_uu.png)

- **Free RAM** — giải phóng bộ nhớ RAM đang bị cache
- **Power Plan** — chuyển sang High Performance để tăng tốc
- **Visual Effects** — tắt animation để máy phản hồi nhanh hơn

---

### 💚 Điểm sức khỏe *(Pro)*

![Health](https://tanovix-diskcleaner.pages.dev/screenshots/11_kiem_tra.png)

Chấm điểm hệ thống theo 5 tiêu chí (0–100):
- **Disk Space** — dung lượng còn trống
- **Startup** — số lượng chương trình khởi động
- **Junk Files** — lượng file rác tích lũy
- **Privacy** — dữ liệu nhạy cảm còn tồn tại
- **Security** — trạng thái bảo mật

Nhấn **Run Check** để cập nhật điểm.

---

### 💾 Disk Manager

![Disk Manager](https://tanovix-diskcleaner.pages.dev/screenshots/13_disk_manager.png)

Xem và quản lý phân vùng ổ đĩa. Yêu cầu chạy với quyền Administrator để thực hiện thao tác ghi.

**Đọc thông tin:**
- Thanh màu trực quan hiển thị bố cục partition theo tỉ lệ thực
- Click vào ô màu để chọn partition tương ứng trong danh sách
- Thông tin: Drive letter, Label, File System, Type, Size, Free, Used%

**Các thao tác:**

| Nút | Điều kiện | Chức năng |
|-----|-----------|-----------|
| 🔧 Shrink | Partition có drive letter, không phải system | Thu nhỏ partition (nhập MB) |
| ⬌ Extend | Partition có drive letter, không phải system | Mở rộng vào vùng unallocated liền kề |
| ➕ Create | Chọn vùng Unallocated | Tạo partition NTFS mới |
| 🗑️ Delete | Partition có drive letter, không phải system | Xóa partition (gõ DELETE để xác nhận) |

> ⚠️ System, EFI và Recovery partition bị khóa — không thể xóa hay sửa.

---

## 🔑 Kích hoạt Pro

![License](https://tanovix-diskcleaner.pages.dev/screenshots/12_license.png)

Các tính năng Pro yêu cầu license key. Để kích hoạt:

1. Nhấn nút **Activate License** ở góc trên-phải giao diện chính
2. Nhập license key (định dạng `XXXXX-XXXXX-XXXXX-XXXXX`)
3. Nhấn **Activate** — phần mềm xác minh key với server
4. Sau khi kích hoạt thành công, badge góc trên đổi sang **Pro Personal / Team / Enterprise**

**Để mua license:** 📧 [truongandesignerwp@gmail.com](mailto:truongandesignerwp@gmail.com)

| Tier | Thiết bị | Tính năng |
|------|----------|-----------|
| **Pro Personal** | 1 máy | Tất cả tính năng Pro |
| **Pro Team** | 5 máy | Tất cả tính năng Pro |
| **Pro Enterprise** | 100 máy | Tất cả tính năng Pro + hỗ trợ ưu tiên |

> **Grace period:** Nếu mất kết nối internet, license vẫn hoạt động trong **30 ngày**. Phần mềm tự xác minh lại khi có mạng.

---

## 🌐 Ngôn ngữ

Phần mềm hỗ trợ 8 ngôn ngữ. Để đổi ngôn ngữ:

1. Mở phần mềm → góc dưới-trái → dropdown **Language**
2. Chọn ngôn ngữ → áp dụng ngay lập tức, không cần restart

| Mã | Ngôn ngữ |
|----|---------|
| `vi` | Tiếng Việt |
| `en` | English |
| `de` | Deutsch |
| `fr` | Français |
| `es` | Español |
| `ja` | 日本語 |
| `ko` | 한국어 |
| `zh` | 中文 |

---

## 📞 Liên hệ & hỗ trợ

- **Email:** [truongandesignerwp@gmail.com](mailto:truongandesignerwp@gmail.com)
- **Website:** [tanovix-diskcleaner.pages.dev](https://tanovix-diskcleaner.pages.dev)
- **Issues:** [GitHub Issues](https://github.com/truonganDevOps/diskcleaner-pro/issues)

---

## 🛠️ Build từ source

```powershell
# Yêu cầu: .NET 8 SDK, Windows

git clone https://github.com/truonganDevOps/diskcleaner-pro.git
cd diskcleaner-pro

# Build
dotnet build -c Release --nologo

# Publish (cho installer)
dotnet publish -c Release -r win-x64 --self-contained false -o publish\DiskCleaner

# Build installer (yêu cầu Inno Setup 6)
& "D:\Tools\InnoSetup\iscc.exe" installer.iss
# Output: Output\DiskCleaner_Setup_v2.0.0.exe
```

---

<div align="center">

Made with ❤️ by **TruongAn Dev** — [Tanovix](https://tanovix-diskcleaner.pages.dev)

</div>
