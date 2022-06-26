
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            For i As Integer = 50 To 500 Step 50
                DropDownList.Items.Add(i)
            Next
        End If
    End Sub

    Private Function FutureValue(ByVal months As Integer, ByVal interestRate As Decimal, ByVal monthlyInvestment As Decimal) As Decimal
        For i As Integer = 1 To months
            FutureValue = (FutureValue + monthlyInvestment) * (1 + interestRate)
        Next
    End Function

    Protected Sub CalculateButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles CalculateButton.Click
        Dim months As Integer
        Dim interestRate, monthlyInvestment As Decimal
        Dim futureValue As Decimal

        If IsValid Then
            months = NumOfYearsTextBox.Text * 12
            interestRate = AnnIntRateTextBox.Text / 12 / 100
            monthlyInvestment = DropDownList.SelectedValue

            futureValue = Me.FutureValue(months, interestRate, monthlyInvestment)
            FutureValueLabel.Text = FormatCurrency(futureValue)
        End If
    End Sub

    Protected Sub ClearButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles ClearButton.Click
        DropDownList.Text = 50

        AnnIntRateTextBox.Text = ""
        NumOfYearsTextBox.Text = ""
        FutureValueLabel.Text = ""
    End Sub
End Class
