Create proc spUploadImage

@Name nvarchar(255),
@Size int,
@ImageData varbinary(max),
@NewId int output 
as
begin
	Insert into mike.dbo.tblImages
	Values(@Name, @Size, @ImageData)
	--use the id of the new row with the above "NewId" output paramer.
	Select @NewId = SCOPE_IDENTITY()
End
