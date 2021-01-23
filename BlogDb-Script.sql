Create Database BlogDb
go

Use BlogDb
go


Create Table Author
(
	Id int primary key identity,
	Name nvarchar(20) not null,
	Surname nvarchar(20) not null,
	ShortBio nvarchar(500)
)

Create Table Tag
(
	Id int primary key identity,
	Name nvarchar(20) not null
)

Create Table Blog
(
	Id int primary key identity,
	Title nvarchar(250) not null,
	Content nvarchar(max) not null,
	CreateDate date not null,
	LikeCount int,
	DislikeCount int,
	AuthorId int,
	Foreign Key (AuthorId) references Author(Id)
)

Create Table BlogTag
(
	BlogId int,
	TagId int,
	Primary key(BlogId,TagId),
	Foreign Key (TagId) references Tag(Id),
	Foreign Key (BlogId) references Blog(Id)
)


Insert Into Author
Values
('Oğuz','Köse','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut blandit sem nisl, sit amet convallis lacus malesuada sit amet. Etiam et est enim. Aenean facilisis lorem orci, imperdiet sollicitudin ligula pulvinar sed. Fusce ultrices facilisis congue. Proin bibendum interdum mauris, sed fermentum sapien bibendum et.')

Insert Into Tag
values 
('Bilim'),
('Teknoloji'),
('Yazılım')

Insert Into Blog 
values
('Yazılıma Nasıl Başladım?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu ex orci. Donec non porttitor ante. Aliquam erat volutpat. Ut viverra dui sed neque iaculis facilisis. Proin pulvinar a nisi in imperdiet. Vestibulum et ipsum commodo, hendrerit tellus vitae, egestas enim. Integer risus sem, placerat sit amet lobortis in, consequat a purus. Integer vel malesuada elit. Curabitur porttitor, enim sed mollis suscipit, massa ex iaculis neque, id suscipit nisl velit sagittis erat. Sed eget risus semper, vulputate metus at, condimentum nisi. Etiam malesuada magna ac est hendrerit, a tincidunt risus bibendum. Nam arcu mi, ornare ac massa id, suscipit cursus odio. Vivamus tincidunt dictum ultricies. Quisque libero tellus, hendrerit ac consectetur sed, aliquam et nisl. Nulla porttitor cursus commodo. Nulla placerat mi non quam eleifend commodo.',GETDATE(),10,1,1)

Insert Into BlogTag
values
(1,3)
