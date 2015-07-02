<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="StephenCiprianMidtermASP.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

