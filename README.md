# NCT AI Connect

Giao diện web chạy trên máy (Windows) để làm việc với nhiều trợ lý AI dòng lệnh: **Antigravity CLI (agy)**, **Claude Code** và **Codex**.

## Tính năng chính

- **Nhiều tài khoản**: lưu và chuyển nhanh nhiều tài khoản agy (token mã hóa bằng DPAPI của Windows), nhiều tài khoản Claude Code / Codex (mỗi tài khoản một thư mục cấu hình riêng).
- **Chat thường** với bất kỳ trợ lý nào, chọn model, effort, quyền (chỉ đọc / sửa file / toàn quyền) và thư mục làm việc; đính kèm ảnh / file.
- **Cây task Bố–Con**: "Bố" (model mạnh, chỉ đọc) lập kế hoạch, bạn duyệt, "Con" làm từng task; có thể chạy **nhiều Con song song** cho các task độc lập.
- **Chỉ lập kế hoạch**: trao đổi để chốt kế hoạch rồi xuất ra file `.md`, không viết code.
- **Mẹ check (Reviewer)**: tùy chọn, tự kiểm tra lại kết quả sau khi Con làm xong hoặc sau khi chốt kế hoạch.
- **Theo dõi hoạt động trực tiếp**: thấy trợ lý đang đọc file, chạy lệnh, sửa file gì.
- **Mức sử dụng**: hạn mức chính thức (5 giờ / tuần) của agy, Claude Code, Codex và thống kê token theo ngày, tài khoản, model.
- Giao diện **Tiếng Việt / English**.

## Chạy

Cần Python 3.8+ (chỉ dùng thư viện chuẩn) và ít nhất một trong các công cụ: `agy`, `claude`, `codex`.

```
py agy_swap.py              # mở trình duyệt tại http://127.0.0.1:8766
py agy_swap.py --no-browser
```

Biến môi trường tùy chọn: `AGY_SWAP_PORT`, `AGY_SWAP_DIR`, `AGY_CRED_TARGET`, `AGY_BIN`.

## Đóng gói thành file .exe

```
py -m pip install --user pyinstaller
build_exe.bat
```

Kết quả: `dist\NCT AI Connect.exe` (bấm đúp là chạy, không cần cài Python trên máy dùng).
