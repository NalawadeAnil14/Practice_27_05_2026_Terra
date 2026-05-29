locals {
  numbered_subnets = {
    for index, val in values(module.my_vpc.public_subnets) :
    index + 1 => val
  }
}
