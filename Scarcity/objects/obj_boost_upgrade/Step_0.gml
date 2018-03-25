if !triggered_ {
	if float_up_ {
		y -= float_grad_;
		if (y <= y_anchor_-5) {
			float_up_ = false;
		}
	}
	if !float_up_ {
		y += float_grad_;
		if (y >= y_anchor_+5) {
			float_up_ = true;
		}
	}
}
