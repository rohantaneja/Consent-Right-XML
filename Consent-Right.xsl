<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
	<html>
        <body>
		<div id="Banner">
		<xsl:for-each select="Dialogue/Banner">
			<h1><xsl:value-of select="Title"/></h1>
			<h3><xsl:value-of select="Heading"/></h3>
			<p><xsl:value-of select="Summary"/></p>
			<xsl:for-each select="Button">
			<button>
				<xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
				<xsl:value-of   select="."/>
			</button>
			</xsl:for-each>
		</xsl:for-each>
		</div>
		
		<div id="Settings">
			<xsl:for-each select="Dialogue/Settings">
			<xsl:for-each select="Button">
			<button>
				<xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
				<xsl:value-of   select="."/>
			</button>
			</xsl:for-each>
			<div id = 'ConsentOptions'>
				<p><xsl:value-of select="ConsentOptions/Summary"/></p>
				<table>
					<tr><td>Info</td><td>Toggle</td><td>Description</td><td>VendorList</td></tr>
					<xsl:for-each select="ConsentOptions/Purpose"><tr>
					<td><xsl:value-of   select="Info"/></td>
					<td><input type="checkbox">
						<label>
						<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
						<xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
						<xsl:value-of   select="Toggle"/>
						</label></input>
					</td>
					<td><xsl:value-of   select="Description"/></td>
					<td><xsl:value-of   select="VendorList"/></td></tr>
				</xsl:for-each>
				</table>
			</div>
			<div id = 'LegitimateInterestsOptions'>
				<p><xsl:value-of select="LegitimateInterestsOptions/Summary"/></p>
				<table>
					<tr><td>Info</td><td>Toggle</td><td>Description</td><td>VendorList</td></tr>
					<xsl:for-each select="LegitimateInterestsOptions/Purpose">
					<tr><td><xsl:value-of   select="Info"/></td>
					<td><input type="checkbox">
						<label>
						<xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
						<xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
						<xsl:value-of   select="Toggle"/>
						</label>
					</input></td>
					<td><xsl:value-of   select="Description"/></td>
					<td><xsl:value-of   select="VendorList"/></td></tr>
				</xsl:for-each>
				</table>
			</div>
			<div id = 'VendorOptions'>
				<table>
					<tr><td>Vendor Name</td><td>Toggle</td><td>Description</td></tr>
					<xsl:for-each select="VendorOptions/Vendor">
					<tr>
					<td><xsl:value-of   select="VendorName"/></td>
					<td><input type="checkbox">
						<label>
						<xsl:attribute name="status"><xsl:value-of select="@status"/></xsl:attribute>
						<xsl:value-of  select="Toggle"/>
						</label>
					</input></td>
					<td><xsl:value-of   select="Description"/></td></tr>
				</xsl:for-each>
				</table>
			</div>
		</xsl:for-each>
		</div>
        </body>
	</html>
</xsl:template>
</xsl:stylesheet>