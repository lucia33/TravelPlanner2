<%@ Page Title="TravelPlannerDelete" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Delete.aspx.cs" Inherits="TravelPlannerV2.TravelPlanners.TravelPlanners.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this TravelPlanner?</h3>
        <asp:FormView runat="server"
            ItemType="TravelPlannerV2.Models.TravelPlanner" DataKeyNames="Id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the TravelPlanner with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete TravelPlanner</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Date</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Date" ID="Date" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Event</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Event" ID="Event" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Notes</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Notes" ID="Notes" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Username</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="UserName" ID="UserName" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

