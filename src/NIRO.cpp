#include <iostream>
#include <string>
#include <filesystem>
#include <cstdlib>
using namespace std;

// pfile = project-file
string pfile = "Non-IDE-RezaxOnes";
// pfile_env = project-file-enviroment
string pfile_env = "Non-IDE-RezaxOnes_env";


/* == USER == */




// quy uoc: -1 = khong ton tai / khong co / sai / khong hop le
// viet theo tieu chuan camelCase va snake_case cho dat ten cac bien



void ssystem(const string &command) //string system, lenh ssystem se nhan duoc tham so string so voi system chi nhan mang char a[]
{
system(command.c_str());
}

long long rssystem(const string &command) //return string system, lay tham so tra ve cua lenh
{
    long long ans = system(command.c_str());
    return ans;
}

// Package //
namespace package {

class package_1 {
   public:

   void checksum() {
   long long statusChecksum = -1;
   string sha256sumTemp = "/home/" + user_m + "/" + pfile + "/package/Tool-Server/temp_SHA256SUM-command_package.txt";
   string sha256sumOrigin = "/home/" + user_m + "/" + pfile + "/package/Tool-Server/SHA256SUM-command_package.txt";
   string zpackage = "/home/" + user_m + "/" + pfile + "/package/Tool-Server/command_package.zip";
   string tool_server_dir = "/home/" + user_m + "/" + pfile + "/package/Tool-Server/";
   cout << "Dang checksum package" << endl;
   ssystem("touch " + sha256sumTemp);
   ssystem("sha256sum " + zpackage + R"( | awk '{print $1}' | )" + "tee " + sha256sumTemp);
   statusChecksum = rssystem("cmp -s " + sha256sumOrigin + " " + sha256sumTemp);
   if(statusChecksum == 0)
   {
   cout << "Dang unzip package " + zpackage << endl;
   ssystem("unzip " + zpackage + " -d " + "/home/" + user_m + "/" + pfile_env + "/");
   cout << "Dang cap mot so quyen can thiet cho package" << endl;
   ssystem("sudo chmod +x /home/" + user_m + "/" + pfile_env + "/" + R"(*)");
   cout << "Luu y: Cac package da tai ve khong duoc xoa tu dong va duoc luu tru o thu muc " + tool_server_dir + " !" << endl;
   cout << "Neu ban can tai lai thi vui long xoa cac package da tai ve o thu muc " + tool_server_dir + " !"<< endl;
   cout << "Da cai dat thanh cong!" << endl;
   exit(0);
   }
   else {
   cout << "Checksum khong khop" << endl; 
   cout << "Cai dat that bai!" << endl;
   cout << "Vui long kiem tra lai Non-IDE-RezaxOnes!" << endl;
   exit(1);
   }
  }


  void mirror() {
   string rscdn_rezaxones_com = "https://rscdn.rezaxones.com/list/github_archive/tool-server/";
   string github_com = "https://github.com/RezaxOnes/tool-server/raw/refs/heads/main/";
   string rscdn_rezaxones_com_zpackage = rscdn_rezaxones_com + "command_package.zip";
   string rscdn_rezaxones_com_sha256sum = rscdn_rezaxones_com + "SHA256SUM-command_package.txt";
   string github_com_zpackage = github_com + "command_package.zip";
   string github_com_sha256sum = github_com + "SHA256SUM-command_package.txt";
   string tool_server_dir = "/home/" + user_m + "/" + pfile + "/package/Tool-Server/";
   cout << "ban muon tai package nay tu nguon mirror nao?" << endl;
   cout << "1. rscdn.rezaxones.com" << endl;
   cout << "2. github.com" << endl;
   cout << "Vui long nhap lua chon! (Chi nhap so khong nhap gi them)." << endl;
   long long query_package_1;
   cout << ">> "; cin >> query_package_1;
   if (query_package_1 == 1)
   {
   cout << "Ban dang tai tu nguon rscdn.rezaxones.com" << endl;
   ssystem("mkdir -p " + tool_server_dir);
   ssystem("wget -P " + tool_server_dir + " " + rscdn_rezaxones_com_zpackage);
   ssystem("wget -P " + tool_server_dir + " " + rscdn_rezaxones_com_sha256sum);
   checksum();
   }
   else if (query_package_1 == 2)
   {
   cout << "Ban dang tai tu nguon github.com" << endl;
   ssystem("mkdir -p " + tool_server_dir);
   ssystem("wget -P " + tool_server_dir + " " + github_com_zpackage);
   ssystem("wget -P " + tool_server_dir + " " + github_com_sha256sum);
   checksum();
   }
   else { 
   cout << "Lua chon khong hop le tuy nhien van tuong duong voi exit 0" << endl;
   exit(0);
   }
}

void MainPackage() {
   cout << "ban co chac chan muon tai package nay khong?" << endl;
   cout << "1. co" << endl;
   cout << "2. khong" << endl;
   cout << "Vui long nhap lua chon! (Chi nhap so khong nhap gi them)." << endl;
   long long query_package_0;
   cout << ">> "; cin >> query_package_0;
   if (query_package_0 == 1)
   {
   mirror();
   }
   else if (query_package_0 == 2)
   {
   cout << "Ban da huy thao tac thanh cong!" << endl;
   exit(0);
   }
   else { 
   cout << "Lua chon khong hop le tuy nhien van tuong duong voi exit 0" << endl;
   exit(0);
   }
}

};

class package_2 {
    public:

    void checksum() {
    long long statusChecksum = -1;
    string sha256sumTemp = "/home/" + user_m + "/" + pfile + "/package/autoShutdown-RezaxOnes/temp_SHA256SUM-ASRO_package.txt";
    string sha256sumOrigin = "/home/" + user_m + "/" + pfile + "/package/autoShutdown-RezaxOnes/SHA256SUM-ASRO_package.txt";
    string zpackage = "/home/" + user_m + "/" + pfile + "/package/autoShutdown-RezaxOnes/ASRO_package.zip";
    string ASRO_dir = "/home/" + user_m + "/" + pfile + "/package/autoShutdown-RezaxOnes/";
    cout << "Dang checksum package" << endl;
    ssystem("touch " + sha256sumTemp);
    ssystem("sha256sum " + zpackage + R"( | awk '{print $1}' | )" + "tee " + sha256sumTemp);
    statusChecksum = rssystem("cmp -s " + sha256sumOrigin + " " + sha256sumTemp);
    if (statusChecksum == 0) 
    {
    cout << "Checksum da khop!" << endl;
    cout << "Dang unzip package" + zpackage << endl;
    ssystem("unzip " + zpackage + " -d " + "/home/" + user_m + "/" + pfile_env + "/");
    cout << "Dang cap mot so quyen can thiet cho package" << endl;
    ssystem("sudo chmod +x /home/" + user_m + "/" + pfile_env + "/" + R"(*)");
    ssystem("sudo chmod +x /home/" + user_m + "/" + pfile_env + "/ASRO_command/" + R"(*)");
    cout << "Dang inject user vao ASRO" << endl;
    ssystem("sed -i '/^# == USER ==/{a\\   user_m=\"" + user_m + "\"\n}' /home/" + user_m + "/" + pfile_env + "/ASRO");
   cout << "Vui long chay lenh \"ASRO\" va chon muc 2 neu ban muon install ASRO !" << endl;
   cout << "Luu y: Cac package da tai ve khong duoc xoa tu dong va duoc luu tru o thu muc" + ASRO_dir + " !" << endl;
   cout << "Neu ban can tai lai thi vui long xoa cac package da tai ve o thu muc " + ASRO_dir + " !" << endl;
   cout << "Da cai dat thanh cong!" << endl;
   exit(0);
    }
   else 
   {
   cout << "Checksum khong khop" << endl;
   cout << "Cai dat that bai!" << endl;
   cout << "Vui long kiem tra lai autoShutdown-RezaxOnes!" << endl; 
   exit(1);
   }
}

   void mirror() {
   string rscdn_rezaxones_com = "https://rscdn.rezaxones.com/list/github_archive/autoShutdown-RezaxOnes/package_for_NIRO/";
   string github_com = "https://github.com/RezaxOnes/autoShutdown-RezaxOnes/raw/refs/heads/main/package_for_NIRO/";
   string rscdn_rezaxones_com_zpackage = rscdn_rezaxones_com + "ASRO_package.zip";
   string rscdn_rezaxones_com_sha256sum = rscdn_rezaxones_com + "SHA256SUM-ASRO_package.txt";
   string github_com_zpackage = github_com + "ASRO_package.zip";
   string github_com_sha256sum = github_com + "SHA256SUM-ASRO_package.txt";
   string ASRO_dir = "/home/" + user_m + "/" + pfile + "/package/autoShutdown-RezaxOnes/";
   cout << "ban muon tai package nay tu nguon mirror nao?" << endl;
   cout << "1. rscdn.rezaxones.com" << endl;
   cout << "2. github.com" << endl;
   cout << "Vui long nhap lua chon! (Chi nhap so khong nhap gi them)." << endl;
   long long query_package_1;
   cout << ">> "; cin >> query_package_1;
   if (query_package_1 == 1)
   {
   cout << "Ban dang tai tu nguon rscdn.rezaxones.com" << endl;
   ssystem("mkdir -p " + ASRO_dir);
   ssystem("wget -P " + ASRO_dir + " " + rscdn_rezaxones_com_zpackage);
   ssystem("wget -P " + ASRO_dir + " " + rscdn_rezaxones_com_sha256sum);
   checksum();
   }
   else if (query_package_1 == 2)
   {
   cout << "Ban dang tai tu nguon github.com" << endl;
   ssystem("mkdir -p " + ASRO_dir);
   ssystem("wget -P " + ASRO_dir + " " + github_com_zpackage);
   ssystem("wget -P " + ASRO_dir + " " + github_com_sha256sum);
   checksum();
   }
   else {
   cout << "Lua chon khong hop le tuy nhien van tuong duong voi exit 0" << endl;
   exit(0);
   }
}

  void MainPackage() {
   cout << "ban co chac chan muon tai package nay khong?" << endl;
   cout << "1. co" << endl;
   cout << "2. khong" << endl;
   cout << "Vui long nhap lua chon! (Chi nhap so khong nhap gi them)." << endl;
   long long query_package_0;
   cout << ">> "; cin >> query_package_0;
   if (query_package_0 == 1)
   {
   mirror();
   }
   else if (query_package_0 == 2) {
   cout << "Ban da huy thao tac thanh cong!" << endl;
   exit(0);
   }
   else {
   cout << "Lua chon khong hop le tuy nhien van tuong duong voi exit 0" << endl;
   exit(0);
   }
}

};

}
// End // 

void updateInTime(string query)
{ 
    // === check version ===
    if (query == "co")
    {
    long long statusVersion = -1;
    ssystem("git -C /home/" + user_m + "/" + pfile + " pull");
    statusVersion = rssystem("cmp -s /home/" + user_m + "/" + pfile + "/version_source.txt" + " " + "/home/" + user_m + "/" + pfile_env + "/version_source.txt");
    if (statusVersion == 0) {
      cout << "Day da la phien ban moi nhat, khong can cap nhat gi them!" << endl;
      exit(0);
   }
   else { 
    ssystem("sed -i '/^# == USER ==/{a\\    user_m=\"" + user_m + "\"\n}' /home/" + user_m + "/" + pfile + "/update-in-time.sh");
    ssystem("exec /home/" + user_m + "/" + pfile + "/update-in-time.sh");
    exit(0);
   }
    }
   else if (query == "khong")
   {
   cout << "Ban co the tai ngay luc nay mot cach tu dong!" << endl;
   cout << "Ban vui long go \"co\" thi script se tu dong tai git ve! (chi kha dung voi Ubuntu)" << endl;
   cout << "Neu ban van muon cai thu cong thi hay go \"khong\"" << endl;
   cout << "Luu y: Chi ho tro huong dan cai dat cho ubuntu, neu dung OS khac ban nen go \"khong\" roi cai dat mot cach thu cong git" << endl;
   string query22; 
   cout << ">> "; cin >> query22;
   if (query22 == "co") {
      cout << "Dang tai git!" << endl;
      ssystem(R"(sudo add-apt-repository ppa:git-core/ppa)");
      ssystem(R"(sudo apt update && sudo apt install git)");
      cout << "Da tai git thanh cong! Hay chay lai UIT va nhan co cho lenh UIT!" << endl;
      exit(0);
   }
   else if (query22 == "khong")
     {
      cout << "Day la lenh de xuat neu ban muon tai git (ubuntu)" << endl;
      cout << "sudo add-apt-repository ppa:git-core/ppa" << endl; 
      cout << "sudo apt update && sudo apt install git" << endl;
      cout << "Nho tai git nhe!" << endl;
      exit(0);
     }
   else {
      cout << "Lua chon khong hop le nhung van tuong duong exit 0" << endl;
      cout << "Day la lenh de xuat neu ban muon tai git (ubuntu)" << endl;
      cout << "sudo add-apt-repository ppa:git-core/ppa" << endl;
      cout << "sudo apt update && sudo apt install git" << endl;
      cout << "Nho tai git nhe!" << endl;
      exit(0);
   }
   }
   else {
   cout << "Lua chon khong hop le nhung van tuong duong exit 0" << endl;
   cout << "Day la lenh de xuat neu ban muon tai git (ubuntu)" << endl;
   cout << "sudo add-apt-repository ppa:git-core/ppa" << endl;
   cout << "sudo apt update && sudo apt install git" << endl;
   cout << "Nho tai git nhe!" << endl;
   exit(0);
   }
}


void downloadPackage(long long query)
{
   // ===== Package 1 =====#
   if (query == 1)
   {
   package::package_1 package1;
   package1.MainPackage();
   }
   // ====== End Package 1 =======
   // ====== Package 2 ========
   else if (query == 2)
   {
   package::package_2 package2;
   package2.MainPackage();
   }
   // ====== End Package 2 ===========
   else
   {
   cout << "Lua chon khong hop le tuy nhien van tuong duong voi exit 0" << endl;
   exit(0);
   }
}


int main()
{
    string version = "2.2.8";
    string version_name = "Optimized Ultra NIRO 2 - C++";
    cout << "Non-IDE By RezaxOnes - Version " + version + " - " + version_name << endl;
    cout << "LICENSE - MIT" << endl;
    cout << "Ban can giup gi?" << endl;
    cout << "Lua chon: " << endl;
    cout << "1. Help / Can Huong Dan Cach Su Dung" << endl;
    cout << "2. Run command Non-IDE-Settings" << endl;
    cout << "3. Run command Non-IDE-Command" << endl;
    cout << "4. Go cai dat NIRO =(((" << endl;
    cout << "5. UIT (Update In Time - Update NIRO Ma Khong Lam Mat Script Ban Da Cau Hinh)" << endl;
    cout << "6. Reinstall (Cai dat lai)" << endl;
    cout << "7. Mot so van de co the nay sinh loi (dev monitor)" << endl;
    cout << "8. Cai dat cac package dac biet" << endl;
    cout << "9. Thoat NIRO" << endl;
    cout << "Vui long nhap lua chon! (Chi nhap so khong nhap gi them)." << endl;
    long long query; 
    cout << ">> "; cin >> query;

   if (query == 1) {
   ssystem("less /home/" + user_m + "/" + pfile_env + "/docs/help.txt");
   }
   else if (query == 2) {
   cout << "Se chuyen tiep lenh sau dau \">> \" sang Non-IDE-Settings" << endl;
   cout << "Vui long nhap: " << endl;
   if(cin.peek() == '\n')
   {
   cin.ignore(); //ignore cin tu menu
   }
   string args1; 
   cout << ">> "; getline(cin, args1);
   ssystem("/home/" + user_m + "/" + pfile_env + "/Non-IDE-Settings " + args1);
   }
   else if  (query == 3) {
   cout << "Se chuyen tiep lenh sau dau \">> \" sang Non-IDE-Command" << endl;
   cout << "Vui long nhap: " << endl;
   if(cin.peek() == '\n')
   {
   cin.ignore(); //ignore cin tu menu
   }
   string args2;
   cout << ">> "; getline(cin, args2);
   ssystem("/home/" + user_m + "/" + pfile_env + "/Non-IDE-Command " + args2);
   }
   else if (query == 4) {
   cout << "Lenh nay can quyen sudo!" << endl;
   ssystem("sudo /home/" + user_m + "/" + pfile + "/uninstall.sh");
   }
   else if (query == 5) {
   cout << "Vui long chac chan rang ban da tai git neu da tai roi thi go \"co\" neu khong thi go \"khong\"" << endl;
   cout << "Vui long nhap \"co\" hoac \"khong\": " << endl;
   string query2; 
   cout << ">> "; cin >> query2;
   cout << "Co mot so lenh trong day can sudo!" << endl;
   updateInTime(query2);
   }
   else if (query == 6)
   {
       ssystem("sed -i '/^# == USER ==/{a\\ user_m=\"" + user_m + "\"\n}' /home/" + user_m + "/" + pfile + "/reinstall.sh");
       cout << "Lenh nay can sudo!" << endl;
       ssystem("exec /home/" + user_m + "/" + pfile + "/reinstall.sh");
       exit(0);
   }
else if (query == 7) {
   cout << "1. Luon cap nhat file NIRO_map_file neu co them script moi, neu ban la user hay kiem tra NIRO_map_file co loi khong, neu co thi nen xoa roi git pull" << endl << endl;
   cout << "2. Khi cap nhat source luon luon sua version_source" << endl << endl;
   cout << "3. Neu script loi do flag, hay xoa Non-IDE-RezaxOnes_Flag" << endl << endl;
   exit(0);
}
else if (query == 8) {
   cout << "V Truoc khi dung ban can luu y phai tai cac goi o duoi V" << endl;
   cout << "Chu y: Do cac trinh quan ly goi o Distro la khac nhau nen khong co che do cai tu dong!" << endl;
   cout << "De dung duoc script nay ban can tai cac goi nay (tuy Distro thuong la: apt, zypper, dnf, pacman,...):" << endl;
   cout << "Ban can tai cac goi: (unzip, curl, wget)" << endl;
   cout << "unzip, curl, wget" << endl;
   cout << "Tuy chon: (coreutils) (neu distro cua ban khong phai minimal thuong khong can tai)" << endl;
   cout << "---------------------------------------------------------------------------------------" << endl;
   cout << "Tu phien ban version 2.2.6 - Optimized Ultra NIRO 2, Non-IDE-RezaxOnes tich hop ca autoShutdown-RezaxOnes vao package" << endl;
   cout << "Non-IDE By RezaxOnes Downloads Package Center - Version " + version + " - " + version_name << endl;
   cout << "LICENSE - MIT" << endl;
   cout << "Ban can tai gi?" << endl;
   cout << "1. Cac lenh cua tool server (tool server by RezaxOnes Studios)" << endl;
   cout << "2. ASRO (autoShutdown-RezaxOnes)" << endl;
   cout << "---------------------------------------------------------------------------------------" << endl;
   cout << "Vui long nhap lua chon! (Chi nhap so khong nhap gi them)." << endl;
   long long query_download;
   cout << ">> "; cin >> query_download;
   cout << "Co mot so lenh can sudo !" << endl;
   downloadPackage(query_download);
}
else if (query == 9) {
cout << "Good Bye!" << endl;
exit(0);
}
else {
cout << "Lua chon khong hop le, nhung khong sao vi no tuong duong voi \"9. Thoat NIRO!\"" << endl;
return 0; // Thoat han luon, chuan C++ hon
}
return 0;
}