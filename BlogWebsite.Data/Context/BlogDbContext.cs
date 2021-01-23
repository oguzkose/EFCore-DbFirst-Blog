using BlogWebsite.Data.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace BlogWebsite.Data.Context
{
    public class BlogDbContext : DbContext
    {
        public DbSet<Blog> Blogs { get; set; }
        public DbSet<Tag> Tags { get; set; }
        public DbSet<BlogTag> BlogTags { get; set; }
        public DbSet<Author> Authors { get; set; }

    }
}
