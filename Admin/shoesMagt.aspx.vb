
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delshoe As String = e.Values("Category").ToString()

        Response.Write("The record of ")
        Response.Write("<span class=deletedhighlight>")
        Response.Write(delshoe)
        Response.Write("</span> shoe has been deleted from the database.")
        Response.AddHeader("REFRESH", "3;URL=./shoesMagt.aspx")

        'Response.Write("The recod has been deleted from the database.")


    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("./ShoesMagt.aspx")
    End Sub
End Class
