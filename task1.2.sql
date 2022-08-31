SELECT n1.name, n2.name
FROM friends f
LEFT JOIN contacts n1 ON f.id_contact = n1.id
LEFT JOIN contacts n2 ON f.id_friend = n2.id
LEFT JOIN friends o ON f.id_contact=o.id_friend AND f.id_friend=o.id_contact
WHERE o.id_contact IS NOT NULL AND f.id_contact<f.id_friend;
