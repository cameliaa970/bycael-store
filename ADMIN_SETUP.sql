-- SKINTINT: jalankan di Supabase SQL Editor.
-- Tabel products dan store_admins serta kebijakan RLS sudah tersedia.
insert into public.products(name,description,price,image_url,category,whatsapp_number,is_active)
select 'ESQA Flawless Serum Skintint',
'Complexion ringan dengan tampilan natural glowing. Produk utama SKINTINT sesuai laporan E-Commerce Lab.',
112000,'','Complexion','085731838324',true
where not exists(select 1 from public.products where lower(name)=lower('ESQA Flawless Serum Skintint'));

-- AKTIVASI ADMIN (setelah membuat akun di Authentication > Users):
-- Salin UUID user dari Supabase Auth, lalu jalankan perintah ini dengan UUID asli:
-- insert into public.store_admins(user_id) values ('UUID-AUTH-USER')
-- on conflict(user_id) do nothing;
-- Jangan pernah memasukkan service_role/secret key ke file website.