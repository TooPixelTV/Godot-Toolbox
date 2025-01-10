shader_type canvas_item;

uniform float pixel_size : hint_range(0.0, 1.0) = 0.0;

// La fonction "fragment" définit la couleur de chaque pixel
void fragment() {
    // Récupère les coordonnées UV (position dans le sprite, entre 0.0 et 1.0)
    vec2 uv = UV;
	
	//uv -= vec2(0.5);
    
    // Calcul de la taille de pixel en fonction de la variable pixel_size
    // Plus pixel_size est proche de 1.0, plus les pixels seront gros
    float pixel_scale = mix(1.0, 100.0, pixel_size);  // 100.0 est la taille maximale de pixelisation
    
    // Ajuste les coordonnées UV pour "découper" l'image en carrés de pixels
    uv = floor(uv * pixel_scale) / pixel_scale;
	
    // Ramène les coordonnées UV au point de départ
    //uv += vec2(0.5);
    // Applique la texture sur ces pixels carrés
    COLOR = texture(TEXTURE, uv);
}