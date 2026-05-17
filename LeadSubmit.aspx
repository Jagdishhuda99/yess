<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lead Submit</title>
</head>
<body>

<%
    if (Request.HttpMethod == "POST")
    {
        string name = Request.Form["name"];
        string mobile = Request.Form["mobile"];
        string city = Request.Form["city"];
        string insurance = Request.Form["insurance_type"];

        string agentId = Request.Form["AgentID"];
        string campaignId = Request.Form["CampaignID"];

        Response.Write("<h2>Lead Submitted Successfully</h2>");

        Response.Write("<p><b>Name:</b> " + name + "</p>");
        Response.Write("<p><b>Mobile:</b> " + mobile + "</p>");
        Response.Write("<p><b>City:</b> " + city + "</p>");
        Response.Write("<p><b>Insurance:</b> " + insurance + "</p>");

        Response.Write("<hr>");
        Response.Write("<p><b>Agent ID:</b> " + agentId + "</p>");
        Response.Write("<p><b>Campaign ID:</b> " + campaignId + "</p>");
    }
%>

<script runat="server">

    [System.Web.Services.WebMethod]
    public static object GetAgentProfile(string customerId)
    {
        return new
        {
            name = "अणदा राम",
            city = "बाड़मेर, राजस्थान",
            description = "हम आपके लिए सही पॉलिसी चुनने में मदद करते हैं।",
            business = "Yes Insurance",
            mobile = "7665548274",
            email = "support@yesinsurance.in",
            photo = "https://lh3.googleusercontent.com/d/1o4hCFv1cE16t7ap2ZhK6ujepD64x9kEz"
        };
    }

    [System.Web.Services.WebMethod]
    public static bool CheckLicense(string customerId)
    {
        return true;
    }

</script>

</body>
</html>