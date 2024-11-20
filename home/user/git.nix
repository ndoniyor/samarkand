let
  userName = "ndoniyo";
  email = "ndoniyor123@gmail.com";
in
{
    programs.git = {
        enable = true;
        userName = userName;
        userEmail = email;
    };
}