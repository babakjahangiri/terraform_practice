variable "vpcname" {
  type    = string
  default = "myvpc"
}

variable "sshport" {
  type    = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type    = list(string)
  default = ["value1", "value2"]
}

variable "mymap" {
  type = map(any)
  default = {
    Key1 = "Value1"
    Key2 = "Value2"
  }
}

variable "intputname" {
  type        = string
  description = "set the name of the VPC"
}

variable "mytuple" {

  type = tuple([string, number, string])
  default = [
  "cat", 1, "dog"]

}

variable "myobject" {
  type = object({
    name = string,
    port = list(number)
  })
  default = {
    name = "BJ"
    port = [22, 80, 8080]
  }
}