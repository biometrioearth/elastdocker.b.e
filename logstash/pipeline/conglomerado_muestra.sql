select * from conglomerado_muestra where updated_at > :sql_last_value
order by updated_at asc limit 1000