select * from taxa_draft where updated_at > :sql_last_value
order by updated_at asc limit 5000