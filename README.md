# Terraform Scripts for AWS 

The Repository contains the terraform code for creating a VPC along with subnet and launching an EC2 instance with the preferred network and security group configuration



## Run Locally

Clone the project 

```bash
 https://github.com/Younus-Saberi/aws-terrafrom-script/
```

## Before running below commands, Please Configure Your AWS Secrets and AWS Account ID using AWS CLI
## I have configured and ran with the same method
## Otherwise add your AWS Secrets and Account ID in Terrform Provider Block in the file

Run and apply terraforms script as a root directory
"Easiest and Fast Way (But Not recommended)"
```hcl
terraform init
terraform apply
```

Go to the dev directory to run terraform module 
"Good and Best Partices to follow up"
```bash
  cd dev
```

Initialise the terraform library

```hcl
 terraform init
```

Checkout the Infrastructure as a Plan
```hcl
terraform plan 
```

Apply and run the changes 

```hcl
 terraform apply
```

Terminate and Stop the terraform

```hcl
terraform destroy
```


## Lessons Learned

What I have learn while building this project?
- I have learn about the terraform state and backup files
- Understood the core value of aws services and resources
- Expreience with the different terraform commands and usecase

What challenges I have face and how I overcome them?
- I have faces challenges during creating VPC, Subnet and attach it to a ec2 instance. 
- I have reffered some tutorials and Understood the integration between different aws resources
- I have also face issue while making a terraform module and it overwhemling to understand
- Used terraform Offical documentation and also read some blog by some of the amazing people which help to grasp the knowledge easily



## Optimizations

What optimizations did I make in your code? 
- I was writing in root file `main.tf` and running the terraform script to build my infrastructure. Later I have realised it was not the best option to do so
- Improve the efficieny and execution of the terraform script by adding different modules and help to separate different entities and logic of the infrastructure

## Screenshots

![EC2 Instance Details](https://github.com/Younus-Saberi/aws-terrafrom-script/assets/73644685/9e505a23-03ad-408d-bb23-1f77e0373303)

![Security Groups Details](https://github.com/Younus-Saberi/aws-terrafrom-script/assets/73644685/4d1109d1-e28f-4645-a121-72036c8b43a8)

![VPC Details](https://github.com/Younus-Saberi/aws-terrafrom-script/assets/73644685/5398a48c-8495-4c75-a3b1-22bf8dd0ff93)

![Terrafrom Init and Terrfrom Plan Command](https://github.com/Younus-Saberi/aws-terrafrom-script/assets/73644685/dd6fb6f6-fae9-45ab-9f6e-4d102685ffc7)

![Terrafrom Apply Command](https://github.com/Younus-Saberi/aws-terrafrom-script/assets/73644685/c77cd368-a55d-4581-a2b2-a27c71668012)


## Feedback

If you have any feedback, please reach out to us at younussaberi@gmail.com
