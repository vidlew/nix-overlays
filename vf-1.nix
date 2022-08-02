self: super: with super;
{
vf-1 =
python3Packages.buildPythonApplication rec {
  pname = "vf-1";
  version = "0.0.11";

  src = fetchgit {
    url = "https://github.com/solderpunk/VF-1.git";
    rev = "23a3359f1d2cbef813212b6c8d33ceaad7269459";
    sha256 = "sha256-+X7K65SgdRf01c0X/rtJJFOfScy1+h6pALB56HsBqQo=";
  };

  propagatedBuildInputs = with python3Packages; [];

  # No tests are available
  doCheck = false;
  pythonImportsCheck = [ "vf1" ];

  meta = with lib; {
    homepage = "https://github.com/solderpunk/VF-1";
    description = "Command line gopher client. High speed, low drag.";
    license = licenses.bsd2;
    maintainers = with maintainers; [];
  };
};

}
