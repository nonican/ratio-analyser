INSERT INTO Analysis (date, measure, description)
SELECT 
	date, 
	printf("%.2f", SUM(CASE WHEN category='Asset' THEN 1.0 ELSE 0 END) 
	/ SUM(CASE WHEN category='Liability' THEN 1.0 ELSE 0 END)),
	"Debt to Asset ratio"
FROM Balance_sheet
WHERE category IN ('Asset', 'Liability')
GROUP BY date;