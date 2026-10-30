# SKINTINT — Beauty Store
Website toko online SKINTINT dengan tema fun, fresh, pastel pink/peach/lavender.

## Isi repository
- index.html — katalog publik, keranjang sementara, checkout WhatsApp.
- admin.html — login Supabase Auth dan dashboard kelola produk.
- ADMIN_SETUP.sql — seed produk utama dan petunjuk aktivasi admin.

## Integrasi
- Hosting: GitHub Pages.
- Supabase project: bycael-store (srgdlfizezccujghqayf).
- Database: public.products dan public.store_admins; RLS aktif.
- WhatsApp toko: 085731838324.

## Setup produk
1. Buka Supabase Dashboard > SQL Editor.
2. Jalankan isi ADMIN_SETUP.sql untuk memasukkan produk utama ESQA dengan harga Rp112.000.

## Buat akun admin
1. Buka Supabase Dashboard > Authentication > Users.
2. Klik Add user / Create new user. Gunakan email milik pemilik toko dan password kuat. Jangan bagikan password.
3. Salin UUID user yang baru dibuat.
4. Di SQL Editor jalankan: insert into public.store_admins(user_id) values ('UUID-USER') on conflict(user_id) do nothing;
5. Setelah GitHub Pages aktif, buka https://cameliaa970.github.io/bycael-store/admin.html dan login.

## Publikasikan GitHub Pages
1. Buka Settings > Pages pada repository ini.
2. Di Build and deployment, pilih Deploy from a branch.
3. Pilih branch main dan folder /(root), lalu Save.
4. Tunggu deployment selesai. URL toko: https://cameliaa970.github.io/bycael-store/

## Fitur admin
Tambah, edit, aktifkan/nonaktifkan, dan hapus produk. Perubahan tersimpan di Supabase dan akan tampil pada katalog publik.
Foto produk ditambahkan melalui URL gambar publik. Upload foto langsung belum disiapkan.
Keranjang hanya tersimpan selama tab terbuka; checkout diteruskan ke WhatsApp.
Hanya publishable key yang digunakan pada browser. Jangan pernah mengunggah service_role/secret key.