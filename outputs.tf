output "password" {
  value     = "${aws_iam_user_login_profile.user_profile.encrypted_password}"
  sensitive = true
}

output "secret" {
  value     = "${aws_iam_access_key.iam_key.encrypted_secret}"
  sensitive = true
}
