<%@ Page Title="TPList" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="TravelPlannerV2.TPs.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>TPs List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="Id"
            ItemType="TravelPlannerV2.Models.TP"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for TPs
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
                                <asp:LinkButton Text="Id" CommandName="Sort" CommandArgument="Id" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Name" CommandName="Sort" CommandArgument="Name" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Phone Number" CommandName="Sort" CommandArgument="PhoneNumber" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Email" CommandName="Sort" CommandArgument="Email" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Origin" CommandName="Sort" CommandArgument="Origin" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Destination" CommandName="Sort" CommandArgument="Destination" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Start Date" CommandName="Sort" CommandArgument="StartDate" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="End Date" CommandName="Sort" CommandArgument="EndDate" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Budget" CommandName="Sort" CommandArgument="Budget" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Other Requirements" CommandName="Sort" CommandArgument="OtherRequests" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="User Name" CommandName="Sort" CommandArgument="UserName" runat="Server" />
                            </th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
                <asp:DataPager PageSize="5" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
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
                        <asp:DynamicControl runat="server" DataField="Name" ID="Name" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="PhoneNumber" ID="PhoneNumber" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Origin" ID="Origin" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Destination" ID="Destination" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="StartDate" ID="StartDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="EndDate" ID="EndDate" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Budget" ID="Budget" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="OtherRequests" ID="OtherRequests" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="UserName" ID="UserName" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/TPs/Details", Item.Id) %>' Text="Details" />
                        | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/TPs/Edit", Item.Id) %>' Text="Edit" />
                        | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/TPs/Delete", Item.Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

