SELECT user.user_name, user_tel, user_location, hardware_make, hardware_model
FROM user
LEFT JOIN hardware
ON user.user_name=hardware.user_name
WHERE user.user_name='on-hand'
ORDER BY user.user_name;