<%@ Page Title="TPInsert" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Insert.aspx.cs" Inherits="TravelPlannerV2.TPs.Insert" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="TravelPlannerV2.Models.TP" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Insert TP</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:DynamicControl Mode="Insert" DataField="Name" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="PhoneNumber" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="Email" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="Origin" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="Destination" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="StartDate" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="EndDate" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="Budget" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="OtherRequests" runat="server" />
                    <asp:DynamicControl Mode="Insert" DataField="UserName" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
