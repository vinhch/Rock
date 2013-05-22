﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ScheduleList.ascx.cs" Inherits="RockWeb.Blocks.Administration.ScheduleList" %>

<asp:UpdatePanel ID="upScheduleList" runat="server">
    <ContentTemplate>
        <Rock:ModalAlert ID="mdGridWarning" runat="server" />
        <Rock:Grid ID="gSchedules" runat="server" AllowSorting="true" OnRowSelected="gSchedules_Edit">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <Rock:BoolField DataField="IsShared" HeaderText="Shared" SortExpression="IsShared" />
                <Rock:DeleteField OnClick="gSchedules_Delete" />
            </Columns>
        </Rock:Grid>
    </ContentTemplate>
</asp:UpdatePanel>
