create policy "Admin can view all providers"
on public.providers for select
using ((auth.jwt() ->> 'email') = 'kingaraash508@gmail.com');

create policy "Admin can approve providers"
on public.providers for update
using ((auth.jwt() ->> 'email') = 'kingaraash508@gmail.com')
with check ((auth.jwt() ->> 'email') = 'kingaraash508@gmail.com');
