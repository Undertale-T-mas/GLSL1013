#define MARCH_STEP 200
#define MAX_ITER 15
#define SURFACE_SIZE .01
#define FAR_DIST 100.
#define STEP_SCALE .8

/*
因为没人陪我，有感而发胡乱写的，写的烂别骂（
在https://www.sojson.com/encrypt.html 中解密，
密码是着色器渲染出来之后最顶上没有星星地方的像素，
取颜色的十六进制，格式样例： #013a4b
*/
/*
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
1pGYHMm9FJfhy9Zp168gXg==
*/

mat2 rot(float a){
    return mat2(cos(a), sin(a), -sin(a), cos(a));
}

float waterWave(vec2 uv){
	float time = iTime * .5+23.0;
    vec2 p = uv * 3. + vec2(2.8, 3.6) * time;
	vec2 i = vec2(p);
	float c = 1.0; 

	for (float n = 1.; n <= 3.; n++) 
	{
		float t = time * (1.0 - (3.5 / (n+1.)));
		i = p + vec2(1.156 + n*.3 + uv.x * .1, 1.345 - uv.y * .2) 
        * vec2(cos(t - i.x) + sin(t + i.y), sin(t - i.y) + cos(t + i.x));
		c += length(vec2(sin(i.x+t),cos(i.y+t)));
	}
	c /= 5.; 
    c = c*c;
    return c;
}
vec3 water(vec2 uv){
	float time = iTime * .5+23.0;
    vec2 p = uv * 2. + vec2(.8, .6) * time;
	vec2 i = vec2(p);
	float c = 1.0;
	float inten = 1.8;

	for (int n = 1; n <= MAX_ITER; n++) 
	{
		float t = time * (1.0 - (3.5 / float(n+1)));
		i = p + vec2(cos(t - i.x) + sin(t + i.y), sin(t - i.y) + cos(t + i.x));
		c += 1.0/length(vec2(1./sin(i.x+t),1./cos(i.y+t))*inten);
	}
	c /= 8.;
	c = max(0., 1.17-pow(c, 1.4));
	vec3 colour = vec3(pow(abs(c), 8.0));
    colour = clamp(colour + vec3(0.0, 0.35, 0.5), 0.0, 1.0);
  
    return colour * min(1., 3. - uv.y * .02);
}

float sdPlane(vec3 pos){
    return pos.y + waterWave(pos.xz) * .065;
}
vec2 mf(vec2 m1, vec2 m2){
    if(m1.y > m2.y) return m2;
    return m1;
}

vec2 getPosInfo(vec3 pos){
    vec4 b = vec4(0., 0.5, 5., 1.5);
    vec2 dist1 = vec2(1., length(pos - b.xyz) - b.w);
    vec2 dist2 = vec2(2., sdPlane(pos));
    return mf(dist1, dist2);
}
float getDist(vec3 pos){
    return getPosInfo(pos).y;
}
float getMt(vec3 pos){
    vec2 t = getPosInfo(pos);
    return t.x * step(t.y, 0.1);
}
 
vec3 rayMarch(vec3 pos, vec3 dir){ 
    float p = .0, d;
    vec3 cur;
    for(int i = 0; i < MARCH_STEP; i++){ 
        cur = pos + dir * p;
        d = getDist(cur) * STEP_SCALE;
        p += d;
        if(abs(d) < SURFACE_SIZE || p >= FAR_DIST) break;
    }
    return vec3(p, getMt(cur), d);
}


vec3 getNormal(vec3 pos){
    vec2 t = vec2(.01, .0);
    float d = getDist(pos);
    return normalize(vec3(
        getDist(pos + t.xyy) - d,
        getDist(pos + t.yxy) - d,
        getDist(pos + t.yyx) - d
    ));
}

float light(vec3 pos){ 
    vec3 norm = getNormal(pos);
    vec3 lightPos = vec3(1., 2., 1.);
    float l1 = dot(norm, normalize(lightPos - pos)) * .8 + .2;
    return min(l1, 1.3 - pos.z * .05);
}
vec3 reflectZ(vec3 n, vec3 l){
    l = -l;
    n = normalize(n);
    vec3 p = dot(l, n) * n;
    return (p - l) * 1. + p;
}

vec3 glass(vec3 pos, vec3 dir){ 
    vec3 n = getNormal(pos); 
    pos += n * .1; 
    vec3 r = reflectZ(n, dir); 
    vec3 u = rayMarch(pos, r);  
    vec3 cur = pos + u.x * r;
    u.y = getMt(cur);
      
    if(u.y == 2.) return 
        vec3(.15) + 
        water(cur.xz) * light(cur) 
           * .85 * clamp(1.25 - (abs(cur.x) + pow(abs(cur.z), 2.)) *.05, 0., 1.);
    return vec3(.15);
}

#define ss(a, b, c) smoothstep(a, b, c)

float rand(float v){
    return fract(sin(v * 33.535 + v * v + 35.5325));
}

float rand2(vec2 pos){ 
    return fract(rand(dot(pos, vec2(39.3, 32.2))) + rand(dot(pos, vec2(-34.535, 123.535))));
}
 
vec3 layer(vec2 uv){
    return vec3(pow(rand2(uv), 200.));
}

vec3 background(vec2 uv){
    uv *= 2.;
    if(uv.y > .9) return vec3(.1, .0, .2);
    return vec3(.1, .0, .2) + layer(uv*2.5) * 1.;
}

vec3 render(vec2 uv, vec3 pos, vec3 dir){ 
    vec3 m = rayMarch(pos, dir);  
    vec3 cur = pos + m.x * dir; 
    if(abs(m.z) < SURFACE_SIZE*5.){ 
        vec3 col = vec3(1.); 
        if(m.y == 1.) col = glass(cur, dir);
        else if(m.y == 2.){ 
            float l = light(cur);
            col = l * water(cur.xz)*vec3(1.) ;
        }
        return col;
    }
    return background(uv) * min(1., uv.y * 2. + .4);
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{ 
    vec2 uv = (fragCoord-.5*iResolution.xy)/iResolution.y;
    vec3 ro = vec3(0., 1., 0.);  
    float zoom = 1.0;
    vec3 rd = normalize(vec3(uv.x, uv.y, zoom));
    
    vec2 mouse = (iMouse.xy - .5*iResolution.xy)/iResolution.xy;
    vec3 col = render(uv, ro, rd);

    // Output to screen
    fragColor = vec4(col, 1.0);
}