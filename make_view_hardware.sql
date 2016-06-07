CREATE VIEW Hardware AS
	  SELECT 	computer_serial AS hardware_serial, 
			  computer_type AS hardware_type,
			  computer_make AS hardware_make, 
			  computer_model AS hardware_model, 
			  computer_po_num AS hardware_po_num, 
			  computer_po_date AS hardware_po_date, 
			  user_name 
	  FROM computer
	  UNION
	  SELECT 	device_serial AS hardware_serial, 
			  device_type AS hardware_type,
			  device_make AS hardware_make, 
			  device_model AS hardware_model, 
			  device_po_num AS hardware_po_num, 
			  device_po_date AS hardware_po_date, 
			  user_name
	  FROM device;