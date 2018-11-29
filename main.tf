resource "aws_iam_user" "iam_user" {
  name = "${var.user_name}"
}

resource "aws_iam_user_policy_attachment" "user_policy" {
  user       = "${aws_iam_user.iam_user.name}"
  policy_arn = "${var.policy_arn}"
}

resource "aws_iam_user_login_profile" "user_profile" {
  user                    = "${aws_iam_user.iam_user.name}"
  pgp_key                 = "${var.pgp_key}"
  password_reset_required = false

  # cannot delete aws_iam_user
  # https://github.com/terraform-providers/terraform-provider-aws/issues/2166
  # depends_on = ["aws_iam_user.iam_user"]
}

resource "aws_iam_access_key" "iam_key" {
  user    = "${aws_iam_user.iam_user.name}"
  pgp_key = "${var.pgp_key}"
}
