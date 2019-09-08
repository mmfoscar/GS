﻿using System;
using System.Collections.Generic;
using System.Text;

namespace greenslate.repo.core
{
    public class UserProjectList
    {
        public int ProjectId { get; set; }
        public DateTime StartDate { get; set; }

        public string TimeToStart { get; set; }

        public DateTime EndDate { get; set; }

        public int Credits { get; set; }

        public string Status { get; set; }
    }
}
