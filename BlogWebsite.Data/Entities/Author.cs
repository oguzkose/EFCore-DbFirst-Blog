﻿using System;
using System.Collections.Generic;
using System.Text;

namespace BlogWebsite.Data.Entities
{
    public class Author
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string ShortBio { get; set; }
    }
}
