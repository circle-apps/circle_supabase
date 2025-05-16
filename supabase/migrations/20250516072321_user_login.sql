create table "public"."user_login" (
    "email" character varying not null,
    "password" character varying not null,
    "created_at" timestamp with time zone not null default now()
);


alter table "public"."user_login" enable row level security;

CREATE UNIQUE INDEX user_login_pkey ON public.user_login USING btree (email);

alter table "public"."user_login" add constraint "user_login_pkey" PRIMARY KEY using index "user_login_pkey";

grant delete on table "public"."user_login" to "anon";

grant insert on table "public"."user_login" to "anon";

grant references on table "public"."user_login" to "anon";

grant select on table "public"."user_login" to "anon";

grant trigger on table "public"."user_login" to "anon";

grant truncate on table "public"."user_login" to "anon";

grant update on table "public"."user_login" to "anon";

grant delete on table "public"."user_login" to "authenticated";

grant insert on table "public"."user_login" to "authenticated";

grant references on table "public"."user_login" to "authenticated";

grant select on table "public"."user_login" to "authenticated";

grant trigger on table "public"."user_login" to "authenticated";

grant truncate on table "public"."user_login" to "authenticated";

grant update on table "public"."user_login" to "authenticated";

grant delete on table "public"."user_login" to "service_role";

grant insert on table "public"."user_login" to "service_role";

grant references on table "public"."user_login" to "service_role";

grant select on table "public"."user_login" to "service_role";

grant trigger on table "public"."user_login" to "service_role";

grant truncate on table "public"."user_login" to "service_role";

grant update on table "public"."user_login" to "service_role";


