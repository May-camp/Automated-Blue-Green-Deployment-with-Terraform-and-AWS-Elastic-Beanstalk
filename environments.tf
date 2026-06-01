# --- BLUE ENVIRONMENT (Production v1.0) ---
resource "aws_elastic_beanstalk_environment" "blue-env" {
  name                = "tf-blue-env"
  application         = aws_elastic_beanstalk_application.gb-app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.4.10 running Corretto 17"
  version_label       = aws_elastic_beanstalk_application_version.v1.name

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = "LoadBalanced"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = "1"
  }

    setting {
        namespace = "aws:autoscaling:asg"
        name      = "MaxSize"
        value     = "2"
    }

    setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
    }
}

# --- GREEN ENVIRONMENT (Production v2.0) ---
resource "aws_elastic_beanstalk_environment" "green-env" {
  name                = "tf-green-env"
  application         = aws_elastic_beanstalk_application.gb-app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.4.10 running Corretto 17"
  version_label       = aws_elastic_beanstalk_application_version.v2.name

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = "LoadBalanced"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = "1"
  }

    setting {
        namespace = "aws:autoscaling:asg"
        name      = "MaxSize"
        value     = "2"
    }

    setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
    }
}

