using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class גלריה : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        .gallery {
        display: flex;
            flex - wrap: wrap;
        gap: 10px;
        }

.gallery img {
        width: 45 %;
        }
    }
}