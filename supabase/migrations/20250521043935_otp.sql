create sequence "public"."otps_id_seq";

create table "public"."otps" (
    "id" integer not null default nextval('otps_id_seq'::regclass),
    "email" character varying(255) not null,
    "otp" integer not null
);


alter sequence "public"."otps_id_seq" owned by "public"."otps"."id";

CREATE UNIQUE INDEX otps_pkey ON public.otps USING btree (id);

alter table "public"."otps" add constraint "otps_pkey" PRIMARY KEY using index "otps_pkey";

alter table "public"."otps" add constraint "otps_otp_check" CHECK (((otp >= 100000) AND (otp <= 999999))) not valid;

alter table "public"."otps" validate constraint "otps_otp_check";

grant delete on table "public"."otps" to "anon";

grant insert on table "public"."otps" to "anon";

grant references on table "public"."otps" to "anon";

grant select on table "public"."otps" to "anon";

grant trigger on table "public"."otps" to "anon";

grant truncate on table "public"."otps" to "anon";

grant update on table "public"."otps" to "anon";

grant delete on table "public"."otps" to "authenticated";

grant insert on table "public"."otps" to "authenticated";

grant references on table "public"."otps" to "authenticated";

grant select on table "public"."otps" to "authenticated";

grant trigger on table "public"."otps" to "authenticated";

grant truncate on table "public"."otps" to "authenticated";

grant update on table "public"."otps" to "authenticated";

grant delete on table "public"."otps" to "service_role";

grant insert on table "public"."otps" to "service_role";

grant references on table "public"."otps" to "service_role";

grant select on table "public"."otps" to "service_role";

grant trigger on table "public"."otps" to "service_role";

grant truncate on table "public"."otps" to "service_role";

grant update on table "public"."otps" to "service_role";


