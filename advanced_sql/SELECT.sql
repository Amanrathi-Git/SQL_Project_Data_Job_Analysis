SELECT 
    COUNT(job_id) AS number_of_jobs,
    CASE 
        WHEN job_location = 'Anywhere' THEN  'Remote'
        WHEN job_location = 'New York' THEN 'Local'
        ELSE 'On-site'
    END AS location_category
FROM job_postings_fact
GROUP BY 
        location_category;