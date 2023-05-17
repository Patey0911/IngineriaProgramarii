using Firebase.Database;
using ProiectIP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace XF_Login.Models
{
    public class UsersModel
    {
        public string adresaPacient { get; set; } 
        public string cnpPacient { get; set; }
        public string numePacient { get; set; } 
        public string parolaPacient { get; set; }
        public string prenumePacient { get; set; }
        public string telefonPacient { get; set; }
    }
}