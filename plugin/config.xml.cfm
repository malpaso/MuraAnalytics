<cfoutput>
	<plugin>
		<name>MuraAnalytics</name>
		<package>MuraAnalytics</package>
		<directoryFormat>packageOnly</directoryFormat>
		<loadPriority>5</loadPriority>
		<version>1.0.1</version>
		<provider>Medkore</provider>
		<providerURL>http://www.medkore.com</providerURL>
		<category>Utility</category>

		<!--
				Plugin Settings :
				The settings contain individual settings that the plugin
				requires to function.
		-->
		<settings>
			<!--
			<setting
				name="yourNameAttribute"
				label="Your Label"
				hint="Your hint"
				type="text|radioGroup|textArea|select|multiSelectBox"
				required="false|true"
				validation="none|email|date|numeric|regex"
				regex="your javascript regex goes here (if validation=regex)"
				message="Your message if validation fails"
				defaultvalue=""
				optionlist="1^2^3"
				optionlabellist="One^Two^Three" />
			-->
			<setting>
				<name>GoogleAnalyticsGATrackingID</name>
				<label>Google Analytics Tracking ID (ga.js)</label>
				<hint></hint>
				<type>TextBox</type>
				<required>false</required>
				<validation>regex</validation>
				<regex>/(?i)ua-\d+-\w\d+/</regex>
				<message>Invalid ID</message>
				<defaultvalue></defaultvalue>
			</setting>
			<setting>
				<name>GoogleAnalyticsAJTrackingID</name>
				<label>Google Analytics Tracking ID (analytics.js)</label>
				<hint></hint>
				<type>TextBox</type>
				<required>false</required>
				<validation>regex</validation>
				<regex>/(?i)ua-\d+-\w\d+/</regex>
				<message>Invalid ID</message>
				<defaultvalue></defaultvalue>
			</setting>
			<setting>
				<name>GoogleAnalyticsAJDisplayFeatures</name>
				<label>Google Analytics (analytics.js) - Display Features</label>
				<hint></hint>
				<type>radioGroup</type>
				<required>false</required>
				<validation>none</validation>
				<regex></regex>
				<message></message>
				<defaultvalue>0</defaultvalue>
				<optionlist>1^0</optionlist>
				<optionlabellist>Yes^No</optionlabellist>
			</setting>
		</settings>
		<eventHandlers>
			<eventHandler
				event="onApplicationLoad"
				component="eventHandler"
				persist="false" />
		</eventHandlers>

		<!--
			Display Objects :
			Allows developers to provide widgets that end users can apply to a
			content node's display region(s) when editing a page. They'll be
			listed under the Layout & Objects tab. The 'persist' attribute
			for CFC-based objects determine whether they are cached or instantiated
			on a per-request basis.
		-->
		<displayobjects location="global">
		</displayobjects>
	</plugin>
</cfoutput>
