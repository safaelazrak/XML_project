<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="Electronic_Medical_Records">
		<html>
			<h1 style="font-family:Arial;font-size:14pt; color:grey">
		Retrieving Employees with their claim informations
		
			</h1>
			<body>
				<table border="1">
					<tr style="background-color:teal;color:white">
						<th>Employee Name</th>
						<th>Amount Medical claim</th>
						<th>Amount Optical claim</th>
						<th>Amount Dental claim</th>
						<th>Total Amount Claim</th>
						<th>Number of Claims</th>
						
					</tr>
					<tr>
						<xsl:apply-templates select="Employee"/>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="Employee">
		<tr>
			<td>
				<xsl:value-of select="personal_data/firstname"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="personal_data/lastname"/>
			</td>
			<td>
				<xsl:value-of select="Claim_informations/Claim/Medical"/>
			</td>
			<td>
				<xsl:value-of select="Claim_informations/Claim/Optical"/>
			</td>
			<td>
				<xsl:value-of select="Claim_informations/Claim/Dental"/>
			</td>
			<td>
				<xsl:value-of select="Claim_informations/Claim/Dental + Claim_informations/Claim/Medical +Claim_informations/Claim/Optical "/>
			
			</td>
			<td>
				<xsl:value-of select="count(Claim_informations/Claim)"/>
			</td>
				
		</tr>
	</xsl:template>
</xsl:stylesheet>