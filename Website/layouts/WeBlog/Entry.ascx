﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BlogEntry.ascx.cs" Inherits="Sitecore.Modules.WeBlog.Layouts.BlogEntry" %>
<%@ Register TagPrefix="gl" Namespace="Sitecore.Modules.WeBlog.Globalization" Assembly="Sitecore.Modules.WeBlog" %>

<div class="wb-entry">
    <% if (ShowEntryImage == CHECKBOX_TRUE) { %>
        <sc:Image runat="server" ID="EntryImage" Field="Image" CssClass="wb-image" />
    <% } %>
    <% if (ShowEntryTitle == CHECKBOX_TRUE) { %>
        <h2><sc:Text ID="txtTitle" Field="Title" runat="server" /></h2>
    <% } %>
    <% if (ShowEntryMetadata == CHECKBOX_TRUE) { %>
        <div class="wb-details"><%=Sitecore.Modules.WeBlog.Globalization.Translator.Format("ENTRY_DETAILS", CurrentEntry.Created, CurrentEntry.CreatedBy.LocalName) %></div>
    <% } %>
    <% if (ShowEntryIntroduction == CHECKBOX_TRUE) { %>
    <sc:Placeholder runat="server" key="phBlogBelowEntryTitle" />
    <% if(DoesFieldRequireWrapping("Introduction")) { %>
    <p>
    <% } %>
        <sc:Text ID="txtIntroduction" Field="Introduction" runat="server" />
    <% if(DoesFieldRequireWrapping("Introduction")) { %>
    </p>
    <% } %>
    <% } %>
    <% if(DoesFieldRequireWrapping("Content")) { %>
    <p>
    <% } %>
    <sc:Text ID="txtContent" Field="Content" runat="server" />
    <% if(DoesFieldRequireWrapping("Content")) { %>
    </p>
    <% } %>
    <sc:Placeholder runat="server" key="phBlogBelowEntry" /> 
</div>