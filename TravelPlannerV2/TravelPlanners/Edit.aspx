﻿<%@ Page Title="TravelPlannerEdit" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Edit.aspx.cs" Inherits="TravelPlannerV2.TravelPlanners.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="TravelPlannerV2.Models.TravelPlanner" DefaultMode="Edit" DataKeyNames="Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the TravelPlanner with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit TravelPlanner</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Date" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Event" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Notes" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="UserName" runat="server" />
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

