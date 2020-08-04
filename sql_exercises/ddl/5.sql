ALTER TABLE stars
ADD CHECK (spectral_type IN ('O', 'B', 'A', 'F', 'G', 'K', 'M')),
ALTER column spectral_type SET NOT NULL;

-- Further Exploration
-- You wouldn't be able to add the constraint when all data is not up to par
-- You have to update the data to meet the constraint you want to add
-- And then you can add the constraint

-- Good to know

