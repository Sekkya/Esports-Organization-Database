SELECT
    e.idemployee,
    e.firstname,
    e.lastname,
    e.role        AS employee_role,
    r.game,
    r.roster_name,
    rm.role       AS roster_role
FROM employee e
JOIN roster_member rm
    ON e.idemployee = rm.idemployee
JOIN roster r
    ON rm.idroster = r.idroster
ORDER BY e.lastname;
