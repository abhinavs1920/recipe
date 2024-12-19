-- Insert sample recipes
INSERT INTO recipes (
    title,
    description,
    image_url,
    ingredients,
    instructions,
    category,
    prep_time,
    cook_time,
    servings,
    nutrients,
    user_id
) VALUES
(
    'Classic Margherita Pizza',
    'A traditional Italian pizza with fresh basil, mozzarella, and tomatoes',
    'https://images.unsplash.com/photo-1574071318508-1cdbab80d002',
    '[
        "2 cups all-purpose flour",
        "1 cup warm water",
        "2 1/4 tsp active dry yeast",
        "1 tsp sugar",
        "1 tsp salt",
        "2 tbsp olive oil",
        "1 cup tomato sauce",
        "8 oz fresh mozzarella",
        "Fresh basil leaves",
        "2 tbsp extra virgin olive oil"
    ]'::jsonb,
    '[
        "Mix warm water with sugar and yeast. Let stand for 5 minutes until foamy.",
        "In a large bowl, combine flour and salt. Add yeast mixture and olive oil.",
        "Knead dough for 10 minutes until smooth. Let rise for 1 hour.",
        "Preheat oven to 450°F (230°C).",
        "Roll out dough and top with sauce, cheese, and basil.",
        "Bake for 15-20 minutes until crust is golden."
    ]'::jsonb,
    'Italian',
    20,
    20,
    4,
    '{
        "calories": 285,
        "protein": 12,
        "carbohydrates": 36,
        "fat": 11,
        "fiber": 2
    }'::jsonb,
    'YOUR_USER_ID'
),
(
    'Chicken Tikka Masala',
    'Grilled chicken in a rich and creamy tomato-based curry sauce',
    'https://images.unsplash.com/photo-1565557623262-b51c2513a641',
    '[
        "2 lbs chicken breast",
        "1 cup yogurt",
        "2 tbsp lemon juice",
        "2 tsp turmeric",
        "2 tsp garam masala",
        "2 tsp ground cumin",
        "2 cups tomato sauce",
        "1 cup heavy cream",
        "2 onions",
        "4 garlic cloves"
    ]'::jsonb,
    '[
        "Marinate chicken in yogurt and spices for 4 hours.",
        "Grill chicken until charred and cooked through.",
        "Sauté onions and garlic until golden.",
        "Add tomato sauce and cream. Simmer for 20 minutes.",
        "Add grilled chicken and simmer for 10 more minutes.",
        "Garnish with cilantro and serve with naan bread."
    ]'::jsonb,
    'Indian',
    30,
    40,
    6,
    '{
        "calories": 425,
        "protein": 32,
        "carbohydrates": 18,
        "fat": 28,
        "fiber": 3
    }'::jsonb,
    'YOUR_USER_ID'
),
(
    'Chocolate Chip Cookies',
    'Classic homemade cookies with gooey chocolate chips',
    'https://images.unsplash.com/photo-1499636136210-6f4ee915583e',
    '[
        "2 1/4 cups all-purpose flour",
        "1 cup butter, softened",
        "3/4 cup sugar",
        "3/4 cup brown sugar",
        "2 large eggs",
        "1 tsp vanilla extract",
        "1 tsp baking soda",
        "1/2 tsp salt",
        "2 cups chocolate chips"
    ]'::jsonb,
    '[
        "Preheat oven to 375°F (190°C).",
        "Cream together butter and sugars until fluffy.",
        "Beat in eggs and vanilla.",
        "Mix in dry ingredients until just combined.",
        "Stir in chocolate chips.",
        "Drop rounded tablespoons onto baking sheets.",
        "Bake for 9-11 minutes until golden brown."
    ]'::jsonb,
    'Dessert',
    15,
    25,
    24,
    '{
        "calories": 150,
        "protein": 2,
        "carbohydrates": 19,
        "fat": 8,
        "fiber": 1
    }'::jsonb,
    'YOUR_USER_ID'
),
(
    'Fresh Sushi Bowl',
    'Deconstructed sushi bowl with fresh fish and vegetables',
    'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351',
    '[
        "2 cups sushi rice",
        "1/2 lb sashimi-grade salmon",
        "1 avocado",
        "1 cucumber",
        "2 sheets nori",
        "2 tbsp sesame seeds",
        "Soy sauce",
        "Wasabi",
        "Pickled ginger"
    ]'::jsonb,
    '[
        "Cook sushi rice according to package instructions.",
        "Slice salmon, avocado, and cucumber.",
        "Crumble nori sheets.",
        "Arrange rice in bowls.",
        "Top with fish, vegetables, and nori.",
        "Garnish with sesame seeds.",
        "Serve with soy sauce, wasabi, and ginger."
    ]'::jsonb,
    'Japanese',
    20,
    30,
    2,
    '{
        "calories": 520,
        "protein": 24,
        "carbohydrates": 68,
        "fat": 22,
        "fiber": 6
    }'::jsonb,
    'YOUR_USER_ID'
),
(
    'Mediterranean Quinoa Salad',
    'Fresh and healthy salad with quinoa, vegetables, and feta cheese',
    'https://images.unsplash.com/photo-1512621776951-a57141f2eefd',
    '[
        "2 cups quinoa",
        "1 cucumber",
        "2 tomatoes",
        "1 red onion",
        "1 cup kalamata olives",
        "1 cup feta cheese",
        "1/4 cup olive oil",
        "2 lemons",
        "Fresh mint",
        "Fresh parsley"
    ]'::jsonb,
    '[
        "Cook quinoa according to package instructions.",
        "Chop vegetables and herbs.",
        "Whisk together olive oil and lemon juice.",
        "Combine quinoa, vegetables, and herbs.",
        "Add dressing and toss to combine.",
        "Top with feta cheese and serve."
    ]'::jsonb,
    'Salad',
    15,
    20,
    6,
    '{
        "calories": 320,
        "protein": 12,
        "carbohydrates": 42,
        "fat": 16,
        "fiber": 8
    }'::jsonb,
    'YOUR_USER_ID'
);

-- Insert sample bookmarks
INSERT INTO bookmarks (user_id, recipe_id)
SELECT 'YOUR_USER_ID', id
FROM recipes
WHERE title IN ('Chocolate Chip Cookies', 'Mediterranean Quinoa Salad')
AND user_id = 'YOUR_USER_ID';

-- Insert sample likes
INSERT INTO likes (user_id, recipe_id)
SELECT 'YOUR_USER_ID', id
FROM recipes
WHERE title IN ('Classic Margherita Pizza', 'Chicken Tikka Masala', 'Fresh Sushi Bowl')
AND user_id = 'YOUR_USER_ID'; 