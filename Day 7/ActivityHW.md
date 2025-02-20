# Publishing a Website on AWS

## Create an Ubuntu EC2 Instance
1. Launch an EC2 instance with Ubuntu.
   <img width="960" alt="Screenshot 2025-02-20 221152" src="https://github.com/user-attachments/assets/904033cf-7f04-484a-8a79-c98ff58cef36" />
   <img width="960" alt="Screenshot 2025-02-20 221247" src="https://github.com/user-attachments/assets/0b8bb9e4-4657-4aba-b74e-752f8c3a0ad0" />
   <img width="960" alt="Screenshot 2025-02-20 221335" src="https://github.com/user-attachments/assets/5344b9f9-da12-4846-b441-5bf0c0b90fff" />
   <img width="960" alt="Screenshot 2025-02-20 221444" src="https://github.com/user-attachments/assets/5014c711-4c4a-4f0b-9abe-752d73f97ea4" />

2. Connect to the instance.
   <img width="960" alt="Screenshot 2025-02-20 221507" src="https://github.com/user-attachments/assets/c5a34bcb-e488-4b48-93a1-a8296eeeb6e5" />

## Install Apache
1. Update the package lists:
   ```bash
   sudo apt update -y
   ```
2. Install Apache:
   ```bash
   sudo apt install apache2 -y
   ```
3. Start and enable Apache:
   ```bash
   sudo systemctl start apache2
   sudo systemctl enable apache2
   ```
4. Verify Apache installation by accessing the public IP address in a web browser. The default Apache server page should be visible.
   <img width="960" alt="Screenshot 2025-02-20 222143" src="https://github.com/user-attachments/assets/626241bc-d01b-48f0-8026-928a7a2366f6" />

## Clone the Repository
1. Install Git:
   ```bash
   sudo apt install git -y
   ```
2. Navigate to the default HTTP directory:
   ```bash
   cd /var/www/html
   ```
3. Clone the repository:
   ```bash
   sudo git clone https://github.com/your-username/your-repo.git
   ```
4. Move the contents of the repository to the HTML directory:
   ```bash
   sudo mv your-repo/* .
   sudo rm -rf your-repo
   ```

## Set Permissions
1. Set the appropriate permissions:
   ```bash
   sudo chmod -R 755 /var/www/html
   sudo chown -R www-data:www-data /var/www/html
   ```
   <img width="960" alt="Screenshot 2025-02-20 225429" src="https://github.com/user-attachments/assets/dd5a36a9-c9a4-49f3-a025-4beb0c8247da" />

## Restart Apache
1. Restart the Apache server:
   ```bash
   sudo systemctl restart apache2
   ```

## Access the Website
1. Open a web browser and navigate to:
   ```
   http://your-ec2-public-ip
   ```
   <img width="960" alt="Screenshot 2025-02-20 225455" src="https://github.com/user-attachments/assets/1800666b-a934-491e-b4f4-1e3a73e495fd" />

## Terminate the Instance
1. After completing the work, terminate the EC2 instance.
   <img width="960" alt="Screenshot 2025-02-20 225527" src="https://github.com/user-attachments/assets/71826ed7-18e2-456c-9b9a-dbba5f532301" />
