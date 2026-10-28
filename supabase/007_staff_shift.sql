alter table public.staff
  add column shift text check (shift is null or char_length(shift) <= 40);

-- مثال: فصل الاسم عن الشفت للحساب الحالي (غيّر القيم براحتك)
update public.staff
set name = 'عبدالرحمن نور',
    shift = 'الشفت المسائي'
where user_id = (select id from auth.users where email = 'tapko.link@gmail.com');

-- لما تضيف موظفة جديدة بعد كده:
-- insert into staff (user_id, name, shift)
-- select id, 'سارة علي', 'الشفت الصباحي' from auth.users where email = '...';
