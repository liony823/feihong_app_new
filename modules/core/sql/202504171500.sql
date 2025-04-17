create table if not exists account (
    id int primary key autoincrement,
    username text not null,
    zone text not null,
    phone text not null,
    password text not null,
    login_type smallint not null, -- 1: 手机号登录, 2: 用户名登录
    created_at timestamp not null default CURRENT_TIMESTAMP,
    updated_at timestamp not null default CURRENT_TIMESTAMP
);