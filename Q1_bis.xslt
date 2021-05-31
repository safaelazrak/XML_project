<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<h1 style="font-family:Arial;font-size:14pt; color:grey">
		Retrieving Employees key informations 
		(Color filter : Gender)
	</h1>

	<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
		<xsl:for-each select="Electronic_Medical_Records/Employee">
			<xsl:if test="personal_data/Gender='Male'">
				<div style="background-color:teal;color:white;padding:4px">
					<span >
						ID : <xsl:value-of select="personal_data/ID"/> - 
					</span>
					<span style="font-weight:bold">
						<xsl:value-of select="personal_data/firstname"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="personal_data/lastname"/>
					</span>

					
				</div>
				<div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
					<p>

						<span style="font-style:italic">
							<xsl:value-of select="personal_data/current_age"/> years old
						</span>
					</p>
					<p>

						<span style="font-style:italic">
							Social Security number : <xsl:value-of select="personal_data/Social_security_number"/>
						</span>
					</p>
					<p>

						<span style="font-style:italic">
							Health insurance type : <xsl:value-of select="Insurance_informations/Insurance_type"/>
						</span>
					</p>
				</div>
			</xsl:if>
			<xsl:if test="personal_data/Gender='Female'">
				<div style="background-color:pink;color:white;padding:4px">
					<span >
						ID : <xsl:value-of select="personal_data/ID"/> - 
					</span>
					<span style="font-weight:bold">
						<xsl:value-of select="personal_data/firstname"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="personal_data/lastname"/>
					</span>
					
				</div>
				<div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
					<p>

						<span style="font-style:italic">
							<xsl:value-of select="personal_data/current_age"/> years old
						</span>
					</p>
					<p>

						<span style="font-style:italic">
							Social Security number : <xsl:value-of select="personal_data/Social_security_number"/>
						</span>
					</p>
					<p>

						<span style="font-style:italic">
							Health insurance type : <xsl:value-of select="Insurance_informations/Insurance_type"/>
						</span>
					</p>
				</div>
			</xsl:if>
		</xsl:for-each>
	</body>
</html>
