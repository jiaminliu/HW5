
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Dim shoe As String = e.Keys("StyleID").ToString
        Dim oldshoe As String = e.OldValues("Quantity").ToString()
        Dim newshoe As String = e.NewValues("Quantity").ToString()

        Response.Write("The quantity of shoestyle")
        Response.Write(shoe)
        Response.Write(" has been updated from ")
        Response.Write("<span class=deletedhighlight>")
        Response.Write(oldshoe)
        Response.Write("</span>")
        Response.Write(" to ")
        Response.Write("<span class=deletedhighlight>")
        Response.Write(newshoe)
        Response.Write("</span>")
        Response.Write(" in the database. ")



        Response.AddHeader("REFRESH", "3;URL=./RecordSale.aspx")

    End Sub
End Class
