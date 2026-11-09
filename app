<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" content="Lysergia is a 2D cyberpunk fantasy adventure with three levels, two playable warriors, and a mysterious multiverse rift.">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lysergia — Rift of Realities</title>
<style>
:root{--bg:#060914;--panel:#0b1427;--line:#1b4261;--cyan:#54e8ff;--pink:#ff5ca8;--green:#8dff67;--gold:#ffd36a;--text:#eef8ff;--muted:#a1bbd2}
*{box-sizing:border-box}html,body{margin:0;min-height:100%;background:radial-gradient(ellipse at 50% -20%,#152342 0%,#070b18 55%,#03050b 100%);color:var(--text);font-family:ui-monospace,SFMono-Regular,Consolas,monospace}body{display:flex;justify-content:center;padding:16px}.shell{width:min(1200px,100%)}.topline{display:flex;justify-content:space-between;gap:12px;align-items:center;margin:0 0 10px}.brand{font-size:clamp(20px,3vw,31px);font-weight:1000;letter-spacing:4px;color:#fff;text-shadow:3px 3px 0 #812f88,0 0 22px #2edbf0}.brand span{color:var(--cyan)}.tag{color:#92aac7;font-size:11px;letter-spacing:2px;text-align:right}.cabinet{position:relative;border:2px solid #24516e;box-shadow:0 0 0 4px #080e1a,0 0 35px #18b8e533;background:#030611;overflow:hidden}.game-wrap{position:relative;width:100%;aspect-ratio:16/9;min-height:250px;max-height:76vh}canvas{width:100%;height:100%;display:block;image-rendering:auto;background:#070b19}.overlay{position:absolute;inset:0;display:flex;align-items:center;justify-content:center;padding:clamp(10px,3vw,28px);background:linear-gradient(90deg,#040818ee,#071222d9,#040818ee);z-index:4;overflow:auto}.overlay.hidden{display:none}.panel{width:min(790px,100%);max-height:100%;overflow:auto;padding:clamp(14px,3vw,28px);border:1px solid #28718a;background:linear-gradient(145deg,#0a182dF5,#080c1bF5);box-shadow:0 0 0 4px #06101f,0 0 32px #1ddbf522}.eyebrow{color:var(--pink);font-weight:900;letter-spacing:3px;font-size:11px;margin-bottom:9px}.panel h1{font-size:clamp(24px,4.4vw,48px);line-height:1;margin:5px 0 13px;letter-spacing:2px}.panel h1 .cyan{color:var(--cyan)}.panel p{color:#c2d5e7;line-height:1.55;font-size:13px}.row{display:flex;gap:12px;flex-wrap:wrap}.card{flex:1 1 230px;border:1px solid #27536b;background:#0a1223;padding:14px;min-width:0}.card h3{margin:0 0 8px;color:var(--cyan);font-size:17px}.card p{font-size:12px;margin:5px 0 10px}.stat{font-size:11px;color:#8ec9dc}.actions{display:flex;flex-wrap:wrap;gap:9px;margin-top:16px}.btn{font:inherit;font-weight:900;letter-spacing:1px;border:1px solid #3b90aa;background:#0b263b;color:#ecfbff;padding:12px 16px;cursor:pointer;transition:.12s;box-shadow:3px 3px 0 #02050c;text-transform:uppercase;font-size:12px}.btn:hover,.btn:focus{transform:translate(-1px,-1px);background:#11405a;outline:1px solid var(--cyan)}.btn.primary{border-color:#83f6ff;background:#0d5a6b;color:white}.btn.pink{border-color:#c84e92;background:#4e163c}.btn:disabled{opacity:.4;cursor:not-allowed;transform:none}.mini{font-size:11px;color:#92aac7}.controls{display:grid;grid-template-columns:repeat(3,minmax(0,1fr));gap:8px;margin-top:15px}.control{padding:9px;border:1px solid #1c3b54;background:#080f1d;color:#b6cce0;font-size:11px}.key{display:inline-block;color:#fff;background:#233a52;border:1px solid #48728b;padding:2px 5px;margin-right:4px;min-width:20px;text-align:center}.foot{display:flex;justify-content:space-between;flex-wrap:wrap;gap:8px;padding:9px 12px;background:#050a14;border:1px solid #1b3a53;border-top:0;color:#7fa2bd;font-size:10px;letter-spacing:1px}.help{margin-top:10px;color:#7797b3;font-size:10px;line-height:1.5}.ending-quote{border-left:3px solid var(--pink);padding:9px 14px;color:#f3dbe8;background:#150e21;margin:16px 0;font-style:italic}
@media(max-width:620px){body{padding:6px}.topline{align-items:flex-start}.tag{max-width:115px;font-size:8px}.game-wrap{min-height:260px;aspect-ratio:4/3}.controls{grid-template-columns:repeat(2,minmax(0,1fr))}.panel h1{font-size:25px}.btn{padding:10px;font-size:10px}}
</style>
</head>
<body>
<div class="shell">
  <div class="topline"><div class="brand">LYSER<span>GIA</span></div><div class="tag">RIFT OF REALITIES<br>PLAYABLE WEB EDITION</div></div>
  <div class="cabinet"><div class="game-wrap">
    <canvas id="game" width="960" height="540" aria-label="Lysergia video game"></canvas>
    <section class="overlay" id="menu"><div class="panel">
      <div class="eyebrow">/// INTERDIMENSIONAL SIGNAL DETECTED</div>
      <h1>THE CITY THAT<br><span class="cyan">DOESN’T EXIST</span></h1>
      <p>A rupture tore two travelers from their universes and cast them into <b>Mescaline</b>, a city where cyberpunk towers and medieval ruins occupy the same streets. Fight your way through its creatures and discover what waits beyond the rift.</p>
      <div class="row">
        <div class="card"><h3>01 / ONÍRICO</h3><p>A carefree cactus warrior. Fires green energy bolts and unleashes spiked shockwaves.</p><div class="stat">RANGED COMBAT · AREA ATTACK</div></div>
        <div class="card"><h3>02 / HIDEYOSHI</h3><p>A calm, clever polar-bear samurai. His twin katanas and a towering wave keep enemies at bay.</p><div class="stat">MELEE COMBAT · WATER WAVE</div></div>
      </div>
      <div class="actions"><button class="btn primary" id="start">START ADVENTURE ▶</button><button class="btn" id="how">CONTROLS</button></div>
      <div class="help" id="storyhint">3 LEVELS · 2 TRAVELERS · 1 REALITY IN DOUBT</div>
    </div></section>
    <section class="overlay hidden" id="select"><div class="panel">
      <div class="eyebrow">/// TRAVELER IDENTIFICATION</div><h1>CHOOSE YOUR <span class="cyan">WARRIOR</span></h1><p>Both warriors can complete the adventure. Your choice changes combat style and transformation effects.</p>
      <div class="row"><div class="card"><h3>🌵 ONÍRICO</h3><p>Green lasers, spiked shockwave, metal armor and a radiant energy aura.</p><div class="stat">SPECIAL: THORN SHOCKWAVE</div><div class="actions"><button class="btn primary" id="pickOnirico">PLAY AS ONÍRICO</button></div></div><div class="card"><h3>❄ HIDEYOSHI</h3><p>Katana strikes, a crashing water wave, samurai armor and swirling currents.</p><div class="stat">SPECIAL: GIANT TIDAL WAVE</div><div class="actions"><button class="btn primary" id="pickHideyoshi">PLAY AS HIDEYOSHI</button></div></div></div>
      <div class="actions"><button class="btn" id="backMenu">BACK</button></div>
    </div></section>
    <section class="overlay hidden" id="pause"><div class="panel"><div class="eyebrow">/// TRANSMISSION PAUSED</div><h1>PAUSED</h1><p>Mescaline will be waiting when you return.</p><div class="actions"><button class="btn primary" id="resume">RESUME</button><button class="btn" id="restartPause">RESTART LEVEL</button><button class="btn pink" id="quitPause">MAIN MENU</button></div></div></section>
    <section class="overlay hidden" id="gameover"><div class="panel"><div class="eyebrow">/// SIGNAL LOST</div><h1>YOU HAVE BEEN <span style="color:var(--pink)">DEFEATED</span></h1><p>Mescaline is not finished with you. Regroup and try again.</p><div class="actions"><button class="btn primary" id="retry">RETRY LEVEL</button><button class="btn" id="quitOver">MAIN MENU</button></div></div></section>
    <section class="overlay hidden" id="ending"><div class="panel"><div class="eyebrow">/// RIFT SEALED · OR IS IT?</div><h1 id="endingTitle">YOU CROSSED <span class="cyan">THE RIFT</span></h1><p id="endingBody">The city dissolves into shards of light.</p><div class="ending-quote" id="endingQuote">“Wake up…”</div><p>Mescaline is gone. Or perhaps it was never there. The final image hangs between two possibilities: an impossible adventure, or the memory of a dream that felt too real.</p><div class="actions"><button class="btn primary" id="playAgain">PLAY AGAIN</button><button class="btn" id="mainEnding">MAIN MENU</button></div></div></section>
  </div></div>
  <div class="foot"><span>WASD / ARROWS · JUMP · COMBAT</span><span>ESC: PAUSE · R: RESTART</span><span>BUILT FOR BROWSER · NO INSTALLATION</span></div>
  <div class="help">Tip: defeat every enemy to unlock each area’s exit. This game runs offline and requires no additional libraries.</div>
</div>
<script>
(()=>{
'use strict';
const canvas=document.getElementById('game'),ctx=canvas.getContext('2d');
// Render at 1.5x resolution while keeping gameplay coordinates consistent.
const RENDER_SCALE=1.5;canvas.width=1440;canvas.height=810;ctx.scale(RENDER_SCALE,RENDER_SCALE);ctx.imageSmoothingEnabled=false;
const W=960,H=540, GROUND=440;
const $=id=>document.getElementById(id);
const overlays=['menu','select','pause','gameover','ending'];
function showOverlay(id){overlays.forEach(o=>$(o).classList.toggle('hidden',o!==id));}
let screen='menu', heroType='onirico', hero=null, levelIndex=0, camera=0, lastTime=0, gameTime=0, shake=0, flash=0, keys=new Set(), just=new Set(), particles=[], projectiles=[], enemies=[], platforms=[], hazards=[], pickups=[], levelW=2600, cleared=0, gateOpen=false, levelRestartData=null, message='', messageUntil=0, score=0;
const levels=[
 {name:'MESCA CITY',sub:'NEON STREETS',width:2500,bg:0,accent:'#3de8f5',description:'The streets breathe neon light.',enemyPlan:[['eye',520],['robot',790],['eye',1060],['robot',1320],['eye',1640],['robot',1920]],platforms:[[360,360,150],[650,320,130],[960,365,160],[1220,300,130],[1540,350,160],[1810,305,150]],hazards:[[900,425,64],[1460,425,72],[2110,425,60]]},
 {name:'THE RUSTED KINGDOM',sub:'MEDIEVAL FRONTIER',width:2850,bg:1,accent:'#ffb454',description:'Ancient towers wrapped in living circuitry.',enemyPlan:[['robot',440],['eye',710],['robot',930],['eye',1160],['robot',1410],['eye',1660],['robot',1910],['eye',2200]],platforms:[[300,350,155],[580,300,145],[850,355,130],[1120,285,145],[1390,335,170],[1700,285,155],[1990,340,145],[2260,290,150]],hazards:[[760,425,64],[1300,425,64],[1850,425,64],[2170,425,64]]},
 {name:'THE RIFT',sub:'MULTIVERSE EDGE',width:3100,bg:2,accent:'#b69bff',description:'Fragments of worlds that should never touch.',enemyPlan:[['eye',420],['robot',650],['eye',890],['robot',1110],['eye',1360],['robot',1590],['eye',1840],['robot',2090],['eye',2320],['robot',2550]],platforms:[[300,350,150],[560,300,140],[820,360,150],[1080,295,150],[1350,340,155],[1620,285,155],[1900,340,150],[2180,285,150],[2450,335,150]],hazards:[[730,425,72],[1260,425,70],[1780,425,74],[2290,425,70],[2670,425,64]]}
];
const clamp=(v,a,b)=>Math.max(a,Math.min(b,v));
function rect(x,y,w,h,c){ctx.fillStyle=c;ctx.fillRect(Math.round(x),Math.round(y),Math.round(w),Math.round(h));}
function text(t,x,y,size=14,color='#effaff',align='left'){ctx.font=`bold ${size}px monospace`;ctx.textAlign=align;ctx.fillStyle=color;ctx.fillText(t,Math.round(x),Math.round(y));ctx.textAlign='left';}
function line(x1,y1,x2,y2,c,w=1){ctx.strokeStyle=c;ctx.lineWidth=w;ctx.beginPath();ctx.moveTo(x1,y1);ctx.lineTo(x2,y2);ctx.stroke();}
function box(x,y,w,h,fill,stroke){rect(x,y,w,h,fill);if(stroke){ctx.strokeStyle=stroke;ctx.lineWidth=2;ctx.strokeRect(Math.round(x)+1,Math.round(y)+1,Math.round(w)-2,Math.round(h)-2);}}
function burst(x,y,color,n=12,power=160){for(let i=0;i<n;i++){let a=Math.random()*Math.PI*2,s=35+Math.random()*power;particles.push({x,y,vx:Math.cos(a)*s,vy:Math.sin(a)*s,life:.35+Math.random()*.5,max:.85,size:2+Math.random()*4,color,grav:100});}}
function say(s,d=2){message=s;messageUntil=gameTime+d;}
function createHero(type){return {type,x:80,y:GROUND-56,vx:0,vy:0,w:36,h:56,face:1,onGround:false,crouch:false,attackCd:0,specialCd:0,transform:0,transformCd:0,armor:false,armorUntil:0,hp:100,maxHp:100,invuln:0,anim:0,move:'idle',hurt:0,kickCd:0,attackFrame:0,dead:false};}
function startGame(type){heroType=type;hero=createHero(type);score=0;levelIndex=0;gameTime=0;loadLevel(0);screen='playing';showOverlay('none');}
function loadLevel(i){levelIndex=i;const l=levels[i];levelW=l.width;camera=0;particles=[];projectiles=[];enemies=[];platforms=l.platforms.map(p=>({x:p[0],y:p[1],w:p[2],h:14}));hazards=l.hazards.map(p=>({x:p[0],y:p[1],w:p[2],h:15}));l.enemyPlan.forEach((e,j)=>enemies.push(createEnemy(e[0],e[1],GROUND-34,j)));gateOpen=false;cleared=0;hero.x=75;hero.y=GROUND-hero.h;hero.vx=hero.vy=0;hero.hp=Math.min(hero.maxHp,hero.hp+18);hero.invuln=1.1;hero.attackCd=hero.specialCd=hero.kickCd=0;say(`LEVEL ${i+1}: ${l.name}`,3);levelRestartData=i;}
function createEnemy(type,x,y,index){return {type,x,y:type==='eye'?GROUND-55:GROUND-50,w:type==='eye'?40:36,h:type==='eye'?32:50,hp:type==='eye'?42:58,maxHp:type==='eye'?42:58,vx:0,vy:0,face:-1,cd:1.1+index*.23,anim:Math.random()*5,alive:true,hit:0,flash:0,ground:true};}
function resetLevel(){hero.hp=Math.max(60,hero.hp);loadLevel(levelIndex);screen='playing';showOverlay('none');}
function finishLevel(){if(levelIndex<2){loadLevel(levelIndex+1);}else{screen='ending';showOverlay('ending');$('endingTitle').innerHTML='YOU CROSSED <span class="cyan">THE RIFT</span>';if(heroType==='onirico'){$('endingBody').textContent='Onírico watches Mescaline’s currents freeze around his spines. The city dissolves into emerald light.';$('endingQuote').textContent='“What if I never woke up?”';}else{$('endingBody').textContent='Hideyoshi sheathes his katanas as the final wave sweeps through the portal. For one instant, he hears a voice from beyond this world.';$('endingQuote').textContent='“A dream ends when someone remembers.”';}}}
function spawnProjectile(obj){projectiles.push(obj);}
function inputHas(...names){return names.some(n=>keys.has(n));}function inputJust(...names){return names.some(n=>just.has(n));}
function attackNormal(){if(hero.attackCd>0)return;hero.attackCd=hero.type==='onirico'?.38:.48;hero.attackFrame=.22;if(hero.type==='onirico'){spawnProjectile({kind:'laser',x:hero.x+hero.face*25,y:hero.y+25,vx:hero.face*510,vy:0,w:22,h:7,life:1.25,damage:hero.transform>0?32:22,color:'#89ff58'});burst(hero.x+hero.face*24,hero.y+25,'#8dff67',5,45);}else{let x=hero.x+hero.face*37;spawnProjectile({kind:'slash',x:x-24,y:hero.y+8,vx:hero.face*210,vy:0,w:55,h:43,life:.18,damage:hero.transform>0?36:28,color:'#b9f6ff',hitSet:new Set()});burst(x,hero.y+24,'#8beaff',7,70);}}
function attackSpecial(){if(hero.specialCd>0)return;hero.specialCd=hero.type==='onirico'?5.3:5.8;hero.attackFrame=.5;if(hero.type==='onirico'){spawnProjectile({kind:'shock',x:hero.x,y:GROUND-25,vx:0,vy:0,w:28,h:28,r:20,maxR:180,life:.58,damage:hero.transform>0?42:32,color:'#8dff67',hitSet:new Set()});burst(hero.x,hero.y+35,'#8dff67',18,145);say('THORN SHOCKWAVE',1.1);}else{spawnProjectile({kind:'water',x:hero.x+hero.face*24,y:hero.y+21,vx:hero.face*430,vy:0,w:105,h:62,life:1.25,damage:hero.transform>0?50:38,color:'#73dfff',hitSet:new Set()});burst(hero.x+hero.face*25,hero.y+25,'#73dfff',16,115);say('TWIN KATANA TIDAL WAVE',1.5);}}
function kick(){if(hero.kickCd>0)return;hero.kickCd=.55;hero.attackFrame=.27;spawnProjectile({kind:'kick',x:hero.x+hero.face*27,y:hero.y+20,vx:hero.face*120,vy:0,w:42,h:30,life:.20,damage:15,color:'#f8d86a',hitSet:new Set()});burst(hero.x+hero.face*28,hero.y+28,'#f8d86a',4,45);}
function toggleArmor(){hero.armor=!hero.armor;say(hero.armor?'ARMOR ACTIVATED':'ARMOR DEACTIVATED',1.2);if(hero.armor)burst(hero.x,hero.y+25,'#cad9e5',12,100);}
function transform(){if(hero.transformCd>0||hero.transform>0)return;hero.transform=8;hero.transformCd=18;say(hero.type==='onirico'?'TRANSFORMATION: VERDANT AURA':'TRANSFORMATION: WATER CURRENTS',1.7);burst(hero.x,hero.y+25,hero.type==='onirico'?'#76ff58':'#61dcff',24,170);}
function damageHero(dmg,fromX){if(hero.invuln>0)return;const final=hero.armor?Math.ceil(dmg*.55):dmg;hero.hp-=final;hero.invuln=.72;hero.hurt=.22;hero.vx=(hero.x<fromX?-1:1)*170;hero.vy=-170;shake=7;flash=.12;burst(hero.x,hero.y+25,'#ff5c7a',9,85);if(hero.hp<=0){hero.hp=0;hero.dead=true;screen='gameover';showOverlay('gameover');}}
function killEnemy(e){e.alive=false;score+=100;cleared++;burst(e.x,e.y+15,e.type==='eye'?'#ff4e6b':'#55eaff',16,130);if(enemies.every(x=>!x.alive)){gateOpen=true;say('EXIT UNLOCKED — REACH THE RIFT',3);}}
function rects(a,b){return a.x<b.x+b.w&&a.x+a.w>b.x&&a.y<b.y+b.h&&a.y+a.h>b.y;}
function update(dt){gameTime+=dt;if(screen!=='playing'){just.clear();return;}if(inputJust('escape','esc')){screen='pause';showOverlay('pause');just.clear();return;}if(inputJust('r')){resetLevel();just.clear();return;}
hero.anim+=dt;hero.attackCd=Math.max(0,hero.attackCd-dt);hero.specialCd=Math.max(0,hero.specialCd-dt);hero.kickCd=Math.max(0,hero.kickCd-dt);hero.attackFrame=Math.max(0,hero.attackFrame-dt);hero.transform=Math.max(0,hero.transform-dt);hero.transformCd=Math.max(0,hero.transformCd-dt);hero.armorUntil=Math.max(0,hero.armorUntil-dt);hero.invuln=Math.max(0,hero.invuln-dt);hero.hurt=Math.max(0,hero.hurt-dt);
if(inputJust('j'))attackNormal();if(inputJust('k'))attackSpecial();if(inputJust('l'))kick();if(inputJust('e'))toggleArmor();if(inputJust('q'))transform();
const left=inputHas('a','arrowleft'),right=inputHas('d','arrowright'),down=inputHas('s','arrowdown'),jump=inputJust('w','arrowup',' ');hero.crouch=down&&hero.onGround;let speed=hero.transform>0&&hero.type==='hideyoshi'?280:hero.armor?155:210;if(hero.hurt<=0){if(left&&!right){hero.vx=-speed;hero.face=-1;}else if(right&&!left){hero.vx=speed;hero.face=1;}else hero.vx*=Math.pow(.0008,dt);}
if(jump&&hero.onGround&&!hero.crouch){hero.vy=-470;hero.onGround=false;burst(hero.x,GROUND-3,'#a5c9d8',4,35);}hero.vy+=1050*dt;hero.x+=hero.vx*dt;hero.y+=hero.vy*dt;hero.x=clamp(hero.x,0,levelW-hero.w);
hero.onGround=false;const feet=hero.y+hero.h;if(feet>=GROUND){hero.y=GROUND-hero.h;hero.vy=0;hero.onGround=true;}for(const p of platforms){let hb={x:hero.x+4,y:hero.y+hero.h-4,w:hero.w-8,h:8};if(hero.vy>=0&&rects(hb,p)&&feet-hero.vy*dt<=p.y+6){hero.y=p.y-hero.h;hero.vy=0;hero.onGround=true;}}
for(const h of hazards){if(rects({x:hero.x+5,y:hero.y+hero.h-9,w:hero.w-10,h:8},h))damageHero(12,h.x+h.w/2);}
for(const e of enemies){if(!e.alive)continue;e.anim+=dt;e.hit=Math.max(0,e.hit-dt);e.flash=Math.max(0,e.flash-dt);e.cd-=dt;if(e.type==='eye'){e.y=GROUND-55+Math.sin(gameTime*2+e.x*.01)*5;e.face=hero.x<e.x?-1:1;if(Math.abs(hero.x-e.x)<560&&e.cd<=0){let dx=hero.x-e.x,dy=(hero.y+25)-(e.y+15),len=Math.hypot(dx,dy)||1;spawnProjectile({kind:'enemyLaser',x:e.x,y:e.y+16,vx:dx/len*260,vy:dy/len*260,w:13,h:6,life:3,damage:10,color:'#ff3b5b'});e.cd=1.55+Math.random()*.5;}}else{let dx=hero.x-e.x;e.face=dx<0?-1:1;if(Math.abs(dx)<440){if(Math.abs(dx)>43)e.vx=e.face*90;else e.vx=0;e.x+=e.vx*dt;if(Math.abs(dx)<48&&e.cd<=0){e.cd=1.15;let ax=e.x+e.face*25;spawnProjectile({kind:'enemyKick',x:ax,y:e.y+22,vx:0,vy:0,w:34,h:27,life:.24,damage:13,color:'#ff6d9c'});}}else e.vx=0;}if(e.hit>0)e.x+=Math.sin(gameTime*65)*1.7;}
for(const p of projectiles){p.life-=dt;p.x+=p.vx*dt;p.y+=p.vy*dt;if(p.kind==='shock'){p.r+=(p.maxR-p.r)*Math.min(1,dt*9);p.x=hero.x;p.y=GROUND-24;for(const e of enemies){if(!e.alive||p.hitSet.has(e))continue;let dist=Math.abs((e.x+e.w/2)-hero.x);if(dist<p.r+e.w*.4&&Math.abs((e.y+e.h/2)-GROUND)<120){e.hp-=p.damage;e.hit=.2;p.hitSet.add(e);if(e.hp<=0)killEnemy(e);}}continue;}
if(['laser','water','slash','kick'].includes(p.kind)){for(const e of enemies){if(!e.alive)continue;if(p.hitSet&&p.hitSet.has(e))continue;if(rects(p,e)){e.hp-=p.damage;e.hit=.17;if(p.hitSet)p.hitSet.add(e);if(p.kind==='laser')p.life=0;burst(p.x,p.y,p.color,5,60);if(e.hp<=0)killEnemy(e);}}}else if(p.kind==='enemyLaser'||p.kind==='enemyKick'){if(rects(p,hero)) {damageHero(p.damage,p.x);p.life=0;}}}
projectiles=projectiles.filter(p=>p.life>0&&p.x>-camera-200&&p.x<camera+W+250&&p.y>-120&&p.y<H+100);
for(const p of particles){p.life-=dt;p.x+=p.vx*dt;p.y+=p.vy*dt;p.vy+=(p.grav||0)*dt;p.vx*=Math.pow(.08,dt);}particles=particles.filter(p=>p.life>0);
if(enemies.every(e=>!e.alive)&&!gateOpen){gateOpen=true;say('EXIT UNLOCKED',2);}camera=clamp(hero.x-W*.36,0,levelW-W);if(gateOpen&&hero.x>levelW-110){finishLevel();}
flash=Math.max(0,flash-dt);shake=Math.max(0,shake-24*dt);just.clear();}
function glowRect(x,y,w,h,color,blur=10,alpha=.65){ctx.save();ctx.globalAlpha=alpha;ctx.shadowColor=color;ctx.shadowBlur=blur;ctx.fillStyle=color;ctx.fillRect(x,y,w,h);ctx.restore();}
function polygon(points,fill,stroke=null,lineWidth=1){ctx.beginPath();ctx.moveTo(points[0][0],points[0][1]);for(let i=1;i<points.length;i++)ctx.lineTo(points[i][0],points[i][1]);ctx.closePath();if(fill){ctx.fillStyle=fill;ctx.fill();}if(stroke){ctx.strokeStyle=stroke;ctx.lineWidth=lineWidth;ctx.stroke();}}
function wrap(value,mod){return ((value%mod)+mod)%mod;}
function drawBackground(){
 const l=levels[levelIndex]||levels[0],bg=l.bg;
 const g=ctx.createLinearGradient(0,0,0,H);
 if(bg===0){g.addColorStop(0,'#050a20');g.addColorStop(.42,'#17183c');g.addColorStop(.76,'#39264a');g.addColorStop(1,'#102030');}
 else if(bg===1){g.addColorStop(0,'#0d1a2d');g.addColorStop(.48,'#344455');g.addColorStop(.8,'#58414a');g.addColorStop(1,'#1f2534');}
 else{g.addColorStop(0,'#08091e');g.addColorStop(.38,'#241b56');g.addColorStop(.72,'#51215f');g.addColorStop(1,'#101c36');}
 ctx.fillStyle=g;ctx.fillRect(0,0,W,H);
 // Atmospheric haze and distant stars
 for(let i=0;i<92;i++){
   const xx=wrap(i*139+31-camera*(.035+(i%4)*.014),W+35)-16, yy=(i*67+23)%330;
   ctx.globalAlpha=.22+(i%5)*.1;rect(xx,yy,i%9===0?3:1,i%9===0?3:1,i%3===0?'#a2efff':i%3===1?'#b2a1ff':'#f3a9d3');
 }
 ctx.globalAlpha=1;
 if(bg===0){
   // Distant moon and layered megacity silhouettes
   ctx.save();ctx.globalAlpha=.36;const moon=ctx.createRadialGradient(742,118,5,742,118,100);moon.addColorStop(0,'#f7b6f1');moon.addColorStop(.6,'#6e5bb7');moon.addColorStop(1,'#35265d00');ctx.fillStyle=moon;ctx.beginPath();ctx.arc(742,118,100,0,Math.PI*2);ctx.fill();ctx.restore();
   drawSkyline('#192448','#26325a',.14,0);drawSkyline('#101b37','#172442',.32,1);drawNeonCityDecor();
   // Rain streaks catch the neon glow
   for(let i=0;i<34;i++){let x=wrap(i*47+gameTime*45-camera*.52,W),y=(i*83+gameTime*180)%385;line(x,y,x-4,y+12,'#59cfe8',.8);}
   // Steam rising from vents
   for(let i=0;i<5;i++){let x=wrap(i*241+120-camera*.73,W);ctx.globalAlpha=.09;ctx.fillStyle='#b5e7f9';ctx.beginPath();ctx.ellipse(x,393+Math.sin(gameTime*1.3+i)*6,18,31,0,0,Math.PI*2);ctx.fill();ctx.globalAlpha=1;}
 }else if(bg===1){drawCastle();}
 else{drawRift();}
 // Foreground floor: wet stone / metal road with reflections and edge lighting
 const floor=ctx.createLinearGradient(0,GROUND,0,H);floor.addColorStop(0,bg===1?'#28283b':bg===2?'#171634':'#101b2e');floor.addColorStop(.45,'#0c1224');floor.addColorStop(1,'#060914');ctx.fillStyle=floor;ctx.fillRect(0,GROUND,W,H-GROUND);
 rect(0,GROUND,W,3,bg===1?'#ffbd69':bg===2?'#b39aff':'#45ecf7');glowRect(0,GROUND-1,W,2,l.accent,12,.35);
 for(let x=-wrap(camera*.82,72);x<W+72;x+=72){
   polygon([[x,GROUND+9],[x+61,GROUND+9],[x+72,GROUND+37],[x+11,GROUND+37]],bg===1?'#25283a':bg===2?'#171a35':'#132238',bg===1?'#5c4b55':bg===2?'#3a3260':'#27445a',.8);
   line(x+7,GROUND+14,x+53,GROUND+14,bg===1?'#71574d':bg===2?'#4b397d':'#376074',1);
   if((Math.floor((x+camera)/72)%3)===0){line(x+15,GROUND+25,x+44,GROUND+25,l.accent,1);}
 }
 // Long rain reflections, broken into soft coloured bands
 for(let i=0;i<24;i++){
   const x=wrap(i*83-camera*.91,W),y=GROUND+19+(i*29%73),ww=12+(i*13%37);
   ctx.globalAlpha=.1+(i%3)*.05;rect(x,y,ww,1+(i%2),i%3===0?'#4defff':i%3===1?'#ff5ba8':l.accent);
 }
 ctx.globalAlpha=1;
 // Small glowing drains along the road
 for(let x=-wrap(camera,180)+20;x<W+180;x+=180){rect(x,GROUND+50,22,3,'#273b53');for(let q=0;q<4;q++)rect(x+3+q*5,GROUND+51,2,1,l.accent);}
}
function drawSkyline(a,b,par,layer=0){
 const spacing=layer===0?101:79, count=layer===0?17:22, total=spacing*count;
 for(let i=0;i<count+2;i++){
   const x=wrap(i*spacing-camera*par,total)-110;
   const w=(layer===0?64:51)+(i*17%28),h=(layer===0?93:110)+(i*47%(layer===0?115:155)),y=GROUND-h;
   const main=i%2?a:b;
   rect(x,y,w,h,main);rect(x+3,y+4,w-6,Math.max(4,h-8),layer===0?'#111a36':'#0b142a');
   // Art-deco tower crown and illuminated trim
   if(i%4===0){polygon([[x-4,y+9],[x+w/2,y-18-(i%3)*8],[x+w+4,y+9]],layer===0?'#28345a':'#172442');line(x+w/2,y-18-(i%3)*8,x+w/2,y-34-(i%4)*3,'#6d8db7',1.5);glowRect(x+w/2-1,y-35-(i%4)*3,3,4,i%2?'#ff5ca8':'#48eaff',7,.65);}
   // Recessed windows
   for(let wy=y+13;wy<GROUND-13;wy+=15){for(let wx=x+8;wx<x+w-5;wx+=13){const lit=((Math.floor(wx/13)+Math.floor(wy/15)+i)%5)!==0;if(lit){const col=(Math.floor(wx/13)+i)%4===0?'#f06bb7':(i%3===0?'#4ad8ef':'#83a4db');rect(wx,wy,5,7,col);rect(wx+1,wy+1,2,4,'#d3ffff');}}}
   // Pipes, antennae and rooftop machinery
   if(i%3===1){rect(x+w-9,y-17,3,17,'#445a77');rect(x+w-13,y-20,11,3,'#5b6e8a');rect(x+5,y+18,2,h-30,'#293c59');}
   if(layer===1&&i%5===2){rect(x+10,y+42,22,4,'#182e49');rect(x+13,y+45,16,2,'#ed5caa');}
 }
}
function drawNeonCityDecor(){
 // Elevated transit rails and suspension cables
 line(0,133,W,176,'#1d3155',2);line(0,138,W,181,'#5a3e74',1);for(let i=0;i<20;i++){let x=wrap(i*71-camera*.26,W);line(x,136+(x/W)*42,x,151+(x/W)*42,'#263b60',1);}
 // Bright vertical signs and a holographic billboard
 for(let i=0;i<6;i++){
   let x=wrap(i*191+95-camera*.34,W), y=150+(i*31%94), col=i%3===0?'#ff5ca8':i%3===1?'#46eaff':'#a38bff';
   rect(x,y,19,68,'#10162c');rect(x+2,y+2,15,64,'#172441');glowRect(x+5,y+8,9,3,col,8,.8);glowRect(x+5,y+20,9,2,col,6,.75);glowRect(x+5,y+31,9,2,col,6,.65);rect(x+5,y+44,9,10,col);rect(x+7,y+46,5,6,'#f6e8ff');
 }
 const bx=wrap(560-camera*.48,W);rect(bx,218,106,48,'#0b1227');ctx.strokeStyle='#4fe8f8';ctx.lineWidth=2;ctx.strokeRect(bx+1,219,104,46);glowRect(bx+8,228,89,2,'#ff5ca8',7,.9);text('NIGHT MARKET',bx+53,245,8,'#c9faff','center');text('MESCA // 09',bx+53,257,7,'#8a9dc8','center');
 // Flying traffic silhouettes
 for(let i=0;i<4;i++){let x=wrap(i*251+gameTime*12-camera*.18,W);let y=155+i*35+Math.sin(gameTime*1.5+i)*4;polygon([[x,y],[x+21,y+3],[x+28,y+8],[x+9,y+8]],'#171b36','#8a70b0',.7);glowRect(x+4,y+8,5,1,'#ff5ca8',5,.8);}
}
function drawCastle(){
 // Misty moonlit medieval skyline, with a giant moon behind the ramparts
 const moon=ctx.createRadialGradient(180,123,12,180,123,108);moon.addColorStop(0,'#fff0c4');moon.addColorStop(.7,'#b1c4d3');moon.addColorStop(1,'#a8b7cf00');ctx.fillStyle=moon;ctx.beginPath();ctx.arc(180,123,108,0,Math.PI*2);ctx.fill();ctx.globalAlpha=.7;ctx.fillStyle='#d8e6d8';ctx.beginPath();ctx.arc(180,123,47,0,Math.PI*2);ctx.fill();ctx.globalAlpha=1;
 // Deep mountains
 polygon([[0,332],[104,221],[181,277],[302,193],[400,280],[508,216],[631,300],[760,218],[870,275],[960,210],[960,440],[0,440]],'#253449');
 polygon([[0,370],[145,283],[242,323],[361,254],[463,336],[576,271],[688,330],[810,269],[960,347],[960,440],[0,440]],'#1a2b3e');
 // City walls and castle towers scroll at slower parallax
 for(let i=0;i<9;i++){
   const x=wrap(i*142-camera*.24,1410)-60,h=107+(i*31%78),w=76+(i%3)*16,y=GROUND-h;
   rect(x,y,w,h,'#303a4e');rect(x+6,y+7,w-12,h-7,'#3d4356');rect(x+13,y+15,6,h-21,'#4b4a59');
   polygon([[x-5,y+4],[x+w/2,y-23-(i%3)*8],[x+w+5,y+4]],'#242b43','#78605d',1);
   rect(x-4,y+4,w+8,6,'#77717a');for(let wx=x+17;wx<x+w-8;wx+=21){rect(wx,y+26,7,17,'#ffb965');glowRect(wx+1,y+27,4,13,'#ffb05a',7,.35);}
   for(let wy=y+56;wy<GROUND-15;wy+=26){rect(x+w/2-5,wy,10,14,'#202c43');rect(x+w/2-3,wy+2,6,9,'#7d8b9a');}
   // Battlements on the roof
   for(let bx=x+5;bx<x+w-2;bx+=16)rect(bx,y-2,8,7,'#77717a');
 }
 // Foreground suspended bridges and chains
 for(let i=0;i<4;i++){let x=wrap(i*288-camera*.38,1152)-60,y=300+(i%2)*36;line(x,y,x+210,y+14,'#9c7b61',4);line(x,y+7,x+210,y+21,'#473a4c',3);for(let q=0;q<7;q++){line(x+q*31,y+5+q*2,x+q*31,y+25+q*2,'#806b66',1);}}
 // Lanterns
 for(let i=0;i<7;i++){let x=wrap(i*158+58-camera*.43,W);line(x,260,x,282,'#8d7869',2);rect(x-6,279,12,18,'#4b3c48');glowRect(x-3,282,6,11,i%2?'#ffb55e':'#79e9fa',10,.8);}
}
function drawRift(){
 // Distant fragmented world layers
 polygon([[0,300],[117,238],[206,279],[336,186],[444,274],[555,207],[685,276],[812,187],[960,277],[960,440],[0,440]],'#1e2146');
 polygon([[0,352],[92,300],[205,331],[345,260],[451,340],[568,270],[684,335],[808,258],[960,325],[960,440],[0,440]],'#151a37');
 // Distorted planets and nebula clouds
 for(let i=0;i<8;i++){const x=wrap(i*163-camera*.17,W),y=90+(i*83%210),r=11+(i*9%27);ctx.globalAlpha=.12;ctx.fillStyle=i%2?'#5fe7ff':'#ba70ff';ctx.beginPath();ctx.arc(x,y,r*2.8,0,Math.PI*2);ctx.fill();ctx.globalAlpha=1;ctx.strokeStyle=i%2?'#4fdcf5':'#9a70ff';ctx.lineWidth=1;ctx.beginPath();ctx.arc(x,y,r,0,Math.PI*2);ctx.stroke();ctx.fillStyle='#414776';ctx.beginPath();ctx.arc(x-r*.2,y-r*.15,r*.72,0,Math.PI*2);ctx.fill();}
 // Central portal with layered glow and rotating segmented rings
 const px=700-camera*.13,py=214,pulse=Math.sin(gameTime*2.1);
 const aura=ctx.createRadialGradient(px,py,12,px,py,220);aura.addColorStop(0,'#9e66ff22');aura.addColorStop(.5,'#572f9a30');aura.addColorStop(1,'#241b5500');ctx.fillStyle=aura;ctx.fillRect(px-225,py-225,450,450);
 ctx.save();ctx.translate(px,py);ctx.rotate(gameTime*.13);for(let i=0;i<3;i++){ctx.beginPath();ctx.ellipse(0,0,84+i*17+Math.sin(gameTime*2+i)*4,139+i*15,.13+i*.02,0,Math.PI*2);ctx.strokeStyle=i===0?'#b79cff':i===1?'#5ce7ff':'#ec6bff';ctx.lineWidth=5-i;ctx.globalAlpha=.85-i*.18;ctx.shadowColor=ctx.strokeStyle;ctx.shadowBlur=15;ctx.stroke();}ctx.globalAlpha=1;ctx.shadowBlur=0;
 for(let i=0;i<24;i++){let a=i*Math.PI/12+gameTime*.36;let r=119+Math.sin(gameTime*2+i)*8;line(Math.cos(a)*r*.72,Math.sin(a)*r*1.07,Math.cos(a)*(r+31),Math.sin(a)*(r+44),'#b681ff',i%3===0?2:1);}
 ctx.restore();
 // Floating shards of stone and circuitry
 for(let i=0;i<13;i++){let x=wrap(i*109+40-camera*(.31+(i%4)*.025),W),y=230+(i*47%146)+Math.sin(gameTime+i)*4;polygon([[x,y],[x+18+(i%3)*5,y-6],[x+33,y+8],[x+17,y+19],[x+3,y+15]],i%2?'#35305d':'#222e50',i%2?'#9978ed':'#4fcae7',1);line(x+6,y+9,x+20,y+5,i%2?'#c28bff':'#70efff',1);}
 // Broken chunks of floating architecture
 for(let i=0;i<5;i++){let x=wrap(i*241+120-camera*.24,W),y=170+(i%3)*47;polygon([[x,y],[x+52,y+4],[x+67,y+29],[x+15,y+23]],'#282744','#62518d',1);rect(x+8,y+9,33,3,'#5d4c91');for(let q=0;q<3;q++)rect(x+12+q*9,y+15,4,4,'#58cde8');}
}
function drawPlatform(p){
 const x=p.x-camera,y=p.y;
 // Layered floating steel ledge
 polygon([[x-5,y+2],[x+7,y-5],[x+p.w-9,y-5],[x+p.w+5,y+2],[x+p.w,y+p.h],[x,y+p.h]],'#1b2d46','#4c748f',1);
 rect(x,y,p.w,5,'#7beeff');glowRect(x+5,y-1,p.w-10,2,'#5deeff',9,.7);
 rect(x+3,y+6,p.w-6,5,'#233d59');for(let xx=x+10;xx<x+p.w-10;xx+=24){rect(xx,y+7,9,3,'#6e91aa');rect(xx+2,y+11,4,2,'#274b63');}
 // bright end caps and underside circuitry
 rect(x+2,y+2,5,8,'#c3ffff');rect(x+p.w-7,y+2,5,8,'#c3ffff');for(let xx=x+16;xx<x+p.w-12;xx+=38){line(xx,y+14,xx+8,y+14,'#397e9b',1);}
}
function drawHazard(h){let x=h.x-camera;rect(x,h.y,h.w,h.h,'#311a35');rect(x,h.y,h.w,3,'#ff4e82');for(let q=0;q<h.w;q+=12){polygon([[x+q,h.y+h.h],[x+q+6,h.y-7],[x+q+12,h.y+h.h]],'#ff4e82','#ffafcc',.7);}for(let q=5;q<h.w;q+=24)glowRect(x+q,h.y+9,3,2,'#ffb5d2',5,.7);}
function drawGate(){const gx=levelW-76-camera,gy=GROUND-112;rect(gx-8,gy-6,66,116,'#101728');ctx.strokeStyle=gateOpen?'#8efded':'#54385f';ctx.lineWidth=3;ctx.strokeRect(gx-5,gy-3,60,110);rect(gx,gy,50,112,gateOpen?'#164a51':'#202139');rect(gx+6,gy+3,38,103,gateOpen?'#6ef9e6':'#2b233e');
 if(gateOpen){ctx.save();ctx.globalAlpha=.55+Math.sin(gameTime*5)*.25;ctx.fillStyle='#b4fff5';ctx.shadowColor='#54fff3';ctx.shadowBlur=22;ctx.fillRect(gx+12,gy+9,26,91);ctx.restore();for(let i=0;i<8;i++){let yy=gy+10+i*11;glowRect(gx+8+(i%2)*19,yy,12,2,'#ffffff',7,.8);}text('EXIT',gx+25,gy-12,10,'#8efff2','center');}
 else{text('LOCKED',gx+25,gy-12,9,'#ff6d9c','center');for(let y=gy+12;y<gy+101;y+=18){line(gx+9,y,gx+41,y,'#ff5e88',2);glowRect(gx+9,y,32,1,'#ff5e88',4,.55);}}
}
function drawHero(){let h=hero,x=Math.round(h.x-camera),y=Math.round(h.y),t=h.anim;ctx.save();if(h.invuln>0&&Math.floor(gameTime*16)%2===0)ctx.globalAlpha=.45;const moving=Math.abs(h.vx)>25,run=Math.sin(t*14),bob=h.onGround&&moving?Math.sin(t*14)*2:Math.sin(t*4)*1.3;ctx.translate(x,y+56);ctx.scale(1.18,1.18);ctx.translate(-x,-(y+56));ctx.globalAlpha*=1;ctx.fillStyle='#050814';ctx.globalAlpha*=.72;ctx.beginPath();ctx.ellipse(x+18,y+54,19,4,0,0,Math.PI*2);ctx.fill();ctx.globalAlpha=h.invuln>0&&Math.floor(gameTime*16)%2===0?.45:1; if(h.crouch){ctx.translate(0,y+56);ctx.scale(1,.65);ctx.translate(0,-(y+56));} if(h.transform>0){let col=h.type==='onirico'?'#83ff55':'#58dfff';ctx.globalAlpha=.28+Math.sin(gameTime*15)*.09;ctx.fillStyle=col;ctx.beginPath();ctx.ellipse(x+18,y+29,25+Math.sin(gameTime*9)*4,38+Math.cos(gameTime*7)*4,0,0,Math.PI*2);ctx.fill();ctx.globalAlpha=h.invuln>0&&Math.floor(gameTime*16)%2===0?.45:1;}
if(h.armor){rect(x+5,y+18,27,32,'#73839a');rect(x+4,y+18,28,4,'#d5e0ed');rect(x+4,y+48,10,7,'#596b85');rect(x+23,y+48,10,7,'#596b85');if(h.type==='onirico'){rect(x+27,y+20,14,28,'#2fa75e');rect(x+31,y+25,10,17,'#46df80');}else{rect(x+3,y+4,30,38,'#4c607b');rect(x+1,y+6,34,8,'#a9bacd');}}
if(h.type==='onirico')drawOnirico(x,y,bob,run,h);else drawHideyoshi(x,y,bob,run,h);
if(h.armor){if(h.type==='onirico'){rect(x+8,y+23,21,12,'#b4c7d7');rect(x+10,y+25,17,4,'#e4eef6');rect(x+3,y+23,7,7,'#8799ac');rect(x+28,y+23,7,7,'#8799ac');rect(x+28,y+18,13,28,'#239f60');rect(x+31,y+22,8,19,'#56dc85');}else{rect(x+7,y+25,22,13,'#879bb2');rect(x+9,y+27,18,4,'#e4c97c');rect(x+5,y+24,7,8,'#d0ad62');rect(x+26,y+24,7,8,'#d0ad62');rect(x+12,y+36,5,5,'#d0ad62');rect(x+22,y+36,5,5,'#d0ad62');}}
if(h.attackFrame>0){if(h.type==='onirico'){let px=x+(h.face>0?28:-24);rect(px,y+22,14,5,'#aaff70');rect(px+2,y+18,8,3,'#4fffa7');}else{ctx.strokeStyle='#c2f7ff';ctx.lineWidth=5;ctx.beginPath();ctx.moveTo(x+18+h.face*2,y+28);ctx.lineTo(x+18+h.face*42,y+12+Math.sin(t*40)*5);ctx.stroke();ctx.strokeStyle='#498aff';ctx.lineWidth=2;ctx.beginPath();ctx.moveTo(x+18+h.face*2,y+32);ctx.lineTo(x+18+h.face*38,y+17);ctx.stroke();}}
if(h.transform>0){let col=h.type==='onirico'?'#8aff5c':'#68e7ff';for(let i=0;i<3;i++){let a=gameTime*3+i*2.1;let px=x+18+Math.cos(a)*27,py=y+29+Math.sin(a)*32;rect(px,py,3,7,col);}}ctx.restore();}
function drawOnirico(x,y,bob,run,h){let leg=Math.round(run*3),arm=Math.round(run*2); // boots + legs
rect(x+6,y+43+bob,9,9,'#25364a');rect(x+21,y+43-bob,9,9,'#25364a');rect(x+3,y+50+bob,13,5,'#a86f3b');rect(x+19,y+50-bob,14,5,'#b27a42');rect(x+7,y+32+bob,8,13,'#34513f');rect(x+21,y+32-bob,8,13,'#34513f');
// poncho and body
rect(x+6,y+20+bob,24,18,'#a75d2f');rect(x+4,y+24+bob,28,7,'#c27a3c');rect(x+8,y+18+bob,20,5,'#e4a34c');rect(x+13,y+20+bob,6,17,'#542b46');rect(x+17,y+23+bob,5,5,'#ff5ca8');
// arms
rect(x+1,y+23+arm,8,13,'#3b8853');rect(x+27,y+23-arm,8,13,'#3b8853');rect(x+2,y+31+arm,7,4,'#5bc878');rect(x+28,y+31-arm,7,4,'#5bc878');
// cactus crown: square silhouette with recognizable spines
rect(x+7,y+2+bob,22,23,'#2e984f');rect(x+10,y-2+bob,16,29,'#39b95d');rect(x+5,y+5+bob,5,15,'#38ad57');rect(x+27,y+6+bob,5,13,'#38ad57');rect(x+11,y+1+bob,4,5,'#64df74');rect(x+21,y+2+bob,4,5,'#64df74');
// Fine cactus spines and rim-light give the silhouette more character
polygon([[x+8,y+7+bob],[x+3,y+3+bob],[x+8,y+12+bob]],'#7af08b');polygon([[x+11,y+3+bob],[x+9,y-3+bob],[x+15,y+2+bob]],'#a1ffac');polygon([[x+17,y+1+bob],[x+19,y-5+bob],[x+22,y+2+bob]],'#7cf493');polygon([[x+25,y+5+bob],[x+31,y+1+bob],[x+27,y+10+bob]],'#a1ffac');polygon([[x+7,y+18+bob],[x+2,y+16+bob],[x+7,y+22+bob]],'#7af08b');line(x+11,y+7+bob,x+12,y+17+bob,'#a1ffac',1);line(x+25,y+7+bob,x+24,y+9+bob,'#d0ffad',1);
// pink visor and tiny glowing accents
rect(x+9,y+10+bob,19,6,'#f53eaa');rect(x+11,y+11+bob,15,2,'#ffc4f1');rect(x+14,y+12+bob,3,3,'#311c53');rect(x+22,y+12+bob,3,3,'#311c53');rect(x+16,y+18+bob,5,3,'#ffdc6b');
}
// Cactus arms, shoulders and head.
function drawHideyoshi(x,y,bob,run,h){let leg=Math.round(run*2.5);rect(x+6,y+40+bob,9,11,'#d9e6ee');rect(x+21,y+40-bob,9,11,'#e9f4f7');rect(x+3,y+50+bob,13,5,'#293345');rect(x+19,y+50-bob,14,5,'#293345');rect(x+5,y+22+bob,27,20,'#3f536b');rect(x+3,y+27+bob,31,7,'#c2ced8');rect(x+10,y+24+bob,16,11,'#e7f1f8');rect(x+16,y+25+bob,4,12,'#293c59');rect(x+2,y+23+Math.round(run*2),8,14,'#f0f5f6');rect(x+29,y+22-Math.round(run*2),8,15,'#e0ecf2');rect(x+3,y+5+bob,30,21,'#eef5f6');rect(x+2,y+9+bob,32,12,'#d5e6ec');rect(x+7,y+13+bob,6,5,'#1b2b47');rect(x+24,y+13+bob,6,5,'#1b2b47');rect(x+8,y+14+bob,3,3,'#45dcf7');rect(x+25,y+14+bob,3,3,'#45dcf7');rect(x+13,y+20+bob,12,5,'#b9ccd5');rect(x+8,y+2+bob,18,5,'#2c304c');rect(x+24,y+4+bob,9,4,'#2c304c');rect(x+9,y+25+bob,4,8,'#bd9b50');rect(x+26,y+25+bob,4,8,'#bd9b50');
// Fur tufts, rounded ears, engraved plates and a samurai crest
ctx.fillStyle='#f5fbff';ctx.beginPath();ctx.arc(x+7,y+7+bob,5,0,Math.PI*2);ctx.fill();ctx.beginPath();ctx.arc(x+29,y+7+bob,5,0,Math.PI*2);ctx.fill();ctx.fillStyle='#8aa5bb';ctx.beginPath();ctx.arc(x+7,y+7+bob,2.5,0,Math.PI*2);ctx.fill();ctx.beginPath();ctx.arc(x+29,y+7+bob,2.5,0,Math.PI*2);ctx.fill();polygon([[x+14,y+2+bob],[x+18,y-5+bob],[x+22,y+2+bob]],'#e7c56f','#fff0a7',.7);line(x+8,y+29+bob,x+28,y+29+bob,'#f3dfa3',1);line(x+10,y+34+bob,x+26,y+34+bob,'#7b91a6',1);rect(x+16,y+31+bob,4,3,'#243855');
// twin katana hilts and blade pixels
rect(x+(h.face>0?29:-2),y+29,5,5,'#d5b86e');rect(x+(h.face>0?32:-5),y+20,3,14,'#eaf5ff');rect(x+(h.face>0?32:-5),y+18,3,4,'#8eeaff');if(h.attackFrame>0){rect(x+(h.face>0?25:-36),y+13,38,3,'#a7f5ff');rect(x+(h.face>0?35:-45),y+18,25,2,'#489cff');}}
function drawEnemy(e){let x=Math.round(e.x-camera),y=Math.round(e.y);ctx.save();if(e.flash>0)ctx.globalAlpha=.5;if(e.type==='eye'){
// bat-wing eye creature
ctx.fillStyle='#54183c';ctx.beginPath();ctx.moveTo(x+10,y+13);ctx.lineTo(x-11,y-1+Math.sin(e.anim*8)*3);ctx.lineTo(x+1,y+25);ctx.fill();ctx.beginPath();ctx.moveTo(x+30,y+13);ctx.lineTo(x+51,y-1-Math.sin(e.anim*8)*3);ctx.lineTo(x+39,y+25);ctx.fill();rect(x+7,y+4,27,24,'#802e52');rect(x+11,y+2,18,26,'#b83f65');rect(x+13,y+10,15,9,'#f4d5e4');rect(x+16,y+11,10,7,'#ff335b');rect(x+19,y+12,4,5,'#180b22');rect(x+9,y+23,22,5,'#471a3a');rect(x+5,y+8,5,12,'#ce4f75');rect(x+31,y+8,5,12,'#ce4f75');
}else{
// stylized cybernetic fighter robot, non-photoreal
rect(x+9,y+1,18,10,'#6de8e8');rect(x+6,y+8,24,18,'#b53f78');rect(x+9,y+11,18,10,'#18223c');rect(x+11,y+13,5,3,'#ff5f9e');rect(x+21,y+13,5,3,'#ff5f9e');rect(x+10,y+25,16,16,'#4c5b79');rect(x+4,y+26,7,13,'#e75a9b');rect(x+26,y+26,7,13,'#e75a9b');rect(x+10,y+38,6,9,'#a9c4dc');rect(x+20,y+38,6,9,'#a9c4dc');rect(x+6,y+46,11,4,'#26324b');rect(x+20,y+46,12,4,'#26324b');rect(x+8,y+3,20,4,'#ff8fc4');rect(x+13,y+21,10,3,'#5cecff');}
if(e.hp<e.maxHp){rect(x-2,y-9,e.w+4,4,'#161226');rect(x-2,y-9,(e.w+4)*Math.max(0,e.hp/e.maxHp),4,e.type==='eye'?'#ff5b80':'#5defff');}ctx.restore();}
function drawProjectile(p){let x=p.x-camera,y=p.y;if(p.kind==='laser'){rect(x-2,y-2,p.w+7,p.h+4,'#2c944c');rect(x,y,p.w,p.h,p.color);rect(x+p.w-3,y-2,4,p.h+4,'#efffb8');}else if(p.kind==='enemyLaser'){rect(x,y,p.w,p.h,'#ff244e');rect(x+2,y+1,p.w-4,2,'#ffc3d4');}else if(p.kind==='water'){ctx.save();ctx.globalAlpha=.82;ctx.fillStyle='#249bd7';ctx.beginPath();ctx.moveTo(x,y+p.h);ctx.quadraticCurveTo(x+18,y+4,x+32,y+18);ctx.quadraticCurveTo(x+43,y-5,x+59,y+10);ctx.quadraticCurveTo(x+75,y+25,x+p.w,y+9);ctx.lineTo(x+p.w,y+p.h);ctx.closePath();ctx.fill();rect(x+10,y+32,p.w-22,5,'#8ef6ff');rect(x+28,y+22,p.w-43,3,'#ddffff');ctx.restore();}else if(p.kind==='shock'){ctx.save();ctx.globalAlpha=Math.max(.15,p.life/.58);ctx.strokeStyle=p.color;ctx.lineWidth=5;ctx.beginPath();ctx.ellipse(p.x-camera,p.y,p.r,15+p.r*.18,0,0,Math.PI*2);ctx.stroke();ctx.lineWidth=2;ctx.strokeStyle='#d9ffac';ctx.beginPath();ctx.ellipse(p.x-camera,p.y,p.r*.84,11+p.r*.18,0,0,Math.PI*2);ctx.stroke();for(let i=0;i<12;i++){let a=i*Math.PI/6;let px=p.x-camera+Math.cos(a)*p.r,py=p.y+Math.sin(a)*14;ctx.fillStyle='#8dff67';ctx.beginPath();ctx.moveTo(px,py);ctx.lineTo(px+Math.cos(a)*9,py+Math.sin(a)*10);ctx.lineTo(px-Math.sin(a)*4,py+Math.cos(a)*3);ctx.fill();}ctx.restore();}else if(p.kind==='slash'||p.kind==='kick'){rect(x,y,p.w,p.h,p.kind==='kick'?'#c59d3c':'#4ba3ce');rect(x+5,y+4,p.w-10,5,p.color);}else if(p.kind==='enemyKick'){rect(x,y,p.w,p.h,'#a32c63');rect(x+5,y+6,p.w-10,6,'#ff719e');}}
function drawParticles(){for(const p of particles){ctx.globalAlpha=clamp(p.life/p.max,0,1);rect(p.x-camera,p.y,p.size,p.size,p.color);}ctx.globalAlpha=1;}
function drawHUD(){const l=levels[levelIndex];rect(14,14,340,84,'#07101fe8');ctx.strokeStyle='#2a536e';ctx.strokeRect(14,14,340,84);text(`LEVEL ${levelIndex+1}/3  //  ${l.name}`,26,34,13,l.accent);text(hero.type==='onirico'?'ONÍRICO':'HIDEYOSHI',26,57,12,'#f2f8ff');rect(110,45,175,12,'#1a263b');rect(110,45,175*hero.hp/hero.maxHp,12,hero.hp>55?'#61edaa':hero.hp>25?'#ffd36a':'#ff5578');text(`${Math.ceil(hero.hp)} / 100`,293,56,10,'#eaf5ff');text(`ENEMIES ${enemies.filter(e=>e.alive).length}`,26,81,11,'#bdcee0');text(`SCORE ${score}`,190,81,11,'#83dbf8');rect(700,14,246,84,'#07101fe8');ctx.strokeStyle='#2a536e';ctx.strokeRect(700,14,246,84);text('ABILITIES',714,32,11,'#b7d5eb');text(`SPECIAL  ${hero.specialCd<=0?'READY':hero.specialCd.toFixed(1)+'s'}`,714,51,11,hero.specialCd<=0?'#8effba':'#93a5be');text(`TRANSFORM ${hero.transform>0?hero.transform.toFixed(1)+'s':hero.transformCd<=0?'READY':hero.transformCd.toFixed(1)+'s'}`,714,68,10,hero.transform>0?'#88f9ff':hero.transformCd<=0?'#8effba':'#93a5be');text(`ARMOR ${hero.armor?'ON':'OFF'}`,714,85,10,hero.armor?'#d7eaff':'#8fa4b5');rect(366,15,220,23,'#07101fcc');text(l.sub,476,31,11,l.accent,'center');if(gateOpen){text('EXIT OPEN →',480,123,14,'#99fff1','center');}else{text(`ENEMIES LEFT: ${enemies.filter(e=>e.alive).length}`,480,123,11,'#c1d3e4','center');}if(message&&gameTime<messageUntil){rect(210,145,540,32,'#07101fee');ctx.strokeStyle=l.accent;ctx.strokeRect(210,145,540,32);text(message,480,166,13,'#ffffff','center');}}
function render(){ctx.save();if(shake>0)ctx.translate((Math.random()-.5)*shake,(Math.random()-.5)*shake);drawBackground();for(const p of platforms)drawPlatform(p);for(const h of hazards)drawHazard(h);drawGate();for(const e of enemies)if(e.alive)drawEnemy(e);for(const p of projectiles)drawProjectile(p);drawHero();drawParticles();drawHUD();if(flash>0){ctx.globalAlpha=flash*2;rect(0,0,W,H,'#ff4668');ctx.globalAlpha=1;}ctx.restore();}
function frame(ts){const dt=Math.min(.033,(ts-lastTime)/1000||0);lastTime=ts;if(screen==='playing'){update(dt);}else{gameTime+=dt;just.clear();}ctx.clearRect(0,0,W,H);if(screen==='menu'||screen==='select'){const old=levelIndex;levelIndex=0;drawBackground();levelIndex=old;drawHeroPreview();}else if(screen==='ending'){drawBackground();}else{render();}requestAnimationFrame(frame);}
function drawHeroPreview(){const oldCam=camera;camera=0;const l=levels[0];text('MESCA CITY',480,95,17,l.accent,'center');text('NOT EVERY DREAM ENDS WHEN YOU WAKE',480,120,10,'#a8c5dc','center');let temp=hero;if(!temp)hero=createHero(heroType);let oldX=hero.x,oldY=hero.y,oldT=hero.anim;hero.x=465;hero.y=GROUND-hero.h;hero.anim=gameTime;hero.face=1;hero.vx=0;drawGatePreview();drawHero();hero.x=oldX;hero.y=oldY;hero.anim=oldT;if(!temp)hero=null;camera=oldCam;for(let i=0;i<20;i++){let x=(i*83+gameTime*15)%W;rect(x,400+(i*19%28),2,2,i%2?'#58e8ff':'#f85d9e');}}
function drawGatePreview(){ctx.globalAlpha=.35;rect(730,GROUND-115,55,115,'#48d9ee');ctx.globalAlpha=1;}
window.addEventListener('keydown',e=>{const k=e.key.toLowerCase();if(['arrowup','arrowdown','arrowleft','arrowright',' '].includes(k))e.preventDefault();if(!keys.has(k))just.add(k);keys.add(k);});window.addEventListener('keyup',e=>keys.delete(e.key.toLowerCase()));window.addEventListener('blur',()=>{keys.clear();just.clear();if(screen==='playing'){screen='pause';showOverlay('pause');}});
$('start').addEventListener('click',()=>{screen='select';showOverlay('select');});$('how').addEventListener('click',()=>{$('storyhint').innerHTML='<div class="controls"><div class="control"><span class="key">A D</span> or <span class="key">← →</span> Move</div><div class="control"><span class="key">W</span> / <span class="key">↑</span> / <span class="key">SPACE</span> Jump</div><div class="control"><span class="key">S</span> / <span class="key">↓</span> Crouch</div><div class="control"><span class="key">J</span> Normal attack</div><div class="control"><span class="key">K</span> Special attack</div><div class="control"><span class="key">L</span> Kick</div><div class="control"><span class="key">E</span> Toggle armor</div><div class="control"><span class="key">Q</span> Temporary transformation</div><div class="control"><span class="key">ESC</span> Pause · <span class="key">R</span> Restart level</div></div>';});$('pickOnirico').addEventListener('click',()=>startGame('onirico'));$('pickHideyoshi').addEventListener('click',()=>startGame('hideyoshi'));$('backMenu').addEventListener('click',()=>{screen='menu';showOverlay('menu');});$('resume').addEventListener('click',()=>{screen='playing';showOverlay('none');});$('restartPause').addEventListener('click',resetLevel);$('quitPause').addEventListener('click',()=>{screen='menu';hero=null;showOverlay('menu');});$('retry').addEventListener('click',resetLevel);$('quitOver').addEventListener('click',()=>{screen='menu';hero=null;showOverlay('menu');});$('playAgain').addEventListener('click',()=>{screen='select';showOverlay('select');});$('mainEnding').addEventListener('click',()=>{screen='menu';hero=null;showOverlay('menu');});
// Fix title card navigation by providing a separate details toggle.
requestAnimationFrame(frame);
})();
</script>
</body>
</html>
