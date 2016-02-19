component {

	private string function renderInput( event, rc, prc, args={} ) {
		var controlName = args.name ?: "";
		return renderFormControl(
			  argumentCollection = arguments
			, name               = controlName
			, type               = "number"
			, context            = "formbuilder"
			, id                 = args.id ?: controlName
			, layout             = ""
			, required           = IsTrue( args.mandatory ?: "" )
			, class              = "number"
			, minValue           = args.minValue
			, maxValue           = args.maxValue
		);
	}

	private array function getValidationRules( event, rc, prc, args={} ) {
        var rules = [];
        rules.append({ fieldname=args.name, validator="number" });
        return rules;
    }
}