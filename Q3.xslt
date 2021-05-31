<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="Electronic_Medical_Records">
		<html>
		<h1 style="font-family:Arial;font-size:14pt; color:grey">
		Retrieving Employees with their medical history (Health profile)
		
			</h1>
			<body>
				<table border="1">
					<tr style="background-color:teal;color:white">
						<th>Employee Name</th>
						<th>Age</th>
						<th>If had Surgeries</th>
						<th>Is under Medication</th>
						<th>Food Allergie</th>
						<th>Animal Allergie</th>
						<th>Medicine Allergie</th>
						
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
			<xsl:value-of select="personal_data/current_age"/>
			</td>
			
			<xsl:if test="Medical_history/surgeries='true'">
				<td style="color:red">
					<xsl:value-of select="Medical_history/surgeries"/>
				</td>
			</xsl:if>
			
			<xsl:if test="Medical_history/surgeries='false'">
				<td style="color:black">
					<xsl:value-of select="Medical_history/surgeries"/>
				</td>
			</xsl:if>
			
			<xsl:if test="Medical_history/Currently_under_medication='true'">
				<td style="color:red">
					<xsl:value-of select="Medical_history/Currently_under_medication"/>
				</td>
			</xsl:if>
			
			<xsl:if test="Medical_history/Currently_under_medication='false'">
				<td style="color:black">
					<xsl:value-of select="Medical_history/Currently_under_medication"/>
				</td>
			</xsl:if>
			
			<xsl:if test="Medical_history/Allergies/Food='false'">
				<td style="color:black">
					<xsl:value-of select="Medical_history/Allergies/Food"/>
				</td>
			</xsl:if>
			
			<xsl:if test="Medical_history/Allergies/Food='true'">
				<td style="color:red">
					<xsl:value-of select="Medical_history/Allergies/Food"/>
				</td>
			</xsl:if>
			
			
			<xsl:if test="Medical_history/Allergies/Animal='true'">
				<td style="color:red">
					<xsl:value-of select="Medical_history/Allergies/Animal"/>
				</td>
			</xsl:if>
			
			<xsl:if test="Medical_history/Allergies/Animal='false'">
				<td style="color:black">
					<xsl:value-of select="Medical_history/Allergies/Animal"/>
				</td>
			</xsl:if>
			
			<xsl:if test="Medical_history/Allergies/Medication='false'">
				<td style="color:black">
					<xsl:value-of select="Medical_history/Allergies/Medication"/>
				</td>
			</xsl:if>
			
			<xsl:if test="Medical_history/Allergies/Medication='true'">
				<td style="color:red">
					<xsl:value-of select="Medical_history/Allergies/Medication"/>
				</td>
			</xsl:if>
		</tr>
	</xsl:template>
</xsl:stylesheet>