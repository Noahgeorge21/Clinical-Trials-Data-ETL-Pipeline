DROP VIEW IF EXISTS prediction_dataset;
CREATE VIEW prediction_dataset AS
SELECT 
	a.*, 
	b.condition_count, 
	b.location_count, 
	b.intervention_count
from studies a
left join 
study_overview b 
on a.nct_id = b.nct_id;

