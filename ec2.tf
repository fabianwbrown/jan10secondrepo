#resource aws_instance DRec2 {
    ami = ami-0de43e61758b7158c
    instance_type = t2.micro
    key_name = aws_key_pair.jenkinskp.key_name
    vpc_security_group_ids = [aws_security_group.disaster_recovery_SGtf.id]
    tags = {
    Name = dr_Server
    key_name  = jenkinskp
    
      

  }
  depends_on = [
    aws_key_pair.jenkinskp
  ]
}

