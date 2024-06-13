🚀 Project Update: Setting up Minikube using Shell Scripting! 🚀

 Overview

This repository contains a shell script designed to automate the setup of Minikube on CentOS. The script streamlines the installation process of Docker CE, Minikube, and kubectl, ensuring a consistent and error-free deployment of a local Kubernetes environment.

 Features

- Automated Docker CE Installation: Installs Docker CE, the container runtime for Minikube.
- Docker Configuration: Configures Docker for seamless operation, including setting user permissions.
- Minikube Installation: Downloads and installs the latest Minikube binary.
- kubectl Installation: Installs kubectl, the command-line tool for Kubernetes.
- Minikube Cluster Setup: Starts a Minikube cluster using Docker as the driver.

 Benefits

- Efficiency: Reduces the time and effort required to set up a local Kubernetes environment.
- Consistency: Ensures a uniform setup process across different machines and environments.
- Error Reduction: Minimizes human errors by automating the setup steps.
- Scalability: Facilitates quick and easy setup for multiple users or machines.

 Usage

1. Clone the Repository:
   ```sh
   git clone https://github.com/yourusername/minikube-setup-script.git
   cd minikube-setup-script
   ```

2. Make the Script Executable:
   ```sh
   chmod +x setup-minikube.sh
   ```

3. Run the Script:
   ```sh
   ./setup-minikube.sh
   ```

 Requirements

- CentOS with `dnf` package manager installed.
- `curl` for downloading Minikube and kubectl binaries.
- Internet connection to access external repositories and binaries.

 Script Breakdown

- Adding Docker Repository: Adds Docker’s official repository to the system.
- Verifying Repository: Confirms the repository has been added successfully.
- Installing Docker CE: Installs Docker CE along with necessary dependencies.
- Configuring Docker: Adjusts permissions and adds the current user to the Docker group.
- Starting Docker Service: Starts and enables Docker to run on system boot.
- Verifying Docker Installation: Runs a test container to ensure Docker is installed correctly.
- Installing Minikube: Downloads and installs the Minikube binary.
- Installing kubectl: Downloads and installs the latest stable version of kubectl.
- Starting Minikube Cluster: Initializes a Minikube cluster using Docker as the driver.

 Future Enhancements

- Enhanced Error Handling: Adding more robust error checks and handling.
- Logging: Implementing logging mechanisms for better troubleshooting and visibility.
- Custom Configurations: Allowing users to customize Minikube and Docker settings.
- Compatibility: Exploring support for other Linux distributions.

 Contribution

Feel free to fork this repository, make enhancements, and submit pull requests. Any contributions to improve the script or add new features are welcome!


