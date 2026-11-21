-- Ejecutar una sola vez en SQL Editor de Supabase.
insert into storage.buckets (id, name, public)
values ('prospector-fotos', 'prospector-fotos', false)
on conflict (id) do nothing;

drop policy if exists "prospector_fotos_select" on storage.objects;
drop policy if exists "prospector_fotos_insert" on storage.objects;
drop policy if exists "prospector_fotos_update" on storage.objects;

create policy "prospector_fotos_select"
on storage.objects for select to authenticated
using (bucket_id = 'prospector-fotos');

create policy "prospector_fotos_insert"
on storage.objects for insert to authenticated
with check (bucket_id = 'prospector-fotos');

create policy "prospector_fotos_update"
on storage.objects for update to authenticated
using (bucket_id = 'prospector-fotos')
with check (bucket_id = 'prospector-fotos');
