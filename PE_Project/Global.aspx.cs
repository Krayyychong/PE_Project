﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public class Global : HttpApplication
{
    void Application_Start(object sender, EventArgs e)
    {
        // Register jQuery
        ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
        {
            Path = "~/Scripts/jquery-3.6.0.min.js",
            DebugPath = "~/Scripts/jquery-3.6.0.js",
            CdnPath = "https://code.jquery.com/jquery-3.6.0.min.js",
            CdnDebugPath = "https://code.jquery.com/jquery-3.6.0.js"
        });
    }
}

