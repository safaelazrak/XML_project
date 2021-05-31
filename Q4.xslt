<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="Electronic_Medical_Records">
		<html>
		<h1 style="font-family:Arial;font-size:14pt; color:grey">
		Retrieving Employees with their Health insurance informations
		
			</h1>
			<body>
				<table border="1">
					<tr style="background-color:teal;color:white">
						<th>Employee ID</th>
						<th>Employee Name</th>
						<th>Insurance type</th>
						<th>Insurance Expiration date</th>
						<th>Paying on time</th>
					</tr>
					<tr>
						<xsl:apply-templates select="Employee">
						<xsl:sort select="Insurance_informations/expiration_date"/>
						</xsl:apply-templates>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="Employee" >
		<tr>
			<td>
				<xsl:value-of select="personal_data/ID"/>
				
			</td>
			<td>
				<xsl:value-of select="personal_data/firstname"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="personal_data/lastname"/>
			</td>
			<xsl:if test="Insurance_informations/Insurance_type='Normal'">
			<td style="color:black">		
				<xsl:value-of select="Insurance_informations/Insurance_type" />
				
			</td>
			</xsl:if>
			<xsl:if test="Insurance_informations/Insurance_type='Premium'">
				<td style="font-weight:bold">
					<xsl:value-of select="Insurance_informations/Insurance_type" />

				</td>
			</xsl:if>
			
			<td>
				<xsl:value-of select="Insurance_informations/expiration_date"/>
			</td>
			
		<xsl:if test="Insurance_informations/Paid_on_time='true'">
			<td style="color:black">		
				<xsl:value-of select="Insurance_informations/Paid_on_time" />
				
			</td>
			</xsl:if>
			<xsl:if test="Insurance_informations/Paid_on_time='false'">
				<td style="color:red">
					<xsl:value-of select="Insurance_informations/Paid_on_time" />

				</td>
			</xsl:if>
			
		</tr>
	</xsl:template>
</xsl:stylesheet>