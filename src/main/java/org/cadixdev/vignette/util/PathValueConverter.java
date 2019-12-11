/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

package org.cadixdev.vignette.util;

import joptsimple.ValueConverter;

import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * An implementation of {@link ValueConverter} for handling {@link Path}s.
 *
 * @author Jamie Mansfield
 * @since 0.1.0
 */
public final class PathValueConverter implements ValueConverter<Path> {

    public static final PathValueConverter INSTANCE = new PathValueConverter();

    @Override
    public Path convert(final String value) {
        return Paths.get(value);
    }

    @Override
    public Class<Path> valueType() {
        return Path.class;
    }

    @Override
    public String valuePattern() {
        return null;
    }

}
