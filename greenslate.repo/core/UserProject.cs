using System;
using System.Collections.Generic;

namespace greenslate.repo.core
{
    public partial class UserProject
    {
        public int UserId { get; set; }
        public int ProjectId { get; set; }
        public bool IsActive { get; set; }
        public DateTime AssignedDate { get; set; }

        public Project Project { get; set; }
        public User User { get; set; }
    }
}
