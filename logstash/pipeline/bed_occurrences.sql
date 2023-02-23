SELECT 
	TD.id as taxon_id, OD.id as occurrences_id, TD.taxon_key, TD.project_id, TD.location_id, TD.site_id,
	TD.kingdom, TD.phylum, TD.class_taxon, TD.order, TD.family, TD.subfamily, TD.genus, TD.subgenus, TD.scientific_name,
	OD.longitude, OD.latitude, OD.event_date, OD.is_reference, OD.updated_at
	FROM public.occurrences_draft as OD
	inner join public.taxa_draft as TD
	on TD.taxon_key = OD.taxon_key and TD.project_id = OD.project_id
    where OD.updated_at > :sql_last_value
    order by OD.updated_at asc limit 5000