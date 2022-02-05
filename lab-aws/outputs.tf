output ip-publico_develop_instance-ue1-0 {
  value = "${aws_instance.develop_instance-ue1[0].public_ip}"
}

output ip-publico_develop_instance-ue1-1 {
  value = "${aws_instance.develop_instance-ue1[1].public_ip}"
}

output ip-publico_develop_instance-ue2-0 {
  value = "${aws_instance.develop_instance-ue2[0].public_ip}"
}

output ip-publico_develop_instance-ue2-1 {
  value = "${aws_instance.develop_instance-ue2[1].public_ip}"
}


