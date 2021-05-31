<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="Electronic_Medical_Records">
		<html>
			<h1 style="font-family:Arial;font-size:14pt; color:grey">
		Retrieving Employees key informations 
		
	</h1>
			<body>
				<table border="1">
					<tr style="background-color:teal;color:white">
						<th>Employee Name</th>
						<th>Employee ID</th>
						<th>Security Number</th>
						<th>Gender </th>
						<th>Age   </th>
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
			
				<td style="font-weight:bold">
					<xsl:value-of select="personal_data/firstname"/>
					<xsl:text> </xsl:text>
					<xsl:value-of select="personal_data/lastname"/>
				</td>
				<td >
					<xsl:value-of select="personal_data/ID"/>
				</td>
				<td >
					<xsl:value-of select="personal_data/Social_security_number"/>
				</td>
				<td >
					<xsl:value-of select="personal_data/Gender"/>
				</td>
				<td >
					<xsl:value-of select="personal_data/current_age"/>
				</td>
			
		</tr>

		
	</xsl:template>
	
	
</xsl:stylesheet>