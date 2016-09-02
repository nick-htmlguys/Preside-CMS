/**
 * Expression handler for "Current page has/does not have a teaser"
 *
 */
component {

	/**
	 * @expression true
	 * @expressionContexts webrequest,page
	 */
	private boolean function webRequest(
		boolean _posesses = true
	) {
		var hasTeaser = Len( Trim( payload.page.teaser ?: "" ) );

		return _posesses ? hasTeaser : !hasTeaser;
	}

}