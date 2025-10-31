-- Insert ADMIN role if it doesn't exist
INSERT INTO roles (name) VALUES ('ROLE_ADMIN') ON DUPLICATE KEY UPDATE name=name;

-- Insert admin user (replace password hash with actual bcrypt hash)
INSERT INTO users (username, email, password_hash, first_name, last_name, currency, created_at, is_active) 
VALUES ('admin@budgettracker.com', 'admin@budgettracker.com', '$2a$10$encrypted_password_hash', 'Admin', 'User', 'INR', NOW(), true);

-- Link admin user to admin role
INSERT INTO user_roles (user_id, role_id) 
SELECT u.id, r.id 
FROM users u, roles r 
WHERE u.email = 'admin@budgettracker.com' AND r.name = 'ROLE_ADMIN';