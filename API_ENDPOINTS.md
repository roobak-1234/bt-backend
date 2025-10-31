# Budget Tracker API Endpoints

Base URL: `http://localhost:8080`

## Authentication Endpoints

### 1. Sign In
**POST** `/api/auth/signin`
```json
{
  "username": "testuser",
  "password": "password123"
}
```

### 2. Sign Up
**POST** `/api/auth/signup`
```json
{
  "username": "newuser",
  "email": "newuser@example.com",
  "password": "password123",
  "firstName": "John",
  "lastName": "Doe",
  "currency": "USD"
}
```

### 3. Sign Up Admin
**POST** `/api/auth/signup-admin`
```json
{
  "username": "admin",
  "email": "admin@example.com",
  "password": "admin123",
  "firstName": "Admin",
  "lastName": "User",
  "currency": "USD"
}
```

### 4. Update Profile
**PUT** `/api/auth/profile`
Headers: `Authorization: Bearer {jwt_token}`
```json
{
  "firstName": "Updated John",
  "lastName": "Updated Doe",
  "email": "updated@example.com",
  "currency": "EUR"
}
```

### 5. Reset Password
**POST** `/api/auth/reset-password`
```json
{
  "email": "user@example.com",
  "newPassword": "newpassword123"
}
```

## Budget Endpoints

### 1. Get All Budgets
**GET** `/api/budgets`
Headers: `Authorization: Bearer {jwt_token}`

### 2. Get Budget by ID
**GET** `/api/budgets/{id}`
Headers: `Authorization: Bearer {jwt_token}`

### 3. Create Budget
**POST** `/api/budgets`
Headers: `Authorization: Bearer {jwt_token}`
```json
{
  "name": "Monthly Budget",
  "allocatedAmount": 2500.00,
  "startDate": "2024-01-01",
  "endDate": "2024-01-31",
  "budgetType": "monthly"
}
```

### 4. Update Budget
**PUT** `/api/budgets/{id}`
Headers: `Authorization: Bearer {jwt_token}`
```json
{
  "name": "Updated Monthly Budget",
  "allocatedAmount": 3000.00,
  "startDate": "2024-01-01",
  "endDate": "2024-01-31",
  "budgetType": "monthly"
}
```

### 5. Delete Budget
**DELETE** `/api/budgets/{id}`
Headers: `Authorization: Bearer {jwt_token}`

## Expense Endpoints

### 1. Create Expense
**POST** `/api/expenses`
Headers: `Authorization: Bearer {jwt_token}`
```json
{
  "amount": 45.50,
  "description": "Grocery shopping",
  "date": "2024-01-15",
  "categoryName": "Food & Dining",
  "paymentMethod": "Credit Card",
  "receiptUrl": "https://example.com/receipt.jpg",
  "isRecurring": false
}
```

### 2. Get All Expenses
**GET** `/api/expenses`
Headers: `Authorization: Bearer {jwt_token}`

### 3. Update Expense
**PUT** `/api/expenses/{id}`
Headers: `Authorization: Bearer {jwt_token}`
```json
{
  "amount": 55.75,
  "description": "Updated grocery shopping",
  "date": "2024-01-15",
  "categoryName": "Food & Dining",
  "paymentMethod": "Debit Card",
  "receiptUrl": "https://example.com/updated-receipt.jpg",
  "isRecurring": false
}
```

### 4. Delete Expense
**DELETE** `/api/expenses/{id}`
Headers: `Authorization: Bearer {jwt_token}`

## Category Endpoints

### 1. Create Category
**POST** `/api/categories`
Headers: `Authorization: Bearer {jwt_token}`
```json
{
  "name": "Transportation",
  "description": "Car, bus, taxi expenses"
}
```

### 2. Get All Categories
**GET** `/api/categories`
Headers: `Authorization: Bearer {jwt_token}`

## Budget Entry Endpoints

### 1. Create Budget Entry
**POST** `/api/budget`
Headers: `Authorization: Bearer {jwt_token}`
```json
{
  "amount": 150.00,
  "amounttype": "expense",
  "category": "Food & Dining",
  "description": "Weekly groceries",
  "date": "2024-01-15"
}
```

### 2. Get All Budget Entries
**GET** `/api/budget`
Headers: `Authorization: Bearer {jwt_token}`

### 3. Get Budget Entries by Category
**GET** `/api/budget/category/{category}`
Headers: `Authorization: Bearer {jwt_token}`

### 4. Get Budget Entry by ID
**GET** `/api/budget/{id}`
Headers: `Authorization: Bearer {jwt_token}`

### 5. Update Budget Entry
**PUT** `/api/budget/{id}`
Headers: `Authorization: Bearer {jwt_token}`
```json
{
  "amount": 175.00,
  "amounttype": "expense",
  "category": "Food & Dining",
  "description": "Updated weekly groceries",
  "date": "2024-01-15"
}
```

### 6. Delete Budget Entry
**DELETE** `/api/budget/{id}`
Headers: `Authorization: Bearer {jwt_token}`

## Admin Endpoints

### 1. Get All Users
**GET** `/api/admin/users`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 2. Get Dashboard Stats
**GET** `/api/admin/dashboard-stats`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 3. Get All Categories (Admin)
**GET** `/api/admin/categories`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 4. Suspend User
**PUT** `/api/admin/users/{id}/suspend`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 5. Activate User
**PUT** `/api/admin/users/{id}/activate`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 6. Delete User
**DELETE** `/api/admin/users/{id}`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 7. Get User Details
**GET** `/api/admin/users/{id}`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 8. Update User
**PUT** `/api/admin/users/{id}`
Headers: `Authorization: Bearer {admin_jwt_token}`
```json
{
  "firstName": "Updated First Name",
  "lastName": "Updated Last Name",
  "email": "updated@example.com",
  "currency": "EUR"
}
```

### 9. Reset User Password
**POST** `/api/admin/users/{id}/reset-password`
Headers: `Authorization: Bearer {admin_jwt_token}`
```json
{
  "newPassword": "newpassword123"
}
```

### 10. Create Category (Admin)
**POST** `/api/admin/categories`
Headers: `Authorization: Bearer {admin_jwt_token}`
```json
{
  "name": "Entertainment"
}
```

### 11. Update Category (Admin)
**PUT** `/api/admin/categories/{id}`
Headers: `Authorization: Bearer {admin_jwt_token}`
```json
{
  "name": "Updated Entertainment"
}
```

### 12. Delete Category (Admin)
**DELETE** `/api/admin/categories/{id}`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 13. Get Analytics
**GET** `/api/admin/analytics`
Headers: `Authorization: Bearer {admin_jwt_token}`

### 14. Seed Test Data
**POST** `/api/admin/seed-data`
Headers: `Authorization: Bearer {admin_jwt_token}`

## Database Tables

Based on the models, your application has the following tables:

1. **users** - User accounts and profiles
2. **roles** - User roles (ADMIN, STANDARD_USER, etc.)
3. **user_roles** - Many-to-many relationship between users and roles
4. **budgets** - Budget plans with allocated amounts
5. **expenses** - Individual expense records
6. **categories** - Expense categories
7. **budget_entries** - Budget tracking entries
8. **goals** - Financial goals (model exists but no controller found)

## Notes

- Replace `{jwt_token}` with the actual JWT token received from sign-in
- Replace `{admin_jwt_token}` with JWT token from admin sign-in
- Replace `{id}` with actual numeric IDs
- All authenticated endpoints require valid JWT tokens
- Admin endpoints require ROLE_ADMIN privileges
- Server runs on port 8080 by default