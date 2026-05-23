# Tanovix DiskCleaner Pro — Hướng dẫn sử dụng

**Phiên bản:** 2.0.0  
**Hệ điều hành:** Windows 10/11 (64-bit)  
**Nhà phát triển:** TruongAn Dev — Tanovix

---

## Mục lục

1. [Giao diện tổng quan](#1-giao-diện-tổng-quan)
2. [Phân tích lưu trữ](#2-phân-tích-lưu-trữ)
3. [Dọn dẹp hệ thống](#3-dọn-dẹp-hệ-thống)
4. [Gỡ cài đặt phần mềm](#4-gỡ-cài-đặt-phần-mềm)
5. [Tìm file trùng lặp & file lớn](#5-tìm-file-trùng-lặp--file-lớn)
6. [Quyền riêng tư](#6-quyền-riêng-tư)
7. [Junction Link](#7-junction-link)
8. [Khởi động Windows](#8-khởi-động-windows)
9. [Diệt virus](#9-diệt-virus)
10. [Tối ưu hệ thống](#10-tối-ưu-hệ-thống)
11. [Kiểm tra hệ thống](#11-kiểm-tra-hệ-thống)
12. [Disk Manager](#12-disk-manager)
13. [License & Activation](#13-license--activation)

---

## 1. Giao diện tổng quan

**Menu:** Tổng quan

![Tổng quan](https://tanovix-diskcleaner.pages.dev/screenshots/01_tong_quan.png)

Màn hình chính hiển thị mức sử dụng ổ đĩa của tất cả các ổ trên máy tính.

| Thông tin | Ý nghĩa |
|-----------|---------|
| Thanh màu vàng/xanh | Phần trăm đã sử dụng |
| Đã dùng | Dung lượng đã chiếm |
| Còn trống | Dung lượng còn lại |
| Tổng cộng | Tổng dung lượng ổ đĩa |

**Ví dụ thực tế từ màn hình:**
- C:\ (NTFS) — Đã dùng 90.79 GB / 110.91 GB — **81.9%** (cảnh báo đỏ khi gần đầy)
- D:\ (NTFS) — Đã dùng 117.23 GB / 631.51 GB — **18.6%** (an toàn)
- E:\ Work (NTFS) — Đã dùng 5.28 GB / 300.00 GB — **1.8%**

**Nút Refresh:** Cập nhật lại số liệu mới nhất từ hệ thống.

> **Mẹo:** Nếu ổ C:\ hiển thị màu vàng/đỏ (trên 80%), hãy chạy **Dọn dẹp hệ thống** ngay để giải phóng không gian.

---

## 2. Phân tích lưu trữ

**Menu:** Phân tích lưu trữ

![Phân tích lưu trữ](https://tanovix-diskcleaner.pages.dev/screenshots/02_phan_tich.png)

Phân tích chi tiết thư mục nào đang chiếm nhiều dung lượng nhất.

### Cách sử dụng:

1. Chọn ổ đĩa muốn phân tích (nút **C:**, **D:**, **E:**) hoặc nhấn **Browse** để chọn thư mục cụ thể
2. Nhấn **Scan** (nút đỏ góc phải)
3. Kết quả hiển thị danh sách thư mục theo cột: **Tên**, **Loại**, **Kích thước**

### Ứng dụng thực tế:

- Tìm thư mục game, video, backup chiếm nhiều GB nhất
- Xác định thư mục có thể di chuyển sang ổ D:\ (xem thêm phần Junction Link)
- So sánh kích thước giữa các thư mục con

---

## 3. Dọn dẹp hệ thống

**Menu:** Dọn dẹp

![Dọn dẹp hệ thống](https://tanovix-diskcleaner.pages.dev/screenshots/03_don_dep.png)

Xóa các file rác được Windows và ứng dụng tạo ra, không ảnh hưởng đến dữ liệu cá nhân.

### Danh sách các loại file có thể dọn:

| Loại file | Mô tả | Kích thước ví dụ |
|-----------|-------|-----------------|
| Windows Temp Files | File tạm của Windows và services | 236.4 MB |
| User Temp Files | File tạm trong profile người dùng | 236.4 MB |
| Recycle Bin | Thùng rác chờ xóa vĩnh viễn | 2.40 GB |
| Windows Update Cache | Gói cập nhật đã tải (có thể tải lại) | 44.2 MB |
| Edge Cache | Cache trình duyệt Edge | 415.4 MB |
| NVIDIA Shader Cache | Cache shader GPU (tự tạo lại) | 356.5 MB |
| Thumbnail Cache | Cache icon/ảnh thu nhỏ của Explorer | 19.1 MB |
| Gradle Build Cache | Cache build Android/Java | — |

### Cách sử dụng:

1. Nhấn **Tính lại** (nút dưới cùng) để quét và hiển thị kích thước hiện tại
2. Bỏ tích các loại file **không muốn xóa** (mặc định tất cả đều được chọn)
3. Nhấn **Dọn ngay** (nút đỏ góc phải dưới)

> **Lưu ý:** Windows Update Cache chỉ ảnh hưởng đến việc tải lại nếu cần rollback. Với hệ thống ổn định có thể xóa an toàn.

---

## 4. Gỡ cài đặt phần mềm

**Menu:** Gỡ phần mềm

![Gỡ cài đặt phần mềm](https://tanovix-diskcleaner.pages.dev/screenshots/04_go_phan_mem.png)

Quản lý và gỡ cài đặt các ứng dụng trên máy tính.

### Tính năng:

- **Danh sách ứng dụng:** Hiển thị tất cả phần mềm đã cài với thông tin Publisher, Size, Install Date
- **Tìm kiếm:** Gõ tên ứng dụng vào ô Search để lọc nhanh
- **Sắp xếp:** Dropdown "Sort by Name" để sắp xếp theo tên, kích thước, hoặc ngày cài

### Cách gỡ ứng dụng:

1. Đợi danh sách tải xong ("Loading applications...")
2. Tìm ứng dụng muốn gỡ (hoặc gõ vào ô Search)
3. Nhấn nút **Uninstall** ở cột Actions
4. Xác nhận trong hộp thoại Windows

> **Mẹo:** Sắp xếp theo Size để tìm các ứng dụng chiếm nhiều dung lượng nhất và gỡ những thứ không còn dùng.

---

## 5. Tìm file trùng lặp & file lớn

**Menu:** Tìm file trùng

![Tìm file trùng lặp](https://tanovix-diskcleaner.pages.dev/screenshots/05_tim_file.png)

Tìm và xóa file trùng lặp hoặc file lớn không cần thiết.

### Tab Large Files (File lớn):

1. Nhấn **Browse** để chọn thư mục cần quét
2. Đặt **Min size** (mặc định 50 MB) — chỉ hiển thị file lớn hơn ngưỡng này
3. Nhấn **Scan**
4. Chọn các file muốn xóa → nhấn **Delete Selected**

### Tab Duplicate Files (File trùng lặp):

Tìm các file có nội dung giống hệt nhau (so sánh hash) trong thư mục được chọn.

1. Chọn thư mục → Scan
2. Xem kết quả: các nhóm file trùng
3. Chọn file muốn giữ lại → xóa các bản còn lại

> **Cảnh báo:** Kiểm tra kỹ trước khi xóa. File đã xóa qua tính năng này sẽ KHÔNG vào Recycle Bin.

---

## 6. Quyền riêng tư

**Menu:** Quyền riêng tư

![Quyền riêng tư](https://tanovix-diskcleaner.pages.dev/screenshots/06_quyen_rieng_tu.png)

Xóa lịch sử và dấu vết hoạt động để bảo vệ thông tin cá nhân.

### Các loại dữ liệu có thể xóa:

| Loại | Mô tả |
|------|-------|
| Recent Files | Danh sách file mở gần đây (Start Menu / Quick Access) |
| Run Dialog History | Lệnh đã gõ trong Win+R |
| Windows Search History | Từ khóa tìm kiếm trong thanh taskbar |
| Clipboard History | Nội dung clipboard đã sao chép |
| DNS Cache | Cache DNS lookup (không ảnh hưởng internet) |
| Prefetch Files | ⚠️ Dữ liệu prefetch (xóa có thể chậm boot lần đầu) |
| Windows Event Logs | ⚠️ Log hệ thống (xóa nếu không cần debug) |
| IE / Legacy Edge History | Lịch sử duyệt web của IE và Edge cũ |

### Cách sử dụng:

1. Chọn các loại dữ liệu muốn xóa (mặc định 9 items selected)
2. Nhấn **Scan** để xem dung lượng hiện tại
3. Nhấn **Clean Selected** để xóa

> **Ghi chú:** Các mục có biểu tượng ⚠️ Warning cần cân nhắc trước khi xóa.

---

## 7. Junction Link

**Menu:** Junction Link

![Junction Link](https://tanovix-diskcleaner.pages.dev/screenshots/07_junction.png)

Di chuyển thư mục sang ổ khác và tạo liên kết trong suốt — ứng dụng không biết thư mục đã bị di chuyển.

### Ứng dụng thực tế:

Ổ C:\ sắp đầy nhưng D:\ còn nhiều trống. Bạn muốn di chuyển `C:\Users\ADMIN\Documents` sang `D:\Documents` nhưng vẫn muốn mọi thứ hoạt động bình thường → Dùng Junction Link.

### Cách tạo Junction:

1. **Source folder:** Chọn thư mục muốn di chuyển (ví dụ: `C:\Users\ADMIN\Documents`)
2. **Target path:** Chọn vị trí mới trên ổ D:\ (ví dụ: `D:\Documents`)
3. Nhấn **+ Create Junction**

Phần mềm sẽ: chuyển toàn bộ dữ liệu sang Target → tạo junction tại Source → mọi app đọc Source vẫn hoạt động bình thường.

### Suggested Moves (Gợi ý di chuyển):

| Thư mục | Kích thước |
|---------|-----------|
| C:\Users\ADMIN\AppData\Local\Temp | 236.3 MB |
| C:\Users\ADMIN\Documents | 220.9 MB |
| C:\Users\ADMIN\Downloads | 212.2 MB |

Nhấn **Use as Source** để dùng thư mục đó làm nguồn.

> **Lưu ý:** Cần có đủ dung lượng trống ở Target trước khi tạo junction.

---

## 8. Khởi động Windows

**Menu:** Khởi động Windows

![Khởi động Windows](https://tanovix-diskcleaner.pages.dev/screenshots/08_khoi_dong.png)

Quản lý các chương trình tự động chạy khi Windows khởi động.

### Tổng quan:

- Hiển thị **11 startup items (5 enabled)**
- **Estimated delay: ~1.5s** — ước tính thời gian bị trễ do startup

### Ví dụ danh sách startup:

| Tên | Nguồn | Trạng thái |
|-----|-------|-----------|
| Steam | HKCU | Disabled |
| IDMan (Internet Download Manager) | HKCU | Disabled |
| Discord | HKCU | Disabled |
| Zalo | HKCU | Disabled |
| RiotClient | HKCU | **Enabled** |
| MicrosoftEdgeAutoLaunch | HKCU | Disabled |
| SecurityHealth | HKLM | **Enabled** |

### Cách sử dụng:

- Nhấn **Disable** (nút đỏ) để tắt startup item đang bật
- Nhấn **Enable** (nút xám) để bật lại startup item đã tắt

> **Mẹo:** Tắt tất cả app không cần thiết (game, nhắn tin) khỏi startup. Chỉ giữ lại SecurityHealth và phần mềm bảo mật. Điều này giúp Windows khởi động nhanh hơn đáng kể.

### Auto Clean Schedule:

Tạo lịch tự động dọn dẹp định kỳ — phần mềm sẽ tự chạy scan và clean theo lịch mà không cần mở tay.

---

## 9. Diệt virus

**Menu:** Diệt virus

![Diệt virus](https://tanovix-diskcleaner.pages.dev/screenshots/09_diet_virus.png)

Quét file và tiến trình để phát hiện phần mềm độc hại.

### Các tab:

| Tab | Chức năng |
|-----|-----------|
| **File Scan** | Quét thư mục/file cụ thể để tìm malware |
| **Processes** | Xem và phân tích các tiến trình đang chạy |
| **Quarantine** | Quản lý file đã cách ly |
| **VirusTotal** | Gửi file lên VirusTotal kiểm tra với 70+ antivirus engine |

### Cách quét file:

1. Chọn tab **File Scan**
2. Nhấn biểu tượng thư mục để chọn thư mục cần quét
3. Nhấn **Start Scan** (nút đỏ)
4. Kết quả hiển thị trong vùng log phía dưới

### Tab VirusTotal:

Tích hợp trực tiếp với API VirusTotal. Upload file và nhận kết quả kiểm tra từ hơn 70 antivirus engine online mà không cần thoát ra ngoài.

> **Ghi chú:** Tính năng VirusTotal yêu cầu kết nối internet và API key VirusTotal (miễn phí tại virustotal.com).

---

## 10. Tối ưu hệ thống

**Menu:** Tối ưu hệ thống

![Tối ưu hệ thống](https://tanovix-diskcleaner.pages.dev/screenshots/10_toi_uu.png)

Tinh chỉnh RAM, power plan, hiệu ứng đồ họa và services để cải thiện hiệu năng.

### RAM Optimization:

- Hiển thị RAM usage hiện tại: **62%** (6241 MB free / 16302 MB total)
- Nhấn **Optimize RAM** để giải phóng RAM đang bị giữ bởi các tiến trình không hoạt động

### Power Plan (Kế hoạch nguồn điện):

| Chế độ | Phù hợp với |
|--------|------------|
| **Balanced** | Sử dụng hàng ngày — cân bằng hiệu năng và pin |
| **High performance** | Gaming, render — tối đa hiệu năng, tốn pin hơn |
| **Power saver** | Laptop chạy bằng pin — tiết kiệm tối đa |

Chọn chế độ → nhấn **Apply**.

### Visual Effects (Hiệu ứng đồ họa):

Bật **Performance Mode** để tắt toàn bộ animation và transparency của Windows → máy tính cảm giác nhanh hơn đáng kể, đặc biệt trên PC cấu hình thấp.

### Services:

Xem và quản lý các Windows services đang chạy, có thể tắt các services không cần thiết.

---

## 11. Kiểm tra hệ thống

**Menu:** Kiểm tra hệ thống

![Kiểm tra hệ thống](https://tanovix-diskcleaner.pages.dev/screenshots/11_kiem_tra.png)

Phân tích toàn diện tình trạng máy tính và đưa ra điểm số + khuyến nghị.

### Điểm Health Score:

Điểm từ **0–100**, được tính từ 5 hạng mục:

| Hạng mục | Điểm (ví dụ) | Giải thích |
|----------|-------------|-----------|
| **Disk** | 100/100 | 80% free across all drives — Tốt |
| **Memory** | 76/100 | 6233 MB / 16302 MB available |
| **Startup** | 56/100 | 11 startup programs detected |
| **Junk Files** | 60/100 | ~492 MB of junk files estimated |
| **Security** | 100/100 | Antivirus: Active, Firewall: Active — Tốt |

### Recommendations (Khuyến nghị):

- "11 startup programs. Review startup items to potentially speed up boot." → Vào **Khởi động Windows** để tắt bớt
- "492 MB of temporary files detected." → Vào **Dọn dẹp** để xóa

Nhấn **Run Check** để chạy phân tích mới nhất.

> **Mục tiêu:** Cố gắng đạt điểm tổng trên 70. Tập trung vào Startup và Junk Files trước.

---

## 12. Disk Manager

**Menu:** Disk Manager

Xem toàn bộ phân vùng ổ đĩa theo dạng trực quan và thực hiện các thao tác quản lý partition.

> **Yêu cầu:** Chạy phần mềm với quyền **Administrator** để dùng các nút Shrink / Extend / Create / Delete. Nếu không có quyền, các nút bị vô hiệu hóa và hiển thị cảnh báo màu vàng.

### Giao diện:

- **Dropdown Disk** — chọn ổ đĩa vật lý cần xem (Disk 0, Disk 1, ...)
- **Thanh màu** — hiển thị bố cục partition theo tỉ lệ thực tế
- **Danh sách** — thông tin chi tiết từng partition: Drive, Label, File System, Type, Size, Free, Used%
- **Nút ⟳** — refresh lại từ hệ thống

### Ý nghĩa màu sắc trên thanh:

| Màu | Loại partition |
|-----|---------------|
| 🔴 Đỏ | System / EFI — partition hệ thống |
| 🟡 Vàng/Nâu | Recovery partition |
| 🔵 Xanh | Partition dữ liệu thông thường |
| ⬛ Tối | Unallocated — chưa cấp phát |

### Các thao tác:

#### 🔧 Shrink — Thu nhỏ partition
1. Chọn partition có drive letter (C:, D:, ...)
2. Nhấn **Shrink** → nhập số MB muốn thu nhỏ
3. Tối đa = free space hiện tại của partition đó
4. Nhấn **Confirm**

#### ⬌ Extend — Mở rộng partition
1. Chọn partition muốn mở rộng
2. Nhấn **Extend** → nhập số MB muốn thêm
3. Cần có vùng **Unallocated liền kề** phía sau
4. Nhấn **Confirm**

#### ➕ Create Partition — Tạo partition mới
1. Chọn vùng **Unallocated** trong danh sách (cột Drive hiển thị "—")
2. Nhấn **Create Partition** → nhập size MB (hoặc để trống để dùng toàn bộ)
3. Nhấn **Confirm** → tự format NTFS và gán drive letter

#### 🗑️ Delete — Xóa partition
1. Chọn partition muốn xóa
2. Nhấn **Delete** → đọc cảnh báo ⚠️
3. Gõ chính xác `DELETE` (viết hoa) vào ô xác nhận
4. Nhấn **Confirm**

> ⚠️ **Xóa partition là không thể hoàn tác.** Toàn bộ dữ liệu trên partition sẽ mất vĩnh viễn.

### Lưu ý:

- System, EFI, Recovery partition bị khóa — các nút tự động disabled
- Shrink bị giới hạn bởi file system (pagefile, MFT): Windows không cho phép shrink vượt quá vùng thực sự trống
- Sau mỗi thao tác, danh sách tự refresh

---

## 13. License & Activation

**Menu:** Nhấn nút **Activate License** ở sidebar dưới cùng

![License & Activation](https://tanovix-diskcleaner.pages.dev/screenshots/12_license.png)

Quản lý license và so sánh các gói tính năng.

### Kích hoạt license:

1. Nhập license key vào ô định dạng `XXXXX-XXXXX-XXXXX-XXXXX`
2. Nhấn **Activate**
3. Phần mềm kiểm tra key với server và kích hoạt trong vài giây

**Deactivate:** Nhấn **Deactivate License** để hủy kích hoạt máy hiện tại — giải phóng slot để kích hoạt trên máy khác.

### So sánh gói (Plan Comparison):

| Tính năng | Miễn phí | Pro Personal | Pro Team | Pro Enterprise |
|-----------|:--------:|:------------:|:--------:|:--------------:|
| Junk File Cleaner | ✓ | ✓ | ✓ | ✓ |
| Disk Analyzer | ✓ | ✓ | ✓ | ✓ |
| Junction Manager | ✓ | ✓ | ✓ | ✓ |
| Deep Scan | — | ✓ | ✓ | ✓ |
| Duplicate Finder | — | ✓ | ✓ | ✓ |
| App Uninstaller | — | ✓ | ✓ | ✓ |
| Privacy Cleaner | — | ✓ | ✓ | ✓ |
| Startup Manager | — | ✓ | ✓ | ✓ |
| System Optimizer | — | ✓ | ✓ | ✓ |
| System Health | — | ✓ | ✓ | ✓ |
| Disk Manager | ✓ | ✓ | ✓ | ✓ |

---

## Quy trình dọn dẹp đề xuất

**Hàng tuần (15 phút):**

1. **Kiểm tra hệ thống** → Xem điểm health và đọc khuyến nghị
2. **Dọn dẹp hệ thống** → Tính lại → Dọn ngay
3. **Quyền riêng tư** → Clean Selected

**Hàng tháng (30 phút):**

4. **Phân tích lưu trữ** → Tìm thư mục chiếm nhiều nhất
5. **Tìm file trùng lặp** → Quét và xóa bản trùng
6. **Gỡ phần mềm** → Gỡ app không dùng
7. **Khởi động Windows** → Tắt các startup không cần thiết

**Khi máy chậm:**

8. **Tối ưu hệ thống** → Optimize RAM + chuyển sang High Performance

---

## Thông tin kỹ thuật

- **Phiên bản:** Tanovix DiskCleaner Pro v2.0.0
- **Framework:** .NET 8 WPF, Windows 64-bit
- **SHA-256 (DLL):** `68bc8a4dc6a5fda806faa7013d84364bce08d8ce185339282df884b07dd8f1b1`
- **VirusTotal:** 0/71 antivirus engines detected (clean)
- **Registry access:** Chỉ đọc HKLM/HKCU cho startup manager và machine fingerprint
- **Không có:** Telemetry, keylogger, network monitor

---

*Tanovix DiskCleaner Pro — Developed by TruongAn Dev*
