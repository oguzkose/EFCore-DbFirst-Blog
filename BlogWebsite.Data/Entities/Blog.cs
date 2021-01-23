using System;
using System.Collections.Generic;
using System.Text;

namespace BlogWebsite.Data.Entities
{
    public class Blog
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime CreateDate { get; set; }
        public int LikeCount { get; set; }
        public int DislikeCount { get; set; }
        public int AuthorId { get; set; }
    }
}
