# Define the user and group
$user = "username"
$group = "groupname"

# Add the user to the group
Add-ADGroupMember -Identity $group -Members $user