<%@ Page Title="Home" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TravelPlannerV2.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="container">
            <h1>Hello, world!</h1>

            <!--List of destinations with pictures-->
            <!--Didn't complete the details page because running out of time-->
            <div class="row">
                <div class="col-md-4">
                    <p>
                        <img class="img-responsive img-rounded" src="http://touristicattractions.com/wp-content/uploads/2011/09/great_wall_china_wallpaper.jpg" />
                    </p>
                    <h2>China</h2>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <p>
                        <img class="img-responsive img-rounded" src="https://c1.staticflickr.com/1/96/237790368_bdc6775d71_b.jpg" />
                    </p>
                    <h2>Thailand</h2>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <p>
                        <img class="img-responsive img-rounded" src="http://www.1dasia.com/image/1412668260kathmandu-nepal_104637-1024x768.jpg" />
                    </p>
                    <h2>Nepal</h2>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <p>
                        <img class="img-responsive img-rounded" src="http://www.footandshadows.com/files/pics/120.jpg" />
                    </p>
                    <h2>Tibet</h2>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <p>
                        <img class="img-responsive img-rounded" src="http://images.travelpod.com/tripwow/photos/ta-00be-d9f0-1c8b/eiffel-tower-in-paris-france-paris-france+1152_12919359918-tpfil02aw-10175.jpg" />
                    </p>
                    <h2>France</h2>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <p>
                        <img class="img-responsive img-rounded" src="http://www.5starstravel.ca/sites/default/files/-5starstravel.jpg" />
                    </p>
                    <h2>Canada</h2>
                    <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
                </div>
            </div>
            <h3>Plan your trip with us!</h3>
        </div>
    </div>
</asp:Content>


