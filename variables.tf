variable "service_name" {

}

variable "region" {

}

variable "cluster_name" {

}

variable "vpc_id" {

}

variable "private_subnets" {

}

variable "service_port" {

}

variable "use_lb" {
  type    = bool
  default = true
  description = "Habilita a exposição do serviço via load balancer"
}

variable "service_cpu" {

}

variable "service_memory" {

}

variable "service_listener" {

}

variable "service_task_execution_role" {

}

variable "environment_variables" {
  type = list(any)

}

variable "capabilities" {
  type = list(any)

}

variable "service_healthcheck" {
  type = map(any)

}

variable "service_launch_type" {

}

variable "service_task_count" {

}

variable "service_hosts" {

}

variable "scale_type" {
  default = null

}

variable "task_minimum" {
  default = 3

}

variable "task_maximum" {
  default = 10

}

##Autoscalling Out de cpu

variable "scale_out_cpu_threshold" {
  default = 80
  description = "Quantidade maxima de uso cpu para startar o alarme autoscalling"

}

variable "scale_out_adjustment" {
  default = 1
  description = "Quantidade de task para serem adicionadas ao startar o alarme autoscalling"

}

variable "scale_out_comparison_operator" {
  default = "GreaterThanOrEqualToThreshold"
  description = "Operador de comparação da metrica"

}

variable "scale_out_statistic" {
  default = "Average"
  description = "Dimensão da metrica a ser utilizada para autoscalling max, min, media.."

}

variable "scale_out_period" {
  default = 60
  description = "Periodo de monitoramento da metrica"

}

variable "scale_out_evaluation_periods" {
  default = 2
  description = "Quantidade de periodo para monitoramento da Metrica"

}

variable "scale_out_cooldown" {
  default = 60
  description = "Quantidade de tempo de espera para voltar a monitorar a metrica após ação de autoscalling"

}

##Autoscalling In de cpu

variable "scale_in_cpu_threshold" {
  default = 30
  description = "Quantidade maxima de uso cpu para startar o alarme autoscalling"

}

variable "scale_in_adjustment" {
  default = -1
  description = "Quantidade de task para serem adicionadas ao startar o alarme autoscalling"

}

variable "scale_in_comparison_operator" {
  default = "LessThanOrEqualToThreshold"
  description = "Operador de comparação da metrica"

}

variable "scale_in_statistic" {
  default = "Average"
  description = "Dimensão da metrica a ser utilizada para autoscalling max, min, media.."

}

variable "scale_in_period" {
  default = 120
  description = "Periodo de monitoramento da metrica"

}

variable "scale_in_evaluation_periods" {
  default = 3
  description = "Quantidade de periodo para monitoramento da Metrica"

}

variable "scale_in_cooldown" {
  default = 120
  description = "Quantidade de tempo de espera para voltar a monitorar a metrica após ação de autoscalling"

}

##Tracking CPU

variable "scale_tracking_cpu" {
  default = 80
  description = "Utilização ideal de CPU para MANTER nas tasks"

}

##Tracking Requests

variable "alb_arn" {
  default = null
  description = "ARN Application Load Balancer"
}

variable "scale_tracking_requests" {
  default = 0
  description = "Quantidade de requisições por segundos para MANTER em cada tasks"
}