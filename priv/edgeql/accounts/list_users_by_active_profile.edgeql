# edgedb = :query!
# mapper = LiveBeats.Accounts.User

select User {
  id,
  name,
  username,
  email,
  role,
  profile_tagline,
  active_profile_user,
  avatar_url,
  external_homepage_url,
  confirmed_at,
  inserted_at,
  updated_at,
  songs_count,
}
filter .active_profile_user.id = <uuid>$id
limit <int64>$limit
