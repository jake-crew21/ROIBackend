using System;
using System.Collections.Generic;

namespace ROIBackend.Models
{
    public partial class Department
    {
        public Department()
        {
            People = new HashSet<Person>();
        }

        public byte DepartmentId { get; set; }
        public string Name { get; set; } = null!;


        [System.Text.Json.Serialization.JsonIgnore]
        public virtual ICollection<Person> People { get; set; }
    }
}
