/* 1. EXISTS có cơ chế dừng sớm nên nếu tìm được thì sẽ thoát luôn, còn IN 
thì sẽ quét qua toàn bộ bảng, vì thế nên EXISTS sẽ tối ưu hơn IN về performance 
*/

SELECT email
FROM Student s
WHERE NOT EXISTS (SELECT 1
					FROM Payments p
					WHERE p.name = s.student_name AND p.payment_date > 2024)