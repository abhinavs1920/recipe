-- Create recipes table
CREATE TABLE recipes (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    image_url TEXT,
    ingredients JSONB NOT NULL,
    instructions JSONB NOT NULL,
    category TEXT NOT NULL,
    prep_time INTEGER NOT NULL,
    cook_time INTEGER NOT NULL,
    servings INTEGER NOT NULL,
    nutrients JSONB,
    user_id UUID NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW())
);

-- Create bookmarks table
CREATE TABLE bookmarks (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL,
    recipe_id UUID NOT NULL REFERENCES recipes(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()),
    UNIQUE(user_id, recipe_id)
);

-- Create likes table
CREATE TABLE likes (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL,
    recipe_id UUID NOT NULL REFERENCES recipes(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()),
    UNIQUE(user_id, recipe_id)
);

-- Create RLS policies
ALTER TABLE recipes ENABLE ROW LEVEL SECURITY;
ALTER TABLE bookmarks ENABLE ROW LEVEL SECURITY;
ALTER TABLE likes ENABLE ROW LEVEL SECURITY;

-- Recipes policies
CREATE POLICY "Recipes are viewable by everyone" 
ON recipes FOR SELECT 
TO authenticated 
USING (true);

CREATE POLICY "Users can insert their own recipes" 
ON recipes FOR INSERT 
TO authenticated 
WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own recipes" 
ON recipes FOR UPDATE 
TO authenticated 
USING (auth.uid() = user_id);

CREATE POLICY "Users can delete their own recipes" 
ON recipes FOR DELETE 
TO authenticated 
USING (auth.uid() = user_id);

-- Bookmarks policies
CREATE POLICY "Users can view their own bookmarks" 
ON bookmarks FOR SELECT 
TO authenticated 
USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own bookmarks" 
ON bookmarks FOR INSERT 
TO authenticated 
WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete their own bookmarks" 
ON bookmarks FOR DELETE 
TO authenticated 
USING (auth.uid() = user_id);

-- Likes policies
CREATE POLICY "Users can view all likes" 
ON likes FOR SELECT 
TO authenticated 
USING (true);

CREATE POLICY "Users can insert their own likes" 
ON likes FOR INSERT 
TO authenticated 
WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete their own likes" 
ON likes FOR DELETE 
TO authenticated 
USING (auth.uid() = user_id);

-- Create indexes
CREATE INDEX recipes_user_id_idx ON recipes(user_id);
CREATE INDEX recipes_category_idx ON recipes(category);
CREATE INDEX bookmarks_user_id_idx ON bookmarks(user_id);
CREATE INDEX bookmarks_recipe_id_idx ON bookmarks(recipe_id);
CREATE INDEX likes_user_id_idx ON likes(user_id);
CREATE INDEX likes_recipe_id_idx ON likes(recipe_id); 