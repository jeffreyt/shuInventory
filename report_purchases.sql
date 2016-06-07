SELECT software_po_num as po_num, software_po_date as po_date, 'Software' as type,
	software_name as purchase, user_name
FROM software
UNION
SELECT hardware_po_num as po_num, hardware_po_date as po_date, hardware_type as type,
       CONCAT_WS(hardware_make, hardware_model) as purchase, user_name
FROM hardware
ORDER BY po_num
;