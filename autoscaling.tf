## App Auto Scalling service para escalar qualquer serviço aws.. exemplo DynamoDb, Cassandra etc, verificar doc:
# https://registry.terraform.io/providers/hashicorp/aws/5.38.0/docs/resources/appautoscaling_target.html

resource "aws_appautoscaling_target" "main" {
  max_capacity = var.task_maximum
  min_capacity = var.task_minimum

  resource_id        = "service/${var.cluster_name}/${aws_ecs_service.main.name}"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = "ecs"
}