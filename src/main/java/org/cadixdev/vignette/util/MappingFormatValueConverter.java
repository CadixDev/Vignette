/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

package org.cadixdev.vignette.util;

import joptsimple.ValueConverter;
import org.cadixdev.lorenz.io.MappingFormat;
import org.cadixdev.lorenz.io.MappingFormats;

/**
 * An implementation of {@link ValueConverter} for handling {@link MappingFormat}s.
 *
 * @author Jamie Mansfield
 * @since 0.1.0
 */
public final class MappingFormatValueConverter implements ValueConverter<MappingFormat> {

    public static final MappingFormatValueConverter INSTANCE = new MappingFormatValueConverter();

    @Override
    public MappingFormat convert(final String value) {
        return MappingFormats.byId(value);
    }

    @Override
    public Class<MappingFormat> valueType() {
        return MappingFormat.class;
    }

    @Override
    public String valuePattern() {
        return null;
    }

}
