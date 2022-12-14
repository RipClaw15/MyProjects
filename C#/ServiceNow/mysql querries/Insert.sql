USE [insurance]
GO
/****** Object:  StoredProcedure [dbo].[InsertInsurance]    Script Date: 10/1/2022 12:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[InsertInsurance]
@Policy_ int,
@Expiry date,
@Location_ varchar(10),
@State_ varchar(10),
@Region varchar(10),
@InsuredValue float,
@Construction varchar(10),
@BusinessType varchar(10),
@Earthquake varchar(10),
@Flood varchar(10)
AS

Begin

Insert into dbinsurance (Policy_,Expiry,Location_,State_,Region,InsuredValue,Construction,BusinessType,Earthquake,Flood)
Values(@Policy_,@Expiry,@Location_,@State_,@Region,@InsuredValue,@Construction,@BusinessType,@Earthquake,@Flood)

end