﻿<%@ Page Title="CoursEdit" Language="C#" MasterPageFile="~/MasterPages\Default.Master" CodeBehind="Edit.aspx.cs" Inherits="StephenCiprianMidtermASP.Courses.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Course Details</title>
    <link href="../Content/databaseTables.css" rel="stylesheet" />
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="StephenCiprianMidtermASP.Models.Cours" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Cours with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Cours</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="CourseID" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseName" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseDescription" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CourseCost" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

