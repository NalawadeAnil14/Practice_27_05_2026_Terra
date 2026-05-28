# 1. For loop on list o string 
/*
variable "names" {
  type    = list(string)
  default = ["anil", "suni", "suresh"]
}

output "names_output" {
  value = [
    for name in var.names : name
  ]
}
*/

# 2. loop with condition 
/*
variable "number" {
  default = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
}

output "even_numbers" {
  value = [for ev_num in var.number : ev_num if ev_num % 2 == 0]
}
*/

# 3. Loop with map 
/*
variable "users" {
  default = {
    user1 = "anil"
    user2 = "rahul"
    user3 = "amit"
  }
}

output "usename" {
  value = [for key, value in var.users : "${key} = ${value}"]
}
*/

# 4. Create new map using loop 
/*
variable "users" {
  default = {
    anil  = 25
    rahul = 30
  }
}

output "after_5_years" {
  value = { for user, age in var.users : user => age + 5 }
}
*/

# 5. Loop on List of Objects
/*
variable "users" {
  default = [
    {
      name = "anil"
      age  = 25
    },
    {
      name = "rahul"
      age  = 30
    }
  ]
}

output "user_ages" {
  value = [for user in var.users : user.age]
}
*/

#6. Nested Loop 
/*
variable "nested_list" {
  default = [
    [1, 2],
    [3, 4],
    [5, 6]
  ]
}

output "flatten_output" {
  value = flatten([for sublist in var.nested_list :
  [for num in sublist : num]])
}
*/

# 7. Nested loop with object 
/*
variable "regions" {
  default = ["us-east-1", "ap-south-1"]
}

variable "envs" {
  default = ["dev", "prod"]
}

output "vms" {
  value = flatten([for region in var.regions : [for env in var.envs : "${region}-${env}-vm"]])
}
*/

#

variable "departments" {
  default = {
    devops = ["anil", "rahul"]
    cloud  = ["amit", "rohit"]
  }
}

output "department_employee" {
  value = flatten([for dep, user in var.departments : [for emp in user : {
    deplartment = dep
    employee    = emp
  }]])
}
