<%@ Page Title="TravelPlannerList" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="TravelPlannerV2.TravelPlanners.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>TravelPlanners List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="TravelPlannerV2.Models.TravelPlanner"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for TravelPlanners
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Date" CommandName="Sort" CommandArgument="Date" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Event" CommandName="Sort" CommandArgument="Event" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Notes" CommandName="Sort" CommandArgument="Notes" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Username" CommandName="Sort" CommandArgument="UserName" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Date" ID="Date" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Event" ID="Event" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Notes" ID="Notes" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="UserName" ID="UserName" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/TravelPlanners/Details", Item.Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/TravelPlanners/Edit", Item.Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/TravelPlanners/Delete", Item.Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

