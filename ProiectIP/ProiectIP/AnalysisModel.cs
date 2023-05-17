using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace ProiectIP
{
    public class AnalysisModel
    {
        public string UltimaConsultatie { get;set; }
        
        public string afectiuniCronice { get;set; }

        public string alergii { get;set;}

        public string diagnostic {  get;set; }

        public string tratament { get; set; }
    }
}
