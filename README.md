# Used Car Sales Portal for ABC Cars Pte Ltd

## Project Overview

**Project Name**: Used Car Sales Portal for ABC Cars Pte Ltd

### Purpose:
The objective of this project is to create an intuitive online portal that enables users to buy and sell pre-owned cars. The portal will offer features such as user registration, car listings, transaction management, and administrative controls.

### Project Scope:
The portal will facilitate users in registering, logging in, posting cars for sale, and managing transactions. Administrators will have full control over user accounts, car listings, appointments, and transactions. The overall goal is to provide a secure and user-friendly platform for both buyers and sellers.

## Key Features

### User Features:
- **Registration & Login**:  
  Users can easily register and log in to the portal to access their personal accounts.

- **Car Listings**:  
  - Post cars for sale with image attachments.  
  - Manage active listings by deactivating or removing cars.  
  - Search for cars using filters such as make, model, year of registration, and price.  
  - View detailed information about each listed car.

- **Profile Management**:  
  Update personal details such as contact information and preferences once logged in.

- **Appointments & Bidding**:  
  - Schedule test drive appointments for interested cars.  
  - Place bids on cars for sale based on the listed prices.

### Administrator Features:
- **Admin Login**:  
  Administrators have a separate login to manage the portal.

- **User Management**:  
  View all registered users and promote users to admin roles when needed.

- **Car Listing Management**:  
  - Approve or deactivate car listings as required.  
  - Review and manage the status of car sale transactions.

- **Appointment & Transaction Management**:  
  - Approve or decline test drive bookings based on bids.  
  - Oversee the finalization of car sale transactions once bids are agreed upon.

### Shared Features (for Both Users & Administrators):
- **Portal Access**:  
  - Visit the homepage to see the general portal layout.  
  - Browse and search for available car listings using different search filters.

- **Static Pages**:  
  - Access the About Us and Contact Us pages for more information about the company.

## Technology Stack
- **Front-End**: HTML, CSS, JavaScript
- **Back-End**: PHP, Laravel
- **Database**: MySQL
- **Version Control**: Git, GitHub

## Installation and Setup

1. **Clone the Repository**:  
   First, clone the repository to your local machine:
   ```bash
   git clone https://github.com/your-username/ABC-Cars-Used-Car-Portal.git
   ```

2. **Navigate to the Project Directory**:  
   ```bash
   cd ABC-Cars-Used-Car-Portal
   ```

3. **Install Dependencies**:  
   Use Composer to install necessary dependencies:
   ```bash
   composer install
   ```

4. **Database Setup**:  
   Set up the database and configure the `.env` file with your credentials.

5. **Run the Application**:  
   Start the development server:
   ```bash
   php artisan serve
   ```

## Usage

- **Users**:  
  Users can register, log in, post cars for sale, bid on vehicles, and book test drive appointments.

- **Administrators**:  
  Administrators are responsible for managing user accounts, overseeing car listings, and finalizing sales transactions. They also have control over the approval of appointments and bids.
