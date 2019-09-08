using System;
using System.Collections.Generic;

namespace greenslate.repo.core
{
    public partial class User
    {
        public User()
        {
            UserProject = new HashSet<UserProject>();
        }

        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public ICollection<UserProject> UserProject { get; set; }
    }
}
