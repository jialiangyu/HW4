
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub PerformCalcButton_Click(sender As Object, e As EventArgs) Handles PerformCalcButton.Click
        Dim rate1 As Decimal = 0.18
        Dim rate2 As Decimal = 0.22

        ' Create variables to hold the values entered by the user
        Dim hourlywage As Decimal = tb_hourlywage.Text
        Dim workinghours As Decimal = tb_workinghours.Text
        Dim pretax As Decimal = tb_pretaxdeduction.Text
        Dim aftertax As Decimal = tb_aftertaxdeduction.Text

        Dim totalwage As Decimal
        totalwage = hourlywage * workinghours

        Dim grosspay As Decimal
        grosspay = totalwage - pretax

        Dim finalwage As Decimal
        If grosspay < 500 Then
            finalwage = grosspay * (1 - rate1) - aftertax

        Else
            finalwage = grosspay * (1 - rate2) - aftertax
        End If

        ' Display the results in the results Label Web Control
        lb_results.Text = "Your net pay for the week is $" & finalwage.ToString("#,####.##")

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        tb_aftertaxdeduction.Text = ""
        tb_hourlywage.Text = ""
        tb_pretaxdeduction.Text = ""
        tb_workinghours.Text = ""
        lb_results.Text = ""
    End Sub
End Class
