using Microsoft.EntityFrameworkCore.Scaffolding.Metadata;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace apiRestNavarroPablo.Entities
{
    public class Alumno
    {   
        public int id { get; set; }
        [Required]
        public int dni { get; set; }
        [Required]
        public String nombre { get; set; }
        [Required]
        public String apellido { get; set; }
        public String curso { get; set; }
        public int año { get; set; }
    }
}
