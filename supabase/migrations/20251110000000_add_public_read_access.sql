/*
  # Add Public Read Access for View-Only Mode

  1. Changes
    - Add public SELECT policies for machines table
    - Add public SELECT policies for departments table
    - Add public SELECT policies for status_types table
    - Add public SELECT policies for status_history table
    - Allow unauthenticated users to view all data but not modify anything

  2. Security
    - Only SELECT operations are allowed for anonymous users
    - All write operations (INSERT, UPDATE, DELETE) remain restricted to authenticated users
    - Maintains existing authenticated user policies
*/

-- Add public read access to machines
CREATE POLICY "Anyone can view machines"
  ON machines FOR SELECT
  TO anon
  USING (true);

-- Add public read access to departments
CREATE POLICY "Anyone can view departments"
  ON departments FOR SELECT
  TO anon
  USING (true);

-- Add public read access to status_types
CREATE POLICY "Anyone can view status types"
  ON status_types FOR SELECT
  TO anon
  USING (true);

-- Add public read access to status_history
CREATE POLICY "Anyone can view status history"
  ON status_history FOR SELECT
  TO anon
  USING (true);
