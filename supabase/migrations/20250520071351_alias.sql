alter table "public"."user_info" add column "alias" text;

alter table "public"."user_login" add column "logout_time" timestamp with time zone;


