resource "aws_iam_group" "pscloud-group" {
  name = "${var.pscloud_company}_iam_group_${var.pscloud_env}_${var.pscloud_group_name}"
}

resource "aws_iam_group_membership" "pscloud-group-membership" {
  name = "${var.pscloud_company}_iam_group_membership_${var.pscloud_env}_${var.pscloud_group_name}"
  group = aws_iam_group.pscloud-group.name

  users = var.pscloud_users_list
}